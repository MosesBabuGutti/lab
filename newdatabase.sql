create database newdatabase;
use  newdatabase;

create table customer (custId int primary key, first_name varchar(50),
					   last_name varchar(50), email varchar(50),
                       dob datetime, city varchar(50), country varchar(50),
                       adress varchar(100), pincode int not null);

select *from customer;
drop table customer;
insert into customer values(1,"yeshwanth","k","yeswanth.kumar@gmail.com","2003-02-25","Chennai","India","Bank Street",574003);
insert into customer values(2,"abilash","T","abilash.g@gmail.com","2001-01-24","Bangalore","India","Marathahalli",664100);
insert into customer values(3,"Bharath","R","ravula.bharath@gmail.com","1998-05-26","Mumbai","India","Post Office",540000);
insert into customer values(4,"Chaitanya","Y","yella.chaitanya@gmail.com","1995-10-27","Bangalore","India","Jp Park",550100);
insert into customer values(5,"Dhyanendra","K","dhyanendra.k@gmail.com","2001-02-15","Bangalore","India","Marathahalli",550100);
insert into customer values(6,"Pawan","E","pawan.erra@gmail.com","2001-01-24","Hyderabad","India","Ameerpet",500650);
insert into customer values(7,"Prithvi Kumar","J","prithvi.j@gmail.com","2008-02-14","Chennai","India","Park Avenue",570650);
insert into customer values(8,"Vamshi ","G","vamshi.g@gmail.com","2006-06-18","Mumbai","India","RIL",546000);
insert into customer values(9,"Tarun ","V","tarun.v@gmail.com","2012-08-24","Mumbai","India","JP Group",546100);
insert into customer values(10,"Charan","Kumar","charan.kg@mail.com","2013-07-30","Bangalore","India","PG",546060);
insert into customer values(11,"Bhanu Prasad","V","bhanu.prasad@gmail.com","2015-08-14","Chennai","India","PTI",576070);
insert into customer values(12,"Shiva","R","shiva.r@gmail.com","2018-04-13","Chennai","India","RTI OFFICE",576875);
select * from customer;

create table BankAccount(accountNbr varchar(50) not null,balance double,
bank_code varchar(100),branch_code varchar(50),
                         account_type varchar(20),
                         custId int not null,
                         primary key(accountNbr),
                         foreign key (custId) references customer(custId));

select *from bankaccount;
drop table bankaccount;
insert into bankaccount values("SBI4510011025",25000,"SBI4510233","SBI_BankStreet","Savings",1);
insert into bankaccount values("SBI1022021245",10000,"SBI7896500","SBI_BankStreet","Current",1);
insert into bankaccount values("SBI4510099945",21000,"SBI4515560","SBI_BankStreet","Credit",1);

insert into bankaccount values("SBI7840125458",15000,"SBI4515680","SBI_Marathahalli","Savings",2);
insert into bankaccount values("SBI7847841000",12000,"SBI4545820","SBI_Marathahalli","Current",2);
insert into bankaccount values("SBI7896451020",14000,"SBI7895401","SBI_Marathahalli","Credit",2);

insert into bankaccount values("SBI7896445632",14000,"SBI7896300","SBI_DalalStreet","Savings",3);
insert into bankaccount values("SBI8742310000",12500,"SBI7996102","SBI_DalalStreet","Current",3);
insert into bankaccount values("SBI8742314510",10500,"SBI8745631","SBI_DalalStreet","Credit",3);


insert into bankaccount values("SBI7841055662",20000,"SBI4596120","SBI_JpPark","Savings",4);    
insert into bankaccount values("SBI7878961203",20500,"SBI4569780","SBI_JpPark","Current",4);
insert into bankaccount values("SBI7841666741",20750,"SBI4596456","SBI_JpPark","Credit",4);

insert into bankaccount values("SBI7841046663",20000,"SBI4596120","SBI_BGLR","Savings",5);              
insert into bankaccount values("SBI7841457810",11750,"SBI4596120","SBI_BGLR","Current",5);
insert into bankaccount values("SBI5741089560",14750,"SBI4596120","SBI_BGLR","Credit",5); 

insert into bankaccount values("SBI5746677770",12750,"SBI5689741","SBI_HYD","Savings",6);
insert into bankaccount values("SBI5768888461",17750,"SBI5689741","SBI_HYD","Current",6);
insert into bankaccount values("SBI5746667102",12750,"SBI5689741","SBI_HYD","Credit",6);

insert into bankaccount values("SBI5100055530",12750,"SBI5696330","SBI_CHE","Savings",7);     
insert into bankaccount values("SBI5100054430",12750,"SBI5696330","SBI_CHE","Current",7);
insert into bankaccount values("SBI5100056630",12750,"SBI5696330","SBI_CHE","Credit",7);

