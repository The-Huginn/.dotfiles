#!/bin/bash
for i in {1..10}; do
    i3-resurrect save -w $i --swallow=class,instance,title
done
