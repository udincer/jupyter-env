FROM jupyter/datascience-notebook

USER $NB_USER

RUN pip install jupyterthemes
RUN jt -t onedork -f firacode -fs 13 -altp -tfs 13 -nfs 13 -ofs 12 -cellw 88%
