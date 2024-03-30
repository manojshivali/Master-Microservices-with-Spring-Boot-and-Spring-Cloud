insert into user_details(id, birth_date, name) values(10001, current_date(), 'MJ');
insert into user_details(id, birth_date, name) values(10002, current_date(), 'Shivali');
insert into user_details(id, birth_date, name) values(10003, current_date(), 'Soni');

insert into post(id, description, user_id) 
values(11001, 'My First Post', 10001);
insert into post(id, description, user_id) 
values(11002, 'My Second Post', 10001);
insert into post(id, description, user_id) 
values(11003, 'My Third Post', 10002);
insert into post(id, description, user_id) 
values(11004, 'My Fourth Post', 10002);