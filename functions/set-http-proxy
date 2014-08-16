#!/bin/bash

function setHttpProxy() {
	proxy=$(networksetup -getwebproxy Ethernet)
	set $proxy

	enabled=$2
	if [ $enabled != 'Yes' ]; then
		return
	fi

	server=$4
	port=$6

	export http_proxy=$server:$port
	export https_proxy=$server:$port

	# forget authentication for now	
}
