#!/bin/bash

# sublime relative paths for builds - v.1
#########################################
exectuable=$1
filePath=$2
folderPath=$3 # optional

filePath="${filePath//'\'/"/"}"

folderPath="${folderPath//'\'/"/"}" 

ls -al

if  [[ ! -z "$folderPath" ]]; then
	relativeFilePath=${filePath#"$folderPath"}
	absFilePath="/root/my-project$relativeFilePath"

	absPath=`dirname $absFilePath`
	cd $absPath
	

	base_name="$(basename -- $absFilePath)"
	$exectuable $base_name
else
	$exectuable $filePath
fi
