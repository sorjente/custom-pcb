# Custom STM32L4 PCB


## What?

This is an attempt to build a minimal, custom PCB featuring an STM32L4 MCU, using (ideally only) open source tools.
It will hopefully serve as a stepping stone to build more complex embedded systems.


## Why?

Because learning is fun.


## Who?

[@ayoubsabri](https://ayoubsabri.github.io/) & [@kokkonisd](https://kokkonisd.github.io/).

---

## Setting up this project

To set up this project, you can start by cloning it:

```
$ git clone https://github.com/kokkonisd/custom-pcb
```

You then need to pull `libopencm3`. You can do this by running `make` in `hello_opencm3/`, or do it manually:

```
$ git submodule init
$ git submodule update
$ cd hello_opencm3/libopencm3/ && make
```

You only need to do this once.
