
/*****יוסי אלבז 5/8/22 יש למלא טבלאות בעזרת שאילתת Insert (לפחות 10 שורות בכל טבלה)*****/


insert into Product values (1006,'guitar case',145)
insert into Product values (1003,'fender strat',3500)
insert into Product values (1004,'mixer GIMINNI',1480)
insert into Product values (1005,'coustom drummes',5590)
insert into Product values (1001,'harmonica',118)
insert into Product values (1002,'ear plags',231)
insert into Product values (1007,'guitar PL cable',330)
insert into Product values (1008,'SURE SM mic',670)
insert into Product values (1009,'guitar strings',55)
insert into Product values (1010,'bass strings',70)
insert into Product values (1011,'guitar belt',99)
insert into Product values (1012,'buds PRO',440)


insert into Worker values 
(2231,'Yossi'),(2226,'Oded'),(4352,'Avi'),
(7839,'Ben'),(2641,'Israel'),(9854,'Ahron'),
(1689,'Alex'),(1451,'Sergay'),(9766,'Ilan'),
(9765,'Tal'),(3338,'Galit'),(8005,'David')

/*רשימת כל המוצרים בלי ID וללא חזרה על אותו שם יותר מפעם אחד לפי אלפבית*/

select distinct NAME
from Product
order by name

/*רשימת מוצרים שמחירם גבוה מ-שקל50 */

select PRICE,NAME
from Product
where PRICE > 50 


/*רשימת מחירים + עמודה לאחר התייקרות ב-20%*/

select ID_P,NAME,PRICE,PRICE*1.2 
from Product

/*רשימת כל העובדים לפי סדר יורד */

select ID_W,NAME
from Worker
order by NAME

/***רשימת הזמנות, כאשר כמות המוצרים גדולה מ-10 (יש להציג רק 3 המובילים)***/

select top 3 quantity 
from Orders
where quantity > 10


/***יש רק הזמנה אחת אם כמות גדולה מעשר***/

/******
הערה חשובה: גיליתי שאי אפשר לפתוח טבלה בשם
ORDER 
כיוון שזה שם של פקודה. לכן שיניתי את השם רק כך יכולתי לבצע השאילתות
******/




/*יש לעדכן את כל ההזמנות שעובד מס' 3 טיפל - לשנות כמות ההזמנה ל-10 */

UPDATE Orders SET QUANTITY = 10
WHERE ID_W = 2226

