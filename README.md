# Showcase for documenting Julia code

[![CI action](https://github.com/eth-vaw-glaciology/course-101-0250-00-L8Documentation.jl/actions/workflows/CI.yml/badge.svg)](https://github.com/eth-vaw-glaciology/course-101-0250-00-L8Documentation.jl/actions/workflows/CI.yml)

This is for Lecture 8 of course
https://eth-vaw-glaciology.github.io/course-101-0250-00/

This builds on
https://github.com/eth-vaw-glaciology/course-101-0250-00-L6Testing.jl

Then adds documentation via:
- doc-strings
- Literate.jl, see [literate-script.jl](scripts/literate-script.jl)
- Literate via Github Actions:
  [Literate.yml](.github/workflows/Literate.yml)
  - this auto generates the markdown-file (and figure)
    [car_travel.md](scripts/md/car_travel.md) upon push to github
