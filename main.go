package main

import (
	"fmt"
	"net/http"
)

func index(w http.ResponseWriter, r *http.Request) {
	// w.Write([]byte("hello"))
	fmt.Fprintf(w, "Hello world!")
}

func main() {
	http.HandleFunc("/", index)
	http.ListenAndServe(":7007", nil)
}
