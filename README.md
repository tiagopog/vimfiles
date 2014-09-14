My ~/.vim directory. It has been customized in order to provide a great experience of coding on the awesome Vim editor. Enjoy it :-)

# Main features

- Friendly GUI;
- Code highlighting for: Ruby, JavaScript, CoffeeScript;
- Frontend code highlighting and snippets for: CSS, Sass;
- Syntax checking;
- Easy tab management: Command-number (⌘1, ⌘2 etc), Command-Tab (next tab), Command-Shift-Tab (previous tab);


# Screenshot

![Vim screenshot](https://s3-us-west-2.amazonaws.com/mess-organizer/vim.png)

# Installation



1\. Clone this repo:

```
$ cd  ~/
$ git clone https://github.com/tiagopog/vimfiles.git
```

2\. Make sure that Vim will find the vimrc file by symlinking it:

```$ ln -s ~/vimfiles/vimrc ~/.vimrc```

3\. Install Vundle:

```$ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim```

(for more information: https://github.com/gmarik/Vundle.vim)

4\. Open Vim, ignoring the warnings, and install the plugins:

:PluginInstall

5\. Install and configure some plugin's dependencies:

- For vim-colorschemes: 

```
$ cd ~/.vim
$ ln -s bundle/vim-colorschemes/colors colors
```

- For ag.vim: 

```$ brew install the_silver_searcher```

- For YouCompleteMe:

```
$ brew install cmake
$ cd ~
$ mkdir ycm_build
$ cd ycm_build
$ cmake -G "Unix Makefiles" . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
$ make ycm_support_libs
```
