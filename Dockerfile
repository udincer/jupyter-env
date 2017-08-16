FROM jupyter/datascience-notebook

USER $NB_USER

RUN pip install lesscpy
RUN pip install --no-dependencies jupyterthemes
RUN jt -t monokai -f firacode -fs 13 -altp -tfs 13 -nfs 13 -ofs 12 -cellw 88% -T

RUN conda install -y -c conda-forge jupyter_contrib_nbextensions

RUN echo "{\
  "load_extensions": {\
    "keyboard_shortcut_editor/main": true,\
    "ruler/main": true,\
    "init_cell/main": true,\
    "execute_time/ExecuteTime": true,\
    "gist_it/main": true,\
    "limit_output/main": true\
  },\
  "ruler_column": [\
    "100"\
  ]\
}" > .jupyter/nbconfig/notebook.json

RUN echo "{\
  "NotebookApp": {\
    "password": "sha1:1c6179fdf88f:3ae9234f0019c9b0de43310078d48329809a63ab"\
  }\
}" > .jupyter/jupyter_notebook_config.json
