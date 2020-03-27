// Copyright 2016 Google Inc. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

package main

import (
	"fmt"
	"net/http"
	"strconv"
)

// [START handler]
func handler(w http.ResponseWriter, r *http.Request) {
	var sticky Sticky
	sticky.Message = r.FormValue("message")
	var size int = 512
	if i, err := strconv.Atoi(r.FormValue("size")); err == nil {
		size = i
	}
	sticky.Centered = false
	stickyBytes, err := sticky.DrawPNG(size, size)
	if err == nil {
		w.Write(*stickyBytes)
	}
}

// [END handler]

// [START hello]
func hello(w http.ResponseWriter, r *http.Request) {
	message := fmt.Sprintf("Hello %s", r.FormValue("message"))
	// w.Write([]byte(`{"message": message}`))
	w.Write([]byte(message))
}

// [END hello]

// [START main]
func main() {
	http.HandleFunc("/stickynote", handler)
	http.HandleFunc("/sayHello", hello)
	http.ListenAndServe(":10000", nil)
	//http.ListenAndServeTLS(":443", "ssl.crt", "ssl.key", nil)
}

// [END main]
