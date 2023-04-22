# analog-ic-studies
Exercises in analog IC eletronics using LTSpice.

1.Download and install LTSPICE from: 
https://www.analog.com/en/design-center/design-tools-and-calculators/ltspice-simulator.html
(registration is not needed, just download))

1) in case you want to keep the original LTSPICE library: rename the old lib directory in ..\Program Files\LTC\LTspiceIV to lib.old (note: this might have an effect on some existing schematics, as the components and symbols are redefined).

2) unpack lib.zip and move the resulting lib-directory with subdirectories like "cmp", "sch" and "sym" to ...\Program Files\LTC\LTspiceIV\lib (double check that cmp has now become ...\Program Files\LTC\LTspiceIV\lib\cmp).

3) Run LTspiceIV, load an exercise, e.g. E0, and push the "Runner" button. You should now get graphs of voltage and currents by clicking in the schematic (click on a node for node voltage; click on a component terminal to get current (pointer changes shape from probe to current loop)). Probably it is hardly needed, but in case of problems read the included PDF-files or other help information. If you get error messages that the component parameters are not found probably you did not copy the lib-directory correctly.