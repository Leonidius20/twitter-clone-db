create table users
(
    user_id       serial
        constraint users_pk
            primary key,
    username      text not null
        constraint unique_usernames_constraint
            unique,
    password_hash text not null
);

create table posts
(
    post_id serial
        constraint post_id
            primary key,
    user_id integer
        constraint posts_users_user_id_fk
            references users,
    content text not null
);

