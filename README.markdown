vim-awhile
==========

Asynchronously run shell commands in Vim.

Most async plugins for Vim require Vim to be compiled with patches. This is the
simplest possible way to run a shell command in the background in Vim and get
results after the script runs.

Requirements:

  * Ruby 1.9 (will eventually remove dependency on Ruby)
  * [Pathogen](https://github.com/tpope/vim-pathogen)
  * Vim installed with server mode. `brew install vim --with-client-server`

Instructions
------------

Assuming you have Pathogen installed:

    cd ~/.vim/bundle
    git clone https://github.com/rjungemann/vim-awhile.git

Then open Vim in server mode:

    vim --servername default

Within Vim, in normal mode:

    :Awhile ls -l

You will see the results open in a new split.

