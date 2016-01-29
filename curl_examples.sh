#!/bin/bash

        curl www.google.com

        curl www.google.com | tidy -i

	curl www.google.com | tidy -i > ./google.txt

	curl http://www.google.com | grep "<title>"

	#Can use curl to execute source code from the net e.g:
	#curl "url" | sudo bash

$SHELL
