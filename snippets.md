% Snippets

### Haskell and C++ warnings

C++ compilers will often spit out warnings for template errors multiple times
per header. This dumb Haskell tool filters unique warnings.

```haskell
-- Pass Clang/GCC output through this tool to find all unique warnings
import Data.List (nub)

main = interact findWarnings
    where findWarnings = unlines . nub .
              filter (\x -> elem "warning:" $ words x) . lines
```

### Python print in place

Sometimes it's useful to print things "in place" on the command line,
e.g. progress percentage, "spinny" wheel:

```python
#!/usr/bin/env python
import sys
from time import sleep

i = 0
try:
    while True:
        sys.stdout.flush()
        sys.stdout.write('\rYour Label Here: %d\r' % i)
        i += 1
        sleep(.02)
except KeyboardInterrupt:
   pass
print('')
```
or
```python
lines = '-\|/'
...
for line in lines:
    sys.stdout.flush()
    sys.stdout.write('\r%s\r' % line)
    time.sleep(.2)
```

### Python weather forecast

This is a silly tool illustrating simple usage of the `requests` library to
determine your location and weather forecast:
```python
#!/usr/bin/env python
# -*- coding: utf-8 -*-

import argparse
import requests
import datetime

api = "http://api.openweathermap.org/data/2.5/"

def main():
    parser = argparse.ArgumentParser(
        formatter_class=argparse.ArgumentDefaultsHelpFormatter)
    parser.add_argument('-l', '--location', help='location')
    parser.add_argument('-r', '--range', type=int, help='days to report')
    parser.add_argument('-u', '--units', choices=['metric', 'imperial'])
    parser.add_argument('-f', '--forecast', action='store_true')
    parser.set_defaults(location=lookup_location(), range=5, units='imperial')
    args = parser.parse_args()

    output = []

    params = {'q':args.location, 'mode':'json', 'units':args.units}
    current = api + 'weather'
    r = requests.get(current, params=params)
    data = r.json()
    weather = data['main']
    temp = weather['temp']
    unit = 'F' if args.units == 'imperial' else 'C'
    humidity = weather['humidity']
    output.append(u"Current: %.2f˚%s @ %d%% humidity" % (temp, unit, humidity))

    if args.forecast:
        forecast = api + 'forecast/daily'
        params['cnt'] = args.range
        r = requests.get(forecast, params=params)
        data = r.json()
        days = data['list']
        for i, day in enumerate(days):
            timestamp = day['dt']
            dayname = datetime.datetime.fromtimestamp(timestamp).strftime("%a")
            weather = day['weather'][0]['main']
            temp_min = day['temp']['min']
            temp_max = day['temp']['max']
            humidity = day['humidity']
            output.append(u"%s: %s, %.2f-%.2f˚%s @ %s%% humidity" % (
                    dayname, weather, temp_min, temp_max, unit, humidity))

    print(u'\n'.join(output).encode('utf-8'))

def lookup_location():
    r = requests.get("http://ipinfo.io/json")
    data = r.json()
    loc = data['city'] + ',' + data['region']
    return loc

if __name__ == "__main__":
    main()
```

### Filepath traversal in Go

Go's standard library provides a `Walk` function in the `filepath` package. This function
takes a `type WalkFunc func(path string, info os.FileInfo, err error) error` as an argument,
which is then called for each file or directory in the tree. There are some cases where it's
more convenient to iterate over each file/directory and actively do something with the filepath:

```Go
package main

import (
  "fmt"
  "io/ioutil"
  "os"
  "path/filepath"
)

// Walk traverses a file tree in another goroutine, and returns
// a `chan` that will yield each traversed file path
func Walk(root string, follow bool) chan string {
  ch := make(chan string)

  root, err := filepath.Abs(root)
  if err != nil {
    close(ch)
    return ch
  }

  stat := os.Lstat
  if follow {
    stat = os.Stat
  }

  go func() {
    walk(root, ch, stat)
    close(ch)
  }()

  return ch
}

type statter func(string) (os.FileInfo, error)

func walk(path string, ch chan string, stat statter) {
  info, err := stat(path)
  if err != nil {
    return
  }

  if info.IsDir() {
    dirents, err := ioutil.ReadDir(path)
    if err != nil {
      return
    }
    for _, child := range dirents {
      walk(filepath.Join(path, child.Name()), ch, stat)
    }
  }
  ch <- path
}

func main() {
  root := os.Args[1]
  for path := range Walk(root, false) {
    fmt.Println(path)
  }
}
```
My implementation of `Walk` could easily be modified to return a `chan os.FileInfo`
rather than just a channel of path names.
