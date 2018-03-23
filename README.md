<p align="center" >
  <img src="https://github.com/liaoyuanng/wow/blob/master/resource/logo.png" alt="logo" title="wow">
</p>

<p align="center">
[![Build Status](https://travis-ci.org/liaoyuanng/wow.svg?branch=master)](https://travis-ci.org/liaoyuanng/wow)
![swift](https://img.shields.io/badge/swift-4.0-brightgreen.svg)
![jekyll](https://img.shields.io/badge/For-Jekyll-orange.svg)
</p>

[中文简介](https://github.com/liaoyuanng/wow/blob/master/README_CN.md)

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



