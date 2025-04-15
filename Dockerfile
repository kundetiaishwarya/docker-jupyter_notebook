FROM tensorflow/tensorflow:latest-jupyter

USER root

RUN pip install --upgrade pip && \
    pip install transformers && \
    pip install pysrt && \
    pip install torch && \
    pip install tf-keras


COPY captions_english.srt 
Translator.ipynb ./