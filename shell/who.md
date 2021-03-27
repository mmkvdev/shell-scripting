# who

- `who` commands lists who is logged into the system, one line per logged in session.

- Ex: 
    stdin: ``` 
            $ who 
            ```

    stdout: `mmudunuri :0           2021-03-27 11:30 (:0)`

- It can also show the current run level, time of last system boot, and more..


### Syntax:

- The basic syntax for the `who` command is as follows:
    ```bash
    who [OPTION]... [ FILE | ARG1 ARG2 ]


### Usage:

- `who` will output a formatted list of all the users that are currently logged into the system.

- Each line consists of four fields separated by one or more spaces:
    * The name of the logged user.
    * The user's terminal.
    * The time when the user logged-in.
    * The hostname or ip-address from where the user is logged-in

- If you want to print the column headings, add the `-H` (`--heading`) option:
    ```bash
    $ who -H

    NAME     LINE         TIME             COMMENT
    mmudunuri :0           2021-03-27 11:30 (:0)

- The command pulls information about the system and who is logged in from the `/var/run/utmp` file. If you want to use another file, pass the file path to the command.

- `who` accepts two non-option arguments. When invoked with two arguments the commands prints information only about the terminal associated with the current user. The same output is displayed when the `-m` option is used.


### Command Options:
- `who` accepts several options that generally are rarely used.

- The `-b` `--boot` option tells `who` to print the time of last system boot:
    * Ex:
        ```bash

        $ who -m

                 system boot  2021-03-27 11:28
- To get the list of all the dead processes use the `-d`, `--dead` option:
    * Ex:
        ```bash

        $ who -d

- The `-r`, `--runlevel` option, tells `who` to show the current run-level:
    * Ex:
        ```bash

        $ who -r
                 run-level 5  2021-03-27 11:29

- To get only the user names and the number of currently logged in users, use the `-q`, `--count` option:
    * Ex:
        ```bash

        $ who -q  /  $ who --count
        mmudunuri
        # users=1

- The `-a`, `--all` option forces `who` to print all information:
    * Ex:
        ```bash

        $ who -a

                system boot  2021-03-27 11:28
                run-level 5  2021-03-27 11:29
        mmudunuri ? :0           2021-03-27 11:30   ?          1518 (:0)

