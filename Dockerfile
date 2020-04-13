FROM ubuntu:18.04

COPY . /tmp/deezload_local
WORKDIR /usr/src/app/deezload/

RUN git clone https://github.com/a092devs/DeezloaderAn0n_bot.git /usr/src/app/deezload/
RUN rsync --ignore-existing --recursive /tmp/deezload_local/ /usr/src/app/deezload/


RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install --no-warn-script-location --no-cache-dir -r requirements.txt

CMD ["python", "dwsongs-normal.py"]
