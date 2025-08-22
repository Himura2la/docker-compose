#!/bin/sh
sed -i 's/\x0D$//' ~/.ssh/*
chmod -v 600 ~/.ssh/*
find ~/.ssh -name 'id_*' \
            -exec sh -c 'ssh-keygen -y -f {} > {}.pub && echo "generated {}.pub for {}"' \;
