+++
title = "go difference between map"
date = "2016-05-12"
slug = "2016/05/12/go-difference-between-map"
Categories = ["Go", "testing", "English"]
+++

Hi,

Let's talk a little about `map`, `slice` and `array` in [Go language](https://golang.org/).

<!--more-->

- [Map](#map)
- [Slice](#slice)
- [Array](#array)

I go start talk with [map](https://golang.org/pkg/go/types/#Map):

## <a name="map">Maps</a>
[Maps are Go’s built-in associative data type (sometimes called hashes or dicts in other languages).](https://gobyexample.com/maps)

Go create a map empty, use the structure `make(map[key-type]val-type)`:

``` go map empty
  m := make(map[string]int)
```

By setting the key and value:

``` go set key/value
  m["one"] = 12
  m["two"] = 05
```

Get a value of key:

``` go get valeu
value := m["one"]
```

Easy!

To return size the map:

``` go size map
len := len(m)
```

Deleted a key:

``` go delete key
delete(m, "two")
```

If want get `m["two"]` after delete key, the return is `0`, but can use `_` (blank identifier).

``` go get value deleted
_, can_valeu := m["two"]
```

Then the value of `can_valeu` is `false`.

Create map with key type integer:

``` go key integer
m := make(map[int]int)
```

``` go set key/value of type integer
  m[1] = 12
  m[2] = 05
```

Using a map in a loop:

```go
for i := range m {
    fmt.Println("i:", i)
}
```

<script src="https://gist.github.com/rrmartins/cefa8dc31c20f6face293846316ac9f3.js"></script>

## <a name="slice">Slice</a>
Go talk about [Slice](https://golang.org/pkg/go/types/#Slice).

[Slices are a key data type in Go, giving a more powerful interface to sequences than arrays.](https://gobyexample.com/slices)

Create a slice the values of string type and with the length 3:

``` go
myslice := make([]string, 3)
fmt.Println("myslice:", myslice)
```

The `myslice` slice is `[   ]`, initially zero valued. Now go set values.

```go
myslice[0] = "a"
myslice[1] = "b"
myslice[2] = "c"
```

To get value, use `slice[key]`.

``` go
myslice[2]
```

When create a slice, the default type of key is integer.

Get length is equal the `map`:

``` go length slice
len(myslice)
```

To add new values in our slice, use `append(slice, value[s])`:

``` go append
myslice = append(myslice, "d")
myslice = append(myslice, "e")
myslice = append(myslice, "f", "g", "h")
```

We can cut a slice from one location to another:

``` go cut a slice
myslice[1:4] // from position 1 to the position 4
myslice[1:] // from position 1 to the end
myslice[:4] // from position 0 to the position 4
```

We have other ways of working with slice.

<script src="https://gist.github.com/rrmartins/359fba134ae3937efd802d36b0028f72.js"></script>

## <a name="array">Array</a>
Go talk about [Array](https://golang.org/pkg/go/types/#Array).

[In Go, an array is a numbered sequence of elements of a specific length.](https://gobyexample.com/arrays)

Array is most simple.

Create a array with position 10, of type string:

``` go create a array
var arr [10]string
```

The default valeu an array is zero-valued, which for string means "", if the array were of type integer, then the default values would be 0.

To set value, is need speak key of array.

``` go set value
arr[0] = "one str"
```

Get is equal `map` and `slice`:

``` go get value
arr[0] // easy! :)
```

Get the length of array, `len()`:

``` go len()
len(arr)
```

<script src="https://gist.github.com/rrmartins/5d6a97199a631bcefc91e492d206e53e.js"></script>

Many other functions of `array` are similar of `map` and `slices`.

References:

- [gobyexample.com](https://gobyexample.com/)
- [blog.golang.org](https://blog.golang.org/go-maps-in-action)
- [golang.org/pkg/go/types/](https://golang.org/pkg/go/types/)
