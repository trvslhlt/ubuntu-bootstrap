#!/bin/sh


file_contains_string() {
	grep -q $2 $1
}

