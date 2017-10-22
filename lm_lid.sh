#!/bin/sh
grep -q closed /proc/acpi/button/lid/*/state
if [ $? = 0 ]
then
   pm-suspend
   exit
fi
