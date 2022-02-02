deploy:
	sh deploy.sh

posts.new:
	hugo new posts/`date '+%Y'`/`date '+%m%d'`.md
