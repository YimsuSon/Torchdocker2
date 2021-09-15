FROM lucidfrontier45/pytorch
FROM guyang3532/torchvision
RUN mkdir /webapp
WORKDIR /webapp

COPY requirements.txt /webapp
RUN pip install --no-cache-dir -r requirements.txt


