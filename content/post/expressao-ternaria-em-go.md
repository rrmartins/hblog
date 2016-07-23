+++
title = "expressao ternaria em go"
date = "2015-10-08"
slug = "2015/10/08/expressao-ternaria-em-go"
Categories = ["Go", "Ruby", "Ternary Expression"]
+++

Æ galera,

Então, esses dias fui fazer um post sobre [como resolver um problema de $PORT em GO](/blog/2015/09/28/resolvendo-problema-com-port-com-uma-app-golang-no-heroku/), e queria fazer uma validação com uma [Expressão Ternária ( ? : )](https://en.wikipedia.org/wiki/%3F:), porem explodia um errinho no console.

Tal erro:

``` go Error Illegal Character
    illegal character U+003F '?'
```

Pois bem, no mundo ruby, seria algo assim:

``` ruby Expressão Ternária
    c = a != "" ? a : "8080"
```

Mas, o jeito "[Go](https://golang.org) de ser", ficou assim:

``` go 'Pseudo-Expressao Ternaria' em Go
    c = map[bool]string{true: a, false: "8080"}[a != ""]
```

Esta forma que escrevemos em Go, já temos os retornos da validação, e ali pode retornar uma `func` ou valores quaisquer, dependendo da validação.

Valeu, abraço.
