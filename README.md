OhMyLog.jl
---------
**A enhanced console logger for the julia REPL**


## Features:

 - Log-Message can be overwritten
   - this always occurs if the `overwrite_lastlog=true` kwarg is passed fo `@info`/`@warn`/etc
   - this never occurs if the `overwrite_lastlog=false` kwarg is passed fo `@info`/`@warn`/etc
   - otherwise, this occurs if it the log message is from the same source (e.g. it is in a loop)


## Usage

Start it by running `using OhMyLog`


## Demo

