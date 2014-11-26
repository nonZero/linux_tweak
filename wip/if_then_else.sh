#!/bin/bash

asdf=1
unset asdf

if [ -z "$asdf" ]; then
	echo asdf not existing
else
	echo asdf does exist
fi
