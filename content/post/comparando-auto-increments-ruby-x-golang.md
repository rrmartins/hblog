+++
title = "comparando auto increments ruby x golang"
date = "2015-10-08"
slug = "2015/10/08/comparando-auto-increments-ruby-x-golang"
Categories = ["Go", "Ruby", "Auto Increment", "++", "--"]
+++

Æ,

Comparando algumas coisa de duas linguagens, [Ruby](http://ruby-doc.org/) e [Golang](https://golang.org), me deparei com seus `Auto Increment's`.

Enquanto em Ruby fazemos assim:

``` ruby Auto Increment Ruby
   > a = 0
   => 0
   a += 1
   => 1
```

Em Go, fazemos de forma um pouco mais simplificado - não sei se era essa a intenção deles.

``` go Auto Increment Golang
   a := 0
   a ++
   fmt.Printf("a = %d",a)
```

A saída será: `1`.

E em caso para decrementar:

``` ruby Auto Decrement Ruby
   > a = 0
   => 0
   a -= 1
   => -1
```

Em Go:

``` go Auto Decrement Golang
   a := 0
   a --
   fmt.Printf("a = %d",a)
```

A saída será: `-1`.

Rapidinho né?! :)
