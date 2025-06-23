#!/bin/bash

module --force purge
module load cesga/2022 python/3.10.8

cd $STORE/manim_ce
source manim_env/bin/activate

cd manim_env/install-t*/
echo $PWD
cd bin/x86_64-linux

export PATH=$PWD:$PATH

cd $STORE/manim_ce

jupyter-notebook --ip=$(ip a show bond0.120 | grep -oP '(?<=inet\s)\d+\.\d+\.\d+\.\d+')
