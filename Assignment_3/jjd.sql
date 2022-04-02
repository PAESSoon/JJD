/***** Table No. 1 - user ****/
-- Primary Key: id
        create table user
        (
            id int identity(1,1) not null, 
            name text
            constraint pk_user primary key clustered (id asc)
        )
        ;
        go

/***** Table No. 2 - activity ****/
-- Primary Key: id
        create table activity
        (
            id int identity(1,1) not null, 
            name text
            constraint pk_activity primary key clustered (id asc)
        )
        ;
        go

/***** Table No. 3 - user_activity ****/

        create table user_activity
        (
            activity_id int, -- FK (id in activity)
            user_id int, -- FK (id in user)
            occurrence timestamp
            constraint pk_activity_user primary key clustered 
            (
                activity_id asc,
                user_id asc
            )
        )
        ;
        go
        
        alter table user_activity
	        add constraint fk_user_user_activity foreign key (user_id)
		        references user (id)
		;
		
		alter table user_activity
	        add constraint fk_activity_user_activity foreign key (activity_id)
		        references activity (id)
		;





        -- create table user(id int identity(1,1) not null, name text);
        -- create table activity(id int identity(1,1) not null, name text);
        -- create table user_activity(activity_id int, user_id int, occurrence timestamp, );
        
        -- alter table user_activity
	    --     add constraint fk_user_user_activity foreign key (user_id)
		-- references user (id)
		-- ;
		
		-- alter table user_activity
	    --     add constraint fk_activity_user_activity foreign key (activity_id)
		-- references activity (id)
		-- ;