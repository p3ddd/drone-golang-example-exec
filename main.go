package main

import (
	"fmt"
	"net/http"
)

func index(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Hello world!\n自动部署成功\n18 copy")
}

func main() {
	http.HandleFunc("/", index)
	// http.ListenAndServe(":7007", nil)
	err := http.ListenAndServe(":7007", nil)
	if err != nil {
		fmt.Println(err)
	}
}
