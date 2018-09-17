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

Start it by running `using OhMyLog`


## Demo

[![demo](https://asciinema.org/a/Cl5lps1KrhprTIvhipTPZfWNC.png)](https://asciinema.org/a/Cl5lps1KrhprTIvhipTPZfWNC?t=42)

[![HTTP Demo](https://asciinema.org/a/PDw1Ekwsf1U6mbKkP5lglQi03.png)](https://asciinema.org/a/PDw1Ekwsf1U6mbKkP5lglQi03?t=40)
