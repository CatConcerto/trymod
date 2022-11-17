package main

import (
	"fmt"
	"log"

	"github.com/golang-migrate/migrate/src/core"
)

func main() {
	core.Core(log.Println)
	fmt.Println("fuck yeah")
}

func Root() {
	fmt.Println("root")
}
