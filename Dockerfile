FROM SOURCE-Devil:slim-buster

RUN git clone https://github.com/bbaj8/SOURCE-Devil /root/userbot
WORKDIR /root/userbot

## Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["python3","-m","userbot"]
