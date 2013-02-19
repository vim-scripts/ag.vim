# ag.vim #

This plugin is a front for ag, A.K.A.
[the_silver_searcher](https://github.com/ggreer/the_silver_searcher).  Ag can
be used as a replacement for 153% of the uses of `ack`.  This plugin will allow
you to run ag from vim, and shows the results in a split window.

## Installation ##

### Ack

You have to install [ag](https://github.com/ggreer/the_silver_searcher), of course.

Usually it's a package named 'the_silver_searcher', but it should install
easily from Github, otherwise:

    git clone [https://github.com/ggreer/the_silver_searcher](https://github.com/ggreer/the_silver_searcher)
    cd the_silver_searcher && ./build.sh && install

Then, if you're using [pathogen](https://github.com/tpope/vim-pathogen):

    cd ~/.vim/bundle && git clone https://github.com/rking/vim-detailed
    # And run :Helptags from within vim

If you're using something else (whether it's manual install or some vim package
manager), feel free to give me the pasteable line to put here as instructions.
Really, people should probably be using Pathogen, in my opinion.

### Configuation

You can specify a custom ag name and path in your .vimrc like so:

    let g:agprg="<custom-ag-path-goes-here> -H --nocolor --nogroup --column"

## Usage ##

    :Ag [options] {pattern} [{directory}]

Search recursively in {directory} (which defaults to the current directory) for the {pattern}.

Files containing the search term will be listed in the split window, along with
the line number of the occurrence, once for each occurrence.  [Enter] on a line
in this window will open the file, and place the cursor on the matching line.

Just like where you use :grep, :grepadd, :lgrep, and :lgrepadd, you can use `:Ag`, `:AgAdd`, `:LAg`, and `:LAgAdd` respectively. (See `doc/ag.txt`, or install and `:h Ag` for more information.)

### Gotchas ###

Some characters have special meaning, and need to be escaped your search pattern. For instance, '#'. You have to escape it like this `:Ag '\\\#define foo'` to search for `#define foo`. (From [blueyed in issue #5](https://github.com/mileszs/ack.vim/issues/5).)

Sometimes `git grep` is even faster, though in my experience it's not noticably so.

### Keyboard Shortcuts ###

In the quickfix window, you can use:

    o    to open (same as enter)
    go   to preview file (open but maintain focus on ack.vim results)
    t    to open in new tab
    T    to open in new tab silently
    h    to open in horizontal split
    H    to open in horizontal split silently
    v    to open in vertical split
    gv   to open in vertical split silently
    q    to close the quickfix window

### Acknowledgements

This Vim plugin is derived (and by derived, I mean copied, almost entirely)
from [milesz's ack.vim](https://github.com/mileszs/ack.vim), which I also
recommend installing since you might be in a situation where you have ack but
not ag, and don't want to stop to install ag. Also, ack supports `--type`, and
a few other features.
