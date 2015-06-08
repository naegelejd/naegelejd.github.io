% Joseph Naegele

About
=====

I am a software developer employed by the Functional MRI Facility at the
National Institute of Mental Health. My work consists of website development,
database design, development of medical image reconstruction software,
and construction of various end-user command-line tools.

In my spare time I enjoy studying programming language design and runtime
implementations. I also like learning *new* programming languages and APIs,
experimenting with embedded systems, and hacking on website backends.

Resume
======

Experience
----------

Computer Programmer | Sept 2011 – Now | Kelly Gov't Solutions, FMRIF/NIH | Bethesda, MD

- Contributed to the [ISMRM Raw Data format](ismrmrd.github.io):
    - Wrote unit tests for the core C/C++ library
    - Developed Python, Java, and Golang implementations/bindings of the ISMRMRD specification
    - Fixed bugs found by static analysis (Clang) and Valgrind
    - Deployed a continuous integration solution using Travis-CI and Github
- Contributed to [Gadgetron](gadgetron.github.io), an open source medical image reconstruction framework:
    - Added support for creation of DICOM images
    - Developed integration tests and scripts for retrieving test data
    - Maintained buildbot continuous integration servers
    - Developed methods of interoperability with Python using Boost
    - Contributed to API documentation
- Designed and implemented an image archiving application which currently indexes 1.2 billion online MRI DICOM images
- Refactored QA analysis and visualization software for five MRI scanners, primarily using Python
- Wrote a C library to interface with a proprietary MRI raw data file format in order to create vendor-neutral ISMRMRD files
- Deployed secure, shared project environments using NFSv4, Kerberos and POSIX ACLs on Linux VMs

Education
---------

B.S. in Computer Engineering | University of Maryland, College Park | Summer 2011

> Focus on operating systems and embedded development

Awards
------

2013 Distinguished Achievement Award – Kelly Government Solutions

> For technical skill, enthusiasm, capacity for learning, and completion of several complex projects.

2015 Distinguished Achievement Award - Kelly Government Solutions

> For computing environment improvements and contributions to ISMRMRD and Gadgetron.

Technical Qualifications
------------------------

### Languages
C, Python, Go, C++, Java, SQL, Haskell, Rust, Javascript, HTML, x86/PIC/MIPS assembly

### Personal Projects

[Luci](http://josephnaegele.com/luci) - a lightweight programming language

- Imperative, dynamically-typed, bytecode-compiled
- Automatic memory management via garbage collection

[DuneOS](https://github.com/naegelejd/duneOS) - simple x86 Unix-like operating system

- Multitasking with preemptive scheduling
- Virtual memory, virtual file system

[Go ACLs](https://github.com/naegelejd/go-acl) - Go bindings to POSIX Access Control Lists

- Full POSIX ACL API
- Go implementations of `getfacl` and `setfacl` tools

[Nolli](https://github.com/naegelejd/nolli) - a prototype embeddable, statically-typed programming language

- Fully re-entrant
- Zero dependencies

### Interests
Programming language design
:   compiler/interpreter construction, garbage collection, optimization

Operating systems
:   multitasking, scheduling, memory management, file systems

Links
=====

### Books

- [Code Complete](www.cc2e.com/)
- [Programming Language Pragmatics](http://www.cs.rochester.edu/~scott/pragmatics/)
- [Learn You a Haskell for Great Good](http://learnyouahaskell.com/)
- [Pointers on C](http://www.cs.rit.edu/~kar/pointers.on.c/)
- [Machine Learning in Action](http://www.manning.com/pharrington/)
- [Cracking the Coding Interview](http://www.careercup.com/book)
- [Hacker's Delight](http://www.hackersdelight.org/)
- [Hacking: The Art of Exploitation](http://www.nostarch.com/hacking2.htm)
- [Game Programming Patterns](http://gameprogrammingpatterns.com/)

### Articles

- [Big-O Complexity Cheat Sheet](http://bigocheatsheet.com/)
- [Bit Twiddling Hacks](http://graphics.stanford.edu/~seander/bithacks.html)
- [Law of Leaky Abstractions](http://www.joelonsoftware.com/articles/LeakyAbstractions.html)
- [C programming tips](http://www.pgbovine.net/c-programming-tips.htm)
- [Two Star Programming](http://wordaligned.org/articles/two-star-programming)
- [The "Clockwise/Spiral" Rule (C)](http://c-faq.com/decl/spiral.anderson.html)
- [Cello - Higher level programming in C](http://libcello.org/)
- [How to use `dlopen` in C++](http://tldp.org/HOWTO/C++-dlopen/)
- [Learn You a Haskell for Greater Good](http://learnyouahaskell.com/)
- [Real World Haskell](http://book.realworldhaskell.org/)
- [GC FAQ](http://www.iecc.com/gclist/GC-faq.html)

### Talks

- ["Concurrency is not Parallelism" - Rob Pike](https://vimeo.com/49718712)
- ["Guaranteeing Memory Safety in Rust" - Nicholas Matsakis](https://air.mozilla.org/guaranteeing-memory-safety-in-rust/)
- [Panel: Systems Programming in 2014 and Beyond](http://channel9.msdn.com/Events/Lang-NEXT/Lang-NEXT-2014/Panel-Systems-Programming-Languages-in-2014-and-Beyond)
- ["Wat" - Gary Bernhardt](https://www.destroyallsoftware.com/talks/wat)

### Tools

- [Pandoc](http://johnmacfarlane.net/pandoc/)
- [Graphical VIM cheatsheet](http://www.viemu.com/vi-vim-cheat-sheet.gif)
- [oh my zsh](http://ohmyz.sh/)
- [Valgrind](http://valgrind.org/docs/manual/quick-start.html)
- [GDB cheatsheet (PDF)](http://darkdust.net/files/GDB%20Cheat%20Sheet.pdf)
- [Git branching model](http://nvie.com/posts/a-successful-git-branching-model/)
- [Detach subdirectory into separate Git repository](http://stackoverflow.com/questions/359424/detach-subdirectory-into-separate-git-repository)

### Blogs

- [Eli Bendersky](http://eli.thegreenplace.net/)
- [Russ Cox](http://research.swtch.com/)
- [Philip J. Guo](http://www.pgbovine.net/intro.htm)

### Languages

- [go](http://golang.org)
- [rust](http://rust-lang.org)
- [lua](http://www.lua.org)
- [julia](http://julialang.org)
- [io](http://iolanguage.org)

### Art

- [Khang Le](http://khang-le.com/)
- [Robh Ruppel](http://www.robhruppel.com/)
- [Dead End Thrills](http://deadendthrills.com/)

Snippets
========

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