insert into bankaccount values("SBI5999995123",12750,"SBI877890","SBI_MUB","Savings",8);
insert into bankaccount values("SBI5899991589",12750,"SBI877890","SBI_MUB","Current",8);
insert into bankaccount values("SBI5888842030",12750,"SBI877890","SBI_MUB","Credit",8);

insert into bankaccount values("SBI5111540345",16750,"SBI877883","SBI_MUB","Svaings",9);
insert into bankaccount values("SBI5111579854",15800,"SBI877883","SBI_MUB","Current",9);
insert into bankaccount values("SBI5111544854",19750,"SBI877883","SBI_MUB","Credit",9);

insert into bankaccount values("SBI4596123574",19750,"SBI899773","SBI_BNGLR","Savings",10);
insert into bankaccount values("SBI4596100089",19750,"SBI899773","SBI_BNGLR","Current",10);
insert into bankaccount values("SBI4596166663",19750,"SBI899773","SBI_BNGLR","Credit",10);

insert into bankaccount values("SBI4566661280",19750,"SBI899997","SBI_BNGLR","Savings",11);
insert into bankaccount values("SBI4566644620",22750,"SBI899997","SBI_BNGLR","Current",11);
insert into bankaccount values("SBI4566656789",23650,"SBI899997","SBI_BNGLR","Credit",11);


insert into bankaccount values("SBI1025697456",21650,"SBI810003","SBI_CHE","Savings",12);
insert into bankaccount values("SBI1025333456",24650,"SBI810003","SBI_CHE","Current",12);
insert into bankaccount values("SBI1024777456",21650,"SBI810003","SBI_CHE","Credit",12);

select *from bankaccount;

create table account_statement(AccStmId varchar(50) primary key,
 amount double,isDebit varchar(20), transactionRefNumber varchar(50),
                              description varchar(255),txn_date varchar(50),
                              accountNbr varchar(50), foreign key(accountNbr) references bankaccount(accountNbr),
                              custId int, foreign key(custId) references bankaccount(custId)
                              );
                              
select *from account_statement;

drop table account_statement;

insert into account_statement values("STMNT45612",10000,"YES","TRN_REF125630","ten thousand rupees is debited in your savings account","2022-08-18","SBI4510011025",1);
insert into account_statement values("STMNT45500",12000,"YES","TRN_REF125653","twelth thousand rupees is debited in your current account","2022-08-18","SBI1022021245",1);
insert into account_statement values("STMNT45410",15000,"YES","TRN_REF125455","fifteenth thousand rupees is debited in your credit account","2022-08-18","SBI4510099945",1);


insert into account_statement values("STMNT35510",15000,"YES","TRN_REF168900","fifteenth thousand rupees is debited in your curent account","2022-10-21","SBI7840125458",2);
insert into account_statement values("STMNT35511",15000,"YES","TRN_REF168910","fifteenth thousand rupees is debited in your Savings account","2022-10-21","SBI7847841000",2);
insert into account_statement values("STMNT35518",15000,"YES","TRN_REF168920","fifteenth thousand rupees is debited in your credit account","2022-10-21","SBI7896451020",2);

 
insert into account_statement values("STMNT65618",15000,"YES","TRN_REF168922","fifteenth thousand rupees is debited in your credit account","2022-10-26","SBI7896445632",3);
insert into account_statement values("STMNT10718",10000,"YES","TRN_REF168926","ten thousand rupees is debited in your credit account","2022-10-26","SBI8742310000",3);
insert into account_statement values("STMNT10118",20000,"YES","TRN_REF168929","twenty thousand rupees is debited in your credit account","2022-10-26","SBI8742314510",3);

       
insert into account_statement values("STMNT10119",20000,"YES","TRN_REF168932","twenty thousand rupees is debited in your credit account","2022-08-22","SBI7841055662",4);
insert into account_statement values("STMNT10120",21000,"YES","TRN_REF168930","twenty one thousand rupees is debited in your credit account","2022-08-22","SBI7841666741",4);
insert into account_statement values("STMNT10121",23000,"YES","TRN_REF168931","twenty three thousand rupees is debited in your credit account","2022-08-22","SBI7878961203",5);

       
 insert into account_statement values("STMNT10122",23000,"YES","TRN_REF168934","twenty three thousand rupees is debited in your credit account","2022-09-21","SBI7841046663",6);
 insert into account_statement values("STMNT10123",23000,"YES","TRN_REF168935","twenty three thousand rupees is debited in your credit account","2022-09-21","SBI7841457810",6);
 insert into account_statement values("STMNT10124",23000,"YES","TRN_REF168936","twenty three thousand rupees is debited in your credit account","2022-09-21","SBI5741089560",6);

           
insert into account_statement values("STMNT10125",23000,"YES","TRN_REF168937","twenty three thousand rupees is debited in your credit account","2022-06-20","SBI5100055530",7);
insert into account_statement values("STMNT10126",23000,"YES","TRN_REF168938","twenty three thousand rupees is debited in your credit account","2022-06-20","SBI5100054430",7);
insert into account_statement values("STMNT10127",23000,"YES","TRN_REF168939","twenty three thousand rupees is debited in your credit account","2022-06-20","SBI5100056630",7);

