FROM lucidfrontier45/pytorch

RUN mkdir /webapp
WORKDIR /webapp

COPY requirements.txt /webapp
RUN pip install --no-cache-dir -r requirements.txt

COPY app /webapp/app
COPY serve /webapp/serve
COPY templates /webapp/templates

COPY wsgi.py /webapp/


CMD python3 wsgi.py
