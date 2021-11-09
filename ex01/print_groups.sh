#!/bin/sh

echo $(id -Gn $FT_USER | sed "s/ /,/g")
