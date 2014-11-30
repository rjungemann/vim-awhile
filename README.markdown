vim-awhile
==========

Asynchronously run shell commands in Vim.

Most async plugins for Vim require Vim to be compiled with patches. This is the
simplest possible way to run a shell command in the background in Vim and get
results after the script runs.

Requires Vim to be installed with server mode.

    brew install vim --with-client-server

At the moment it requires Ruby 1.9 or greater, but will eventually run without
Ruby.

Instructions
------------

Assuming you have Pathogen installed:

    cd ~/.vim/bundle
    git clone https://github.com/rjungemann/vim-awhile

Then open Vim in server mode:

    vim --servername default

Within Vim, in normal mode:

    :Awhile ls -l

You will see the results open in a new split.

