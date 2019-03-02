# Repy Build System
## What?
Quick and dirty build system for doing homework with Repy from the Seattle Testbed project https://github.com/SeattleTestbed/repy_v2

## Why?
I didn't want to struggle with doing things on my host

## How?
- Make sure Docker is running
- Put your code in a new `src/` directory
- To build a container with Seattle set up and your code copied in run `make build`, to run this container run `make run`
- To automatically build a container and run your code, run `make autorun`
  - This runs the code for part 1 of the RepyV2 ABStorage Educational assignment with files `basic.r2py` and `tester.r2py`
  - `make autorun <PROTECTION LAYER> <TEST APPLICATION` to use other files to test
  - __NOTE:__ These files are in `src/` not the current directory
