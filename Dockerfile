# Install Google OR-Tools
FROM python:2-onbuild

RUN apt-get update
RUN curl https://bootstrap.pypa.io/ez_setup.py -o - | python
RUN pip install ez_setup

RUN wget https://github.com/google/or-tools/releases/download/v2016-06/Google.OrTools.python.examples.3631.tar.gz
RUN tar -zxf Google.OrTools.python.examples.3631.tar.gz
WORKDIR "./ortools_examples"
CMD ["python","setup.py", "install"]
CMD ["easy_install", "-U", "ortools"]
CMD ["python","./examples/python/golomb8.py"]
