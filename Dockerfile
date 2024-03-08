FROM python3.11
RUN mkdir /app
WORKDIR /app
COPY tado_aa.py /app/tado_aa.py
COPY requirements.txt /app/requirements.txt
RUN cd /app
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["python", "-u", "/code/tado_aa.py"]
