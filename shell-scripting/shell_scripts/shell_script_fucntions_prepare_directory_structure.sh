#!/bin/bash

function prepare-directory-structure()
{
	mkdir apps
	cd apps
	mkdir app1 app2 app3
	touch app1/logs app2/logs app3/logs
}

prepare-directory-structure
