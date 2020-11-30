FROM node:latest
RUN apt-get update && apt-get install -y \
	curl \
	git
RUN curl https://cli-assets.heroku.com/install.sh | sh
RUN npm install -g create-react-app
CMD ["/bin/bash"]
