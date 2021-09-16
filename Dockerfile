FROM lucidfrontier45/pytorch

RUN mkdir /webapp
WORKDIR /webapp

COPY requirements.txt /webapp
COPY index_to_name /webapp
RUN pip install --no-cache-dir -r requirements.txt


COPY serve /webapp/serve
COPY templates /webapp/templates

COPY wsgi.py /webapp/

EXPOSE 5000


CMD python3 wsgi.py
