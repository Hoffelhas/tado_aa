# Start with python3 image
FROM python:3.12
CMD ["python3"]

# Clone repo
RUN mkdir /tado_aa
RUN git clone https://github.com/Hoffelhas/tado_aa /tado_aa

# Set working directory
WORKDIR /tado_aa
RUN cd /tado_aa

# Install requirements
RUN pip install python-tado

# Final command to run the app
CMD ["python", "-u", "/tado_aa/tado_aa.py"]
