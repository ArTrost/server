FROM node:20
WORKDIR /app
COPY . /app
RUN npm install
EXPOSE 3000
CMD node index.js

# MySQL
# docker pull mysql
# docker run --name mysql-server -v x:/mysql-data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=1234 -d mysql

# phpMyadmin
# docker pull phpmyadmin
# docker run --name phpmyadmin-server -d --link mysql-server:db -p 8080:80 phpmyadmin