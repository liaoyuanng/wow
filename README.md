# WOW! Nice Post!

`WOW`is a tool for quickly generating Jekyll article templates。It is small but useful. It saves your time, you just need to write `wow` articles.

## HOW TO USE

### 1. Install

Run with Terminal.app

```
> git clone https://github.com/liaoyuanng/wow.git
> cd wow
> ./install.sh
```

if you get

```
permission denied: ./install.sh
```

error, run

```
chmod 755 install.sh
```

and try again.

### 2. Use

Run with Terminal.app

```
$ wow  // filename only date，default path
```

or

```
$ wow -p filePath // filename only date，specify the path
```

or

```
$ wow -n fileName // Date + file name，default path
```

## OPTIONS

* -p, setup path of output, "/user/document/WOW_POST"  by default.
* -n, setup file name.

## REQUIRE

* [Swift Package Manager](https://swift.org/package-manager/)

or

* Latest Xcode

## LICENSE

MIT.

*Welcome to issue if you have questions.*



