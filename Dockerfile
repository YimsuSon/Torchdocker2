FROM lucidfrontier45/pytorch
FROM guyang3532/torchvision
RUN mkdir /webapp
WORKDIR /webapp

COPY requirements.txt /webapp
RUN pip install --no-cache-dir -r requirements.txt

COPY serve /webapp/serve
COPY templates /webapp/templates

COPY app.py /webapp/
COPY index_to_name.json /webapp/

CMD python3 app.py
