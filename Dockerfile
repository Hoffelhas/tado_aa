FROM python3.11
RUN mkdir /tado_aa
RUN git clone https://github.com/Hoffelhas/tado_aa /tado_aa
WORKDIR /tado_aa
RUN cd /tado_aa
RUN pip install -r requirements.txt
CMD ["python", "-u", "/tado_aa/tado_aa.py"]
