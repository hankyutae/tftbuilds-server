begin;

truncate
  users
  restart identity cascade;

insert into users (user_name,password,email)
values 
  ('hankyutae','$2a$12$LNlF.Hacw7trjIcqS3f84OHFpYhb2HVDzV6YmPvDacZKROhG1gRuW','kyutae.han93@gmail.com');


commit;