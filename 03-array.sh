#!/bin/bash

#this is called array, instead of single value it can hold multiple values

PERSONS=("Ramesh" "Suresh" "Kesava")

#inside array we always refer value with index and it starts from 0

echo "First person: ${PERSONS[0]}"
echo "All Persons :${PERSONS[@]}"