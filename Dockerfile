FROM jupyter/datascience-notebook

USER $NB_USER

RUN pip install lesscpy
RUN pip install --no-dependencies jupyterthemes
RUN jt -t monokai -f firacode -fs 12 -altp -tfs 12 -nfs 12 -ofs 11 -cellw 88% -T

RUN conda install -y -c conda-forge jupyter_contrib_nbextensions

COPY .jupyter .jupyter
