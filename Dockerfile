FROM jupyter/datascience-notebook

USER $NB_USER

RUN pip install --no-dependencies jupyterthemes
RUN jt -t monokai -f firacode -fs 13 -altp -tfs 13 -nfs 13 -ofs 12 -cellw 88% -T
