# pirate_game

* https://github.com/davy/pirate_game

## Description

You insouciant scalawags will share the experience of a lifetime as you play a game built atop DRb and Shoes based generally upon the phenomenon known as Spaceteam! Except with Pirates!!

Team up with your fellow pirates to plunder the high seas! Yarrrr….☠

## INSTALL

 * Install jruby (1.7.4, 1.7.5, 1.7.6 all should work), bundler
 * Install shoes4

```
$ git clone http://github.com/shoes/shoes4
$ git checkout 7d0a1eefea601917dd01419b14ded2812d0acb9f
$ gem build shoes.gemspec
$ gem install shoes-4.0.0.pre1.gem
$ alias shoes4='/path/to/gems/shoes-4.0.0.pre1/bin/shoes'
```

Note that you need to alias the executable in the shoes gem dir, not the default executable.  You can find the path where shoes is installed with `gem which shoes`.  The executable is in the `bin` dir next to `lib`.

 * Install pirate_game

```
$ gem install pirate_game
```

## RUN GAME

 * One person runs game_master

```
$ ring_server
$ shoes4 bin/game_master
```

 * Players run pirate_game

```
$ shoes4 bin/pirate_game
```

## Credits

Pirate Ship image used under [CC by-nc-sa
3.0](http://creativecommons.org/licenses/by-nc-sa/3.0/) from
http://sweetclipart.com/pirate-ship-design

Jolly Roger Flag image used under [CC by-nc-sa 
3.0](http://creativecommons.org/licenses/by-nc-sa/3.0/) 
from http://freestock.ca/flags_maps_g80-jolly_roger_pirate_grunge_flag_p1022.html

## Developers

After checking out the source, run:

    $ rake newb

This task will install any missing dependencies, run the tests/specs,
and generate the RDoc.

## License

(The MIT License)

Copyright (c) Davy Stevenson, Eric Hodel

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

