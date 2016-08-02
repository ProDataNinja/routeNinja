# Install Google OR-Tools
FROM prodataninja/ubuntu-python2.7

RUN set -x \
	&& apt-get update \
	&& curl https://bootstrap.pypa.io/ez_setup.py -o - | python \
	&& pip install ez_setup
	&& wget https://github.com/google/or-tools/releases/download/v2016-06/Google.OrTools.python.examples.3631.tar.gz \
	&& tar -zxf Google.OrTools.python.examples.3631.tar.gz \
	&& cd ortools_examples \
	&& python setup.py install \
	&& python /examples/python/golomb8.py
