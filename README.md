![alt text](IsAvailable.jl.png)

#### Build status: [![Build Status](https://github.com/Dale-Black/PracticePackage.jl/workflows/CI/badge.svg)](https://github.com/Leticia-maria/IsAvailable.jl/actions)

This package checks the availability of packages in [Pkg.jl](https://pkgdocs.julialang.org/v1/) and asks you to install if it is available. 

## How to use?

First, you must import Pkg:

``` julia
using Pkg
```

Then, you add IsAvailable.jl:

``` julia
Pkg.clone("https://github.com/Leticia-maria/IsAvailable.jl")
```

And, finally:

``` julia
using IsAvailable
```
