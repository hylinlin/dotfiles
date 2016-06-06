#Work related things

###Do these before running foreman start every time 
####Run postgres 
command: postgres -D /usr/local/var/postgres

####Run redis
command: redis-server /usr/local/etc/redis.conf

###If a lot of time has passed since last database migrate
####Make sure databse schema matches latest
command: rake db:migrate

####script to update database
run script: ./script/pull_prod_db.sh

####using rails c to bootstrap
type in: rails c

####Restart Pow
context: https://github.com/rodreegez/powder
> gem install powder
> powder up
`see if pow is running`
> curl -H host:pow localhost/status.json

