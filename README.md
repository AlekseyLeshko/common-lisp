# common-lisp


## Install
```
brew install sbcl
```

## Watch mode
```
brew install fswatch
fswatch -e "/\." -o . | xargs -n1 -I{} sbcl --script examples/multiple_return-Values.lisp;
```

## Links
* [common-lisp.net](https://common-lisp.net/)
* [lisp-lang.org](https://lisp-lang.org/)
* [Practical Common Lisp](http://www.gigamonkeys.com/book/)
* [learn lisp](https://www.tutorialspoint.com/lisp/index.htm)
