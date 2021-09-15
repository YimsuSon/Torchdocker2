FROM lucidfrontier45/pytorch

RUN mkdir /webapp
WORKDIR /webapp

COPY requirements.txt /webapp
RUN pip install --no-cache-dir -r requirements.txt

COPY app /webapp/app
COPY serve /webapp/serve
COPY templates /webapp/templates

COPY wsgi.py /webapp/


CMD gunicorn --access-logfile - \
             -b 0.0.0.0:8080 -w 4 \
             --preload wsgi:app
