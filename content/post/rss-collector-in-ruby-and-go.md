+++
title = "rss collector in ruby and go"
date = "2016-05-12"
slug = "2016/05/12/rss-collector-in-ruby-and-go"
Categories = ["RSS", "Ruby", "Go", "Benchmark"]
+++

Hi,

My idea is to do a project in Go and Ruby, to make a simple parse the same url to an rss feed, and check how long it takes each run of languages.

Come on!
<!--more-->

- [Ruby](#ruby)
- [Go](#go)

## <a name="ruby">Ruby</a>
Let's first talk about the project in [Ruby](https://www.ruby-lang.org/en/).

We will have a class called `Parse::Rss`, with some methods, as: `get_title()`, `get_description()`, `get_link()`, `get_categories()`, `get_total_items()`.

We used the [rrsimple-rss](https://rubygems.org/gems/rrsimple-rss) and [open-uri](http://ruby-doc.org/stdlib-2.2.0/libdoc/open-uri/rdoc/OpenURI.html) gem. Below is ready class. I do not do anything different, but to do the get the fields that the gem returns.

<script src="https://gist.github.com/rrmartins/a29a2251e411d0d93d77ac376ba36a25.js"></script>

The main file, start the url variable with a value already set and start the Parse :: Rss class. initializing the class will already run parse the url and return the object that the gem returns.

``` ruby initializing url and Parse with url
url = "http://golangweekly.com/rss/1g2bo910"
parserss = Parse::Rss.new(url)
```

Now is print the returns.

<script src="https://gist.github.com/rrmartins/dcc47cd10d4c17ec04fd3add6563033a.js"></script>

We run `bundle install` to install the gems of `Gemfile`:

``` bash
$ bundle install
```

When running `main.rb` file return of the `Parse::Rss` class and execution of time:

``` bash
$ ruby main.rb
The Title is: Go Newsletter
The Description is: A weekly newsletter about the Go programming language
The Link is: http://golangweekly.com/
The Categories is No have Categories
The total of Items is: 4

  0.360000   0.020000   0.380000 (  4.406442)
```

Project on github: [parserssrb](https://github.com/rrmartins/parserssrb)

## <a name="go">Go</a>
Now let's talk about the project in [Go](https://golang.org).

We use go from the standard libraries, as: [fmt](https://godoc.org/fmt), [time](https://godoc.org/time) and [gofeed](github.com/mmcdole/gofeed), only this.

As we have an external package, you will need to install using:

``` bash
$ go get github.com/mmcdole/gofeed
```

Ok!

Now create the file `parse/rss.go`, in package `parse`:

<script src="https://gist.github.com/rrmartins/8947db95092780edf3be7f717690b89f.js"></script>

We create `main.go` in root path, this file we used [time](https://godoc.org/time) to calculate time run the project.

<script src="https://gist.github.com/rrmartins/780fcd02e7fa4a8646fbf3ef256195ec.js"></script>

When running `main.go` file:

```bash
$ go run main.go                                                              
Starting get
The Title is: Go Newsletter
The Description is: A weekly newsletter about the Go programming language
The Link is: http://golangweekly.com/
The Categories is No have Categories
The total of Items is: 4

Benchmark: 2.20670856s
```

Project on github: [grfeed](https://github.com/rrmartins/grfeed)

In a quick comparison with the "same" functionality, `Go` was faster than `Ruby`.

Thanks! Until next time!
