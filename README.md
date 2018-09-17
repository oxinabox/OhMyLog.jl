OhMyLog.jl
---------
**A enhanced console logger for the julia REPL**


## Features:

 - Log-Message can be overwritten
   - this always occurs if the `overwrite_lastlog=true` kwarg is passed fo `@info`/`@warn`/etc
   - this never occurs if the `overwrite_lastlog=false` kwarg is passed fo `@info`/`@warn`/etc
   - otherwise, this occurs if it the log message is from the same source (e.g. it is in a loop)
 - Progress bars will be displayed
   - if the named argument `progress` is used it will be displayed as a progress bar
		- It should have a floating point value between 0 (0%) and 1 (100%) 
   - If *any* argument has a percentage string, eg `"51.3 %"`, it also will be displayed as a progress bar.
   - Progress bars use the same overwriting rules as above.
   
   
## Usage

Start it by running `using OhMyLog`.

OhMyLog should not be a dependency of your package -- it uses the standard Base logging infastructure.
So users can chose to load it or not.
If they don't the log message would just print to the console like normal.
(Or if they have special logging setup, as is done in Juno etc, then that will happen.)


## Demo

[![Demo with HTTP.jl](https://asciinema.org/a/00hoDMBZqtNxwHxKThDg5j9cC.png)](https://asciinema.org/a/00hoDMBZqtNxwHxKThDg5j9cC?t=9)
