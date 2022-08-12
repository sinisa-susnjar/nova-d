# nova-d

D bindings for the libnova celestial mechanics engine.

The code is basically just a translation of the libnova headers into D modules that declare `extern (C) { ... }` functions.
Original examples have also been translated to D, see the `examples` directory.

Copyright for the original libnova code is Liam Girdwood et al, please see [authors](https://sourceforge.net/p/libnova/libnova/ci/master/tree/AUTHORS).

# TODO

* add unit tests from [here](https://sourceforge.net/p/libnova/libnova/ci/master/tree/lntest/test.c)
* add coverage
* enable build on windows
* enable build on osx
* add github workflow and badges
