package main

import (
	"fmt"
	"os"
)

func main() {
	port := os.Getenv("PORT")
	fmt.Println(port)
}
