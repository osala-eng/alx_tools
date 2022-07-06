# Simple tools for alx SE course

### Installation

Run script `sudo ./install.sh` to install `agcc`, `createbetty` and `cleanbetty` on your computer.

## agcc

This is a simple tool that runs gcc compiler with the following options

```bash
-Wall -Werror -Wextra -pedantic -std=gnu89
```

To use run:

```ShellSession
agcc file [OPTIONS]
```

## createbetty

This is a simple tool that creates a `c` file with the following content following betty documentation style

```c
#include <stdio.h>

/**
* main - Entry point
*
* Return: Always 0 (Success)
*/

int main(void)
{
	return (0);
}
```

To use run 

```bash
createbetty filename
```

## cleanbetty

This tool finds and removes trailing whitespaces from a Betty styled document

To use the tool run

```bash
cleanbetty file
```

## Installation

To install run:
```bash
sudo ./install.sh
```

## Usage

The sytanx to use the tool is:

```bash
agcc filename [OPTIONS]
```

## Repo
https://github.com/osala-eng/alx_tools


Author:

Jashon Osala c 2022
