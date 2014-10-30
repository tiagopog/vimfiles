A lean and useful expansion for the awesome Vim editor. Give it a try :-)

# Main features

- Friendly GUI;
- Code highlighting for: Ruby, Python, Java, JavaScript and other languages;
- Syntax checking;
- Autocomplete;
- Find a pattern through serveral files (ag.vim);
- Very fast fuzzy finder (CtrlP);
- Easy tab management: Command-number (⌘1, ⌘2 etc), Command-Tab (next tab), Command-Shift-Tab (previous tab).


# Screenshot

![Vim screenshot](https://s3-us-west-2.amazonaws.com/tiagopog/GitHub/vimfiles/vim_full.png)

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
