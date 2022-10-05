### How to use

Try running `ruby runner.rb` and then go through its code. Notice the use of `exec_stream` method which is defined in `exc_stream.rb`

`exec_stream(cmd)` accepts a command and a block. `cmd` could be something like `tail -f` which generates output continuously into `stdout`. 

### Explanation

https://ruby-doc.org/stdlib-2.5.3/libdoc/pty/rdoc/PTY.html

PTY stands for [pseudo terminal](https://en.wikipedia.org/wiki/Pseudoterminal). It allows the ruby script to present itself to the subprocess (one that is `spawned`) as if it's a real user who has just typed/read into/from a shell so that output buffering etc can be overridden.

