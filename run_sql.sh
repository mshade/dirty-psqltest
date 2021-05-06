# test user1 on user1_db and user2_db
cd /src

echo "Creating users and grants."
psql postgres://postgres:$POSTGRES_PASSWORD@database/ < create_world.sql

echo "Creating objects as user1 on user1_db..."
psql postgres://user1:user1pass@database/user1_db < create_objects.sql

echo "Creating objects as user1 on user2_db..."
psql postgres://user1:user1pass@database/user2_db < create_objects.sql

echo "Creating objects as user2 on user1_db"
psql postgres://user2:user2pass@database/user1_db < create_objects.sql


