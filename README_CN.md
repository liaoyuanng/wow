#  WOW! Nice Post!

`WOW`是一个自从生成 `Jekyll` 文章模板的脚本。它虽然很小，但是却十分有用。它可以节省你很多时间，有了它，你只需负责写出`666`的文章就行啦。

## 使用

### 1.安装

打开终端工具，运行下面的指令

```
> git clone https://github.com/liaoyuanng/wow.git
> cd wow
> ./install.sh
```

如果命令行提示你

```
permission denied: ./install.sh
```

先运行

```
chmod 755 install.sh
```

再次运行第一行代码。

### 2. 使用

在终端中运行

```
$ wow  // 文件名只有日期，默认路径
```

或者

```
$ wow -p filePath // 文件名只有日期，指定路径
```

或者

```
$ wow -n fileName // 日期 + 文件名，默认路径
```

## 可选指令

* -p, 设置输出路径, 默认是 "/user/document/WOW_POST"。
* -n, 设置文件名字。

## LICENSE

MIT

*如果你有任何的使用问题，欢迎 issue 我*



