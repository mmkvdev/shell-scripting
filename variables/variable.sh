#!/bin/bash

# any programming language needs variables
a="hello world"

echo $a

# note:
# do not leave space on either side of the "=" sign.
# shell considers the command line as a pile of commands and command arguments separated by spaces.
# foo=bar is considered a command
# assignment command doesn't take arguments.





### Single Quotes vs Double Quotes

# variable names are expanded within double quotes
# single quotes are used to print or display static and predictable results

echo -n '$USER=' # -n option stops echo from breaking the line
echo "$USER"

echo "\$USER=$USER"


X=abc
echo "$Xabc" # calling an uninitialised variable

# protecting the variable with braces around it to distinguish it from other characters.
echo "{$X}abc"
