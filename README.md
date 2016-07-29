# Main features

- Friendly GUI;
- Change [colorschemes](http://cocopon.me/app/vim-color-gallery/) as you wish ([vim-colorschemes](https://github.com/flazz/vim-colorschemes));
- Code highlighting for: Markdown, Dockerfile, Ruby, Elixir, Python, Java, JavaScript and other languages;
- Visually displays indent levels in code ([vim-indent-guides](https://github.com/nathanaelkane/vim-indent-guides));
- Syntax checking ([Synstatic](https://github.com/scrooloose/syntastic));
- Autocomplete ([YouCompleteMe](https://github.com/Valloric/YouCompleteMe));
- View code line diff instantly ([Git Gutter](http://cache.preserve.io/t395mlry/index.html));
- Find patterns through serveral files ([ag.vim](https://github.com/rking/ag.vim));
- Fast fuzzy finder ([CtrlP](https://github.com/kien/ctrlp.vim));
- Easy tab management: Command-number (⌘1, ⌘2 etc), Command-Tab (next tab), Command-Shift-Tab (previous tab).

Give it a try and enjoy :-)

# Screenshot

![Vim screenshot](https://s3-us-west-2.amazonaws.com/tiagopog/GitHub/vimfiles/vim-screenchot.png)


# Installation

**1\. Clone this repo:**

```
cd  /usr/local/etc
```
Ps.: if you're on GNU/Linux, you may download it to "/usr/local/src".

```
git clone https://github.com/tiagopog/vimfiles.git
```

**2\. Make sure that Vim will find the vimrc file by symlinking it:**

```ln -s /usr/local/etc/vimfiles/vimrc ~/.vimrc```

**3\. Install Vundle:**

```git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim```

(for more information: https://github.com/gmarik/Vundle.vim)

**4\. Open Vim, press ENTER ignoring the warnings, and install the plugins:**

```
vim .
```

Then enter:

:PluginInstall

**5\. Install and configure some plugin's dependencies:**

5.1. For vim-colorschemes: 

```
cd ~/.vim
ln -s bundle/vim-colorschemes/colors colors
```

5.2. For ag.vim:

**OS X:**

```brew install the_silver_searcher```

**Ubuntu/Debian:**

```apt-get install silversearcher-ag```

**CentOS:** [try building it from source](https://github.com/ggreer/the_silver_searcher#building-from-source). 


5.3. For YouCompleteMe:

```
$ brew install cmake
$ cd ~
$ mkdir ycm_build
$ cd ycm_build
$ cmake -G "Unix Makefiles" . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
$ make ycm_support_libs
```

5.4. Ruby + RVM:

As Vim loads your shell with `set shell=/bin/sh`, just make sure that your shell's `.profile`
loads the RVM scripts.

# TODO

* Create an install.sh in order to ease the installation step;
* Create a simple cheatsheet with the main commands for each plugin;
* Run [vim-test](https://github.com/janko-m/vim-test) coupled with [vim-dispatch](https://github.com/tpope/vim-dispatch);
* Integrate Vim with [Rubocop](https://github.com/ngmy/vim-rubocop);
* Integrate Vim with [Reek](https://github.com/rainerborene/vim-reek).
