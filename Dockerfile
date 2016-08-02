# Install Google OR-Tools
FROM prodataninja/ubuntu-python2.7

RUN set -x \
	&& apt-get update \
	&& wget https://github.com/google/or-tools/releases/download/v2016-06/Google.OrTools.python.examples.3631.tar.gz \
	&& tar -zxf Google.OrTools.python.examples.3631.tar.gz \
	&& cd ortools_examples \
	&& python setup.py install \

CMD ["python","./ortools_examples/examples/python/golomb8.py"]
