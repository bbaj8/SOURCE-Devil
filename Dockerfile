FROM Jmiqq/userbot:slim-buster

#clonning repo 
RUN git clone https://github.com/Jmiqq/userbot.git /root/userbot
#working directory 
WORKDIR /root/userbot

# Install requirements
RUN pip3 install --no-cache-dir -r mohamad/requirements.txt

ENV PATH="/home/userbot/mohamad/bin:$PATH"

CMD ["python3","-m","userbot"]
