# Stored procs and funcs example

Example of using Skeema to manage a library of stored procedures and functions. Skeema enables a pull request workflow, allowing normal code review processes and simple `skeema push` deployment of changes.

Please note that Skeema treats modifications of existing routines as **unsafe**, requiring `--allow-unsafe` on the command-line to proceed. This is because MySQL and MariaDB do not provide a command for modifying routine bodies in-place; instead it is necessary to `DROP` and then re-`CREATE` them. It is theoretically possible that your application may attempt to use a routine during the split-second period between those two commands, hence the safety warning.

## Credits

The routines in this directory were all adapted from [common_schema](https://github.com/shlomi-noach/common_schema), a DBA framework by Shlomi Noach. See LICENSE and COPYRIGHT for more information.

The schema was obtained from https://github.com/shlomi-noach/common_schema/releases, and then re-exported here using `skeema init`. Only a subset of the full repo is reproduced here.