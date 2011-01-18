#!/bin/bash

ssh visual.stanford.edu "cd /var/www/html; pushd ../gitrepo/ISTC_VS/; git pull; popd; cp -r ../gitrepo/ISTC_VS/_site/* ."
