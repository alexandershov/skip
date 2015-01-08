## What is it?
**skip** allows you to, ahem, skip specified number of lines from stdin in your shell scripts.


## Install
Put something like this in your $HOME/.bashrc or $HOME/.zshrc:
```shell
. /path/to/skip.sh
```

## Usage
```shell
$ cat moby-dick.txt | skip 1
Some years ago — never mind how long precisely -
having little or no money
...
```
Or:
```shell
$ skip 1 moby-dick.txt
Some years ago — never mind how long precisely -
having little or no money
...
```

## Requirements
GNU tail (your system probably have it)
