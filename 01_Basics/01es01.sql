create table S(
	SNum varchar(100) primary key,
    SName varchar(100) not null,
    Status integer,
    City varchar(100) not null
);

create table P(
	PNum varchar(100) primary key,
    PName varchar(100) not null,
    Color varchar(100) not null,
    Weight integer,
    City varchar(100) not null
);

create table SP(
    SNum varchar(100),
    PNum varchar(100),
    Qty integer not null,
    primary key (SNum, PNum),
    foreign key (SNum) references S(SNum)
    	on delete cascade,
    foreign key (PNum) references P(PNum)
    	on delete cascade,
);