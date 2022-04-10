package main

import (
	"fmt"
	"log"
	"net/http"
)

func index(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Hello world!\n自动部署成功\n15")
}

func main() {
	http.HandleFunc("/", index)
	err := http.ListenAndServe(":7007", nil)
	if err != nil {
		log.Println(err)
	}
}
