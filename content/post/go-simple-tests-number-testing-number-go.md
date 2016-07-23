+++
title = "go simple tests number testing number go"
date = "2016-04-19"
slug = "2016/04/19/go-simple-tests-number-testing-number-go"
Categories = ["Go", "testing", "English"]
+++

Hi,

Let's talk about simple tests using Go with [testing](https://golang.org/pkg/testing/) package.

Let's get a file `simplemath.go` by my gist:

<script src="https://gist.github.com/rrmartins/237ce663485d7c961a74af61e95cc3a4.js"></script>

<!--more-->

## Our test

With this file basic, go to our test.

Create test folder, and simplemath_test.go in this folder.

We will need of [testing](https://golang.org/pkg/testing/) package.

``` go Import testing
import (
  "testing"
)
```

And import the `simplemath` package.

``` go Import simplemath package
import (
  "testing"
  "imartins/modulesimple/simplemodule/simplemath"
)
```

Remember of put in this file the first line the code: `package simplemath`.

``` go Package simplemath in simplemath_test
package simplemath
```

### Add()

Let's test the `Add()` function.

Under the import of packets add the func.

``` go Test Add() function
func TestAdd(t *testing.T) {
	t.Log("Called simplemath class and Add() method")
  c := simplemath.Add(5,8)

	if c != 13 {
		t.Errorf("Expected c of 13, but it was %d instead.", c)
	}
}
```

Running the test:
``` bash running
$ go test test/simplemath_test.go
ok  	command-line-arguments	0.013s
```

Running the verbose format:
``` bash verbose
$ go test -v test/simplemath_test.go
=== RUN   TestAdd
--- PASS: TestAdd (0.00s)
	simplemath_test.go:9: Called simplemath class and Add() method
PASS
ok  	command-line-arguments	0.011s
```

### News tests with Multiply() and Subtract()

The `simplemath_test.go` file completed this down with the other test functions

<script src="https://gist.github.com/rrmartins/80384f827c799adaae2cc8c3beb706a5.js"></script>

Thanks guys! To the next post!
