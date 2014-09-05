package main

import (
    "net/http"
    "log"
)

func main() {
    http.Handle("/", http.StripPrefix("/", http.FileServer(http.Dir("./"))))
    log.Println("Serving content on port 8080")
    if err := http.ListenAndServe(":8080", nil); err != nil {
        log.Fatal("ListenAndServe: ", err)
    }
}
