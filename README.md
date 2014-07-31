My ~/.vim directory. It has been customized in order to provide a great experience of coding on the awesome Vim editor. Enjoy it :-)

# Main features

- Friendly GUI;
- Code highlighting for: Ruby, Python, Perl, PHP, Java, Scala, Go, C, C++ and more;
- Frontend code highlighting and snippets for: JavaScript, CoffeeScript, HTML, Haml, CSS, Less, Sass and more;
- Syntax checking;
- Easy tab management: Command-number (⌘1, ⌘2 etc), Command-Tab (next tab), Command-Shift-Tab (previous tab);
- Most important: it disables the annoying bell in MacVim when saving files. 


# Screenshot

![Vim screenshot](http://pasteboard.co/1VeSTDAt.png)

# Installation

Note: for OS X users in order to take full advantage of the plugins and configs set at the vimrc file, I recommend to use [MacVim](https://code.google.com/p/macvim/).


1\. Clone the repo: git clone https://github.com/tiagopog/vimfiles.git ~/.vim

2\. Grab the plugin submodules: cd ~/.vim && git submodule init && git submodule update

3\. Make sure Vim finds the vimrc file by either symlinking it: ln -s ~/.vim/vimrc ~/.vimrc (or by sourcing it from your own ~/.vimrc: source ~/.vim/vimrc)
