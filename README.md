
Bigzhu's Hugo blog config file.

## install bash_tools
You need to install this [bash_tools](https://github.com/bigzhu/bash_tools), make sure you can run `install.sh`.

use `install.sh -h` check if installed correctly.

## install blog.sh
Clone to any path then

```
cd blog
install.sh ./blog.sh
git submodule init
git submodule update
```
## edit blog.sh

Modify `SYNC_TO` to your server and path.

## run

Run `blog.sh` at any path will sync blog HTML file to the server.
