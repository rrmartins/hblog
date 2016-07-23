+++
title = "go what is goroutines"
date = "2016-04-16"
slug = "2016/04/16/go-what-is-goroutines"
Categories = ["Go", "gorotines", "English"]
+++

Hi,

The first question is ***What is goroutines?*** Ok! Let's go!

Goroutines is lightweight threads of execution, that is capable of running concurrently with other functions. More used in Concurrency Programming.

## An example basic

### Goroutines in the main body of the main func
<!--more-->
Create a main.go file in your folder. We write the beginning:
``` go Beginnig of main.go
    package main

    import (
      "fmt"
      "time"
    )

    func main() {

    }
```

This is the scope default of our file. How the gorotines run in background, let's put a break on progress. we will add the codes below at the end of the main function in the file.

``` go Input a break
  var input string
  fmt.Scanln(&input)
  fmt.Println("done!")
```

Ok! We make a calculation and print anything every 500 milliseconds. Add the codes below after of `func main() {`, called of main func.

``` go Call gorotines
  index := 0

  go func(){
    for index < 10 {
      fmt.Printf("'go func()' index is %d\n", index)
      var result float64 = 2.5 * float64(index)
      fmt.Printf("'go func()' result is %.2f\n", result)

      time.Sleep(500 * time.Millisecond)
      index++
    }
  }()

  go fmt.Printf("print in the background\n")
```

The end, our file `main.go` it's:

``` go File complete
  package main

  import (
    "fmt"
    "time"
  )

  func main() {
    index := 0

    go func(){
      for index < 6 {
        fmt.Printf("'go func()' index %d\n", index)
        var result float64 = 2.5 * float64(index)
        fmt.Printf("'go func()' result %.2f\n", result)

        time.Sleep(500 * time.Millisecond)
        index++
      }
    }()


    go fmt.Printf("print in the background\n")

    // press ENTER to exit
    var input string
    fmt.Scanln(&input)
    fmt.Println("done!")
  }

```

Now run in terminal and your folder of project:

``` bash run package
  ❯ go run main.go
```

And output is:

``` bash Output in terminal
  print in the background
  'go func()' index 0
  'go func()' result 0.00
  'go func()' index 1
  'go func()' result 2.50
  'go func()' index 2
  'go func()' result 5.00
  'go func()' index 3
  'go func()' result 7.50
  'go func()' index 4
  'go func()' result 10.00
  'go func()' index 5
  'go func()' result 12.50

  done!
```

### Gorotines with functions

The example with even above file.

To execute gorotines of other function, it is only pass `go <name_func>`.

We create an function, call `Add()` in file.

``` go New function Add()
  func Add(a, b int){
  	fmt.Printf("Add() result is %d\n", a + b)
  }
```

Then, we call `Add()` func, with `go Add(<number_1>, <number_2>)`, within the `main()` func.

``` go Call Add() func
  go Add(8,3)
```

The `main()` func will look like this:

``` go main() func complete
  go Add(8,3)

  index := 0

  go func(){
    for index < 6 {
      fmt.Printf("'go func()' index %d\n", index)
      var result float64 = 2.5 * float64(index)
      fmt.Printf("'go func()' result %.2f\n", result)

      time.Sleep(500 * time.Millisecond)
      index++
    }
  }()


  go fmt.Printf("print in the background\n")

  // press ENTER to exit
  var input string
  fmt.Scanln(&input)
  fmt.Println("done!")
```

And the output is:

``` bash
  ❯ go run main.go
  Add() result is 11
  print in the background
  'go func()' index 0
  'go func()' result 0.00
  'go func()' index 1
  'go func()' result 2.50
  'go func()' index 2
  'go func()' result 5.00
  'go func()' index 3
  'go func()' result 7.50
  'go func()' index 4
  'go func()' result 10.00
  'go func()' index 5
  'go func()' result 12.50

  done!
```

By!
