package main

import "net/http"

func main() {
	(&http.Server{
		Handler: http.HandlerFunc(func(w http.ResponseWriter, _ *http.Request) {
			w.Write([]byte(`hlo wld`))
		}),
	}).ListenAndServe()
}
