#!/bin/bash

module --force purge
module load cesga/2022 python/3.10.8

cd $STORE
mkdir manim_ce
cd manim_ce

python -m venv manim_env
cd manim_env
source bin/activate

pip install jupyter
pip install manim
pip install manim_slides
pip install MF-Tools

deactivate

wget https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
zcat < install-tl-unx.tar.gz | tar xf -



cd install-t*/

#usar el comando date para optimiar la linea de arriba

perl ./install-tl --no-interaction --texdir $PWD
