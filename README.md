[![ubuntu](https://github.com/sinisa-susnjar/nova-d/actions/workflows/ubuntu.yml/badge.svg)](https://github.com/sinisa-susnjar/nova-d/actions/workflows/ubuntu.yml) [![macos](https://github.com/sinisa-susnjar/nova-d/actions/workflows/macos.yml/badge.svg)](https://github.com/sinisa-susnjar/nova-d/actions/workflows/macos.yml) [![windows](https://github.com/sinisa-susnjar/nova-d/actions/workflows/windows.yml/badge.svg)](https://github.com/sinisa-susnjar/nova-d/actions/workflows/windows.yml) [![coverage](https://codecov.io/gh/sinisa-susnjar/nova-d/branch/main/graph/badge.svg?token=5a02922f-43bc-4d50-8491-a7baf1fb7625)](https://codecov.io/gh/sinisa-susnjar/nova-d)

# Nova-D

D translation of the libnova celestial mechanics engine.

The code is basically just a translation of the libnova sources into D modules.
Original examples have also been translated to D, see the `examples` directory.

The original libnova code was forked from https://github.com/efalk/libnova @ 85f8817 (r0.16.0)

Copyright for the original libnova code is Liam Girdwood et al, please see [authors](https://sourceforge.net/p/libnova/libnova/ci/master/tree/AUTHORS).

# TODO

* add unit tests from [here](https://sourceforge.net/p/libnova/libnova/ci/master/tree/lntest/test.c)
* add coverage
* enable build on windows
* enable build on osx
* add github workflow and badges
