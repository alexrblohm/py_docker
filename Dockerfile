FROM continuumio/miniconda3

RUN echo 'Installing Python packages.'
ADD generic_py36_environment.yml /
RUN conda env create -f generic_py36_environment.yml

ENV PATH /opt/conda/envs/generic_py36/bin:$PATH

EXPOSE 8888

RUN echo 'Setting /workspace as WORKDIR.'
WORKDIR /workspace

ENTRYPOINT jupyter notebook --no-browser --ip=0.0.0.0 --allow-root --NotebookApp.token='' --NotebookApp.password=''