insert into account_statement values("STMNT10128",23000,"YES","TRN_REF168940","twenty three thousand rupees is debited in your credit account","2022-05-15","SBI5999995123",8);
insert into account_statement values("STMNT10129",20000,"YES","TRN_REF168941","twenty thousand rupees is debited in your credit account","2022-05-15","SBI5899991589",8);
insert into account_statement values("STMNT10130",22000,"YES","TRN_REF168942","twenty two thousand rupees is debited in your credit account","2022-05-15","SBI5888842030",8);
insert into account_statement values("STMNT10131",24000,"YES","TRN_REF168943","twenty four thousand rupees is debited in your credit account","2022-09-25","SBI5111540345",9);
insert into account_statement values("STMNT10132",10000,"YES","TRN_REF168944","ten thousand rupees is debited in your credit account","2022-09-25","SBI5111579854",9);
insert into account_statement values("STMNT10133",20000,"YES","TRN_REF168945","twenty  thousand rupees is debited in your credit account","2022-09-25","SBI5111555590",9);

               
insert into account_statement values("STMNT10134",15000,"YES","TRN_REF168946","fifeteen  thousand rupees is debited in your credit account","2022-04-18","SBI4596123574",10);
insert into account_statement values("STMNT10135",20000,"YES","TRN_REF168947","twenty  thousand rupees is debited in your credit account","2022-04-18","SBI4596100089",10);
insert into account_statement values("STMNT10136",13000,"YES","TRN_REF168948","thirteen  thousand rupees is debited in your credit account","2022-04-18","SBI4596166663",10);
insert into account_statement values("STMNT10137",12000,"YES","TRN_REF168949","twelve  thousand rupees is debited in your credit account","2022-09-18","SBI4566661280",11);
insert into account_statement values("STMNT10138",17000,"YES","TRN_REF168950","seventeen  thousand rupees is debited in your credit account","2022-09-18","SBI4566644620",11);

insert into account_statement values("STMNT10140",9000,"YES","TRN_REF168952"," nine  thousand rupees is debited in your credit account","2022-09-18","SBI1025697456",11);
insert into account_statement values("STMNT10141",7500,"YES","TRN_REF168953"," seven thousand five hundred rupees is debited in your credit account","2022-09-22","SBI1025333456",12);
insert into account_statement values("STMNT10142",16000,"YES","TRN_REF168954","sixteen  thousand rupees is debited in your credit account","2022-09-22","SBI1024777456",12);


insert into account_statement values("STMNT16248",16050,"YES","TRN_REF167960","sixteen  thousand fifty rupees is debited in your credit account","2022-09-22","SBI4500000125",12);

select *from account_statement;

select *from customer ;
select *from customer where city in ('Chennai','Mumbai','Bangalore');
select count(*) from customer where city in ('Chennai','Mumbai','Bangalore');

select *from customer where dob >='2000-01-01'&& dob <='2022-01-01';


select bankaccount.custId,bankaccount.accountNbr,bankaccount.account_type,account_statement.AccStmId,account_statement.amount,account_statement.transactionRefNumber,
       account_statement.txn_date,account_statement.description
from bankaccount left join account_statement on bankaccount.accountNbr = account_statement.accountNbr
order by bankaccount.custId;


select customer.custId,account_statement.accountNbr,account_statement.AccStmId,
account_statement.amount,account_statement.transactionRefNumber,account_statement.txn_date,
account_statement.description  
from customer right join account_statement on customer.custId=account_statement.custId;

select customer.custId,accountNbr,account_statement.AccStmId,customer.dob,
account_statement.amount,account_statement.transactionRefNumber,account_statement.txn_date,
account_statement.description from customer
right join account_statement on customer.custId=account_statement.custId where customer.dob>=2000 && customer.dob<=2022;

select  customer.custId,customer.first_name,customer.dob,bankaccount.accountNbr,bankaccount.balance,
 bankaccount.bank_code,bankaccount.branch_code,bankaccount.account_type
from  customer right join bankaccount on customer.custId = bankaccount.custId where customer.dob >='2000-01-01'&& dob <='2022-01-01';


select  customer.custId,customer.first_name,customer.dob,bankaccount.accountNbr,bankaccount.balance,
 bankaccount.bank_code,bankaccount.branch_code,bankaccount.account_type,customer.city
from  customer right join bankaccount on customer.custId = bankaccount.custId where city in ('Mumbai','Chennai','Bangalore');


select bankaccount.accountNbr,bankaccount.account_type,account_statement.AccStmId,
         sum(account_statement.amount) from bankaccount
right join account_statement on bankaccount.accountNbr = account_statement.accountNbr   where bankaccount.account_type = "Credit"
group by account_statement.accountNbr;