# Showcase unit and integration testing

This is for Lecture 6 of course
https://eth-vaw-glaciology.github.io/course-101-0250-00/

It demonstrates a typical work-flow of mine which I committed such
that commit history retraces that workflow:
- start coding ([repo state](https://github.com/mauro3/course-101-0250-00-L6Testing.jl/tree/aae178d292f5b7b90e0a20c20276b95b571c16d4))
- sprinkle some tests within the script itself ([script
  state](https://github.com/mauro3/course-101-0250-00-L6Testing.jl/blob/fa633327beb0640ef627b9f50543f07d42fc270e/scripts/car_travels.jl))
- move tests to `test/` directory
  ([runtests.jl](https://github.com/mauro3/course-101-0250-00-L6Testing.jl/blob/bed8558c0a44d30da7b36f71bb975c9c3b4b50a8/test/runtests.jl))
- use reference testing (via [ReferenceTest.jl](https://github.com/JuliaTesting/ReferenceTests.jl)) to do integration
  testing ([runtests.jl](https://github.com/mauro3/course-101-0250-00-L6Testing.jl/blob/0c48fae54f8b4f45d0cc2664bf1b0d9e8556399c/test/runtests.jl))

Here a link to the commits:
https://github.com/mauro3/course-101-0250-00-L6Testing.jl/commits/master
