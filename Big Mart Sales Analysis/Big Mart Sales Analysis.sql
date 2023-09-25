
# Project-1 of Mysql by Fingertips...

# Table is already imported so lets start directly from questions...


# first of all check all the data..

select* from sql_project sp ;
DESC sql_project ;


# All data is checked now lets move on to questions...



 #Answer the questions below with SQL Query
#1. WRITE a sql query to show all Item_Identifier

SELECT Item_Identifier  FROM sql_project sp;  



#2. WRITE a sql query to show count of total Item_Identifier

SELECT count(Item_Identifier) from sql_project sp ;

#3. WRITE a sql query to show maximum Item Weight

select max(Item_Weight)  from sql_project sp ;



select * from sql_project sp ;

#4. WRITE a query to show minimun Item Weight

select min(Item_Weight)  from sql_project sp; 


#5. WRITE a query to show average Item_Weight

select round(avg(Item_Weight),2)  from sql_project sp;






#6. WRITE a query to show count OF Item_Fat_Content WHERE
#Item_Fat_Content IS Low Fat


select * from sql_project sp ;



#7. WRITE a query to show count OF Item_Fat_Content WHERE
#Item_Fat_Content IS Regular

SELECT  count(Item_Fat_Content)  from sql_project sp
where Item_Fat_Content = 'Regular';






#8. WRITE a query TO show maximum Item_MRP


select max(Item_MRP) from sql_project sp ; 





#9. WRITE a query TO show minimum Item_MRP


select min(Item_MRP) from sql_project sp; 


#10.WRITE a query to show Item_Identifier , Item_Fat_Content
#,Item_Type,Item_MRP and Item_MRP IS greater than 200

SELECT Item_Identifier , Item_Fat_Content ,Item_Type ,Item_MRP 
from sql_project sp 
where Item_MRP > 200;



#11.WRITE a query to show maximum Item_MRP WHERE
#Item_Fat_Content IS Low Fat

SELECT max(Item_MRP) from sql_project sp  
where Item_Fat_Content = 'Low Fat'; 



#12.WRITE a query to show minimum Item_MRp AND Item_Fat_Content IS
#Low Fat

SELECT min(Item_MRP) from sql_project sp  
where Item_Fat_Content = 'Low Fat'; 

#13.WRITE a query to show ALL DATA WHERE item MRP IS BETWEEN 50 TO
#100
select * from sql_project sp 
where Item_MRP between 50 and 100;




#14.WRITE a query to show ALL UNIQUE value Item_Fat_Content

select distinct(Item_Fat_Content) from sql_project sp 
;





#15.WRITE a query to show ALL UNIQUE value Item_Type

select DISTINCT (Item_Type) 
from sql_project sp ;


#16.WRITE a query to show ALL DATA IN descending ORDER BY Item MRP
select * from sql_project sp 
order by Item_MRP DESC ;


#17.WRITE a query to show ALL DATA IN ascending ORDER BY
#Item_Outlet_Sales


select * from sql_project sp 
order by Item_Outlet_Sales ;


#18.WRITE a query to show ALL DATA IN ascending BY Item_Type
select * from sql_project sp 
order by Item_Type ASC ;



#19.WRITE a query to show DATA OF item_type dairy & Meat

select distinct Item_Type  from sql_project sp ;

select * from sql_project sp 
where Item_Type IN ('Dairy','meat');

#20.WRITE a query to show ALL UNIQUE value OF Outlet_Size

select distinct Outlet_Size  from sql_project sp ;



#21.WRITE a query to show ALL UNIQUE value OF Outlet_Location_Type


select distinct Outlet_Location_Type  from sql_project sp ;



#22.WRITE a query to show ALL UNIQUE value OF Outlet_Type

select distinct Outlet_Type  from sql_project sp ;



#23.WRITE a query to show count NO. OF item BY Item_Type AND ordered
#it IN descending

select * from sql_project sp ;

select Item_Type ,count(*) as No_of_item from sql_project sp
group by Item_Type 
order by no_of_item desc;


#24.WRITE a query to show count NO. OF item BY Outlet_Size AND
#ordered it IN ascending

select Outlet_Size ,count(*) as No_of_item from sql_project sp
group by Outlet_Size 
order by no_of_item ASC;





#25.WRITE a query to show count NO. OF item BY outlet_establishment_year

select Outlet_Establishment_Year , count(*)
from sql_project sp 
group by Outlet_Establishment_Year ;


#26.WRITE a query to show count NO. OF item BY Outlet_Type AND
#ordered it IN descending

select Outlet_Type  ,count(*) as No_of_item from sql_project sp
group by Outlet_Type 
order by no_of_item desc;



#27.WRITE a query to show count of item BY Outlet_Location_Type AND
#ordered it IN descending

select Outlet_Location_Type  ,count(*) as No_of_item from sql_project sp
group by Outlet_Location_Type 
order by no_of_item desc;



#28.WRITE a query to show maximum MRP BY Item_Type

SELECT Item_Type ,max(Item_MRP) as maximum
from sql_project sp  ;


select * from sql_project sp2 ;




#29.WRITE a query to show minimum MRP BY Item_Type


SELECT Item_Type ,min(Item_MRP) as maximum
from sql_project sp ;





#30.WRITE a query to show minimum MRP BY Outlet_Establishment_Year
#AND ordered it IN descending

	SELECT Outlet_Establishment_Year , min(Item_MRP)  as minimum
	from sql_project sp
    group by Outlet_Establishment_Year 
	order by minimum desc;
    

#31.WRITE a query to show maximum MRP BY Outlet_Establishment_Year
#AND ordered IN descending

SELECT Outlet_Establishment_Year , max(Item_MRP) as maximum
	from sql_project sp 
    group by Outlet_Establishment_Year 
	order by maximum desc;



#32.WRITE a query to show average MRP BY Outlet_Size AND ordered IN
#descending

SELECT Outlet_Size ,avg(Item_MRP) as average 
	from sql_project sp
	group by Outlet_Size 
order by average desc;



#33.WRITE a query to show average MRP BY Outlet_Size

select Outlet_Size , avg(Item_MRP) as average 
from sql_project sp 
group by Outlet_Size ;

#34.WRITE a query to show Average MRP BY Outlet_Type AND ordered IN
#ascending

select Outlet_Type , avg(Item_MRP) as average
from sql_project sp 
group by Outlet_Type 
order by average asc;


#35.WRITE a query to show maximum MRP BY Outlet_Type

select Outlet_Type , max(Item_MRP) as maximum
from sql_project sp 
group by Outlet_Type ;

#36.WRITE a query to show maximum Item_Weight BY Item_Type

SELECT Item_Type , max(Item_Weight) as maximum
from sql_project sp 
group by Item_Type ;


#37.WRITE a query to show maximum Item_Weight BY
#Outlet_Establishment_Year

select Outlet_Establishment_Year , max(Item_Weight) as maximum 
from sql_project sp 
group by Outlet_Establishment_Year ;


#38.WRITE a query to show minimum Item_Weight BY Outlet_Type
select Outlet_Type  , min(Item_Weight) as minimum 
from sql_project sp 
group by Outlet_Type;



#39.WRITE a query to show average Item_Weight BY
#Outlet_Location_Type ORDER BY descending

select Outlet_Location_Type , avg(Item_Weight) as average
from sql_project sp 
group by Outlet_Location_Type
order by average DESC ;



#40.WRITE a query to show maximum Item_Outlet_Sales BY Item_Type


select Item_Type , max(Item_Outlet_Sales) as maximum 
from sql_project sp 
group by Item_Type  ;


#41.WRITE a query to show minimum Item_Outlet_Sales BY Item_Type

select Item_Type , min(Item_Outlet_Sales) as minimum 
from sql_project sp 
group by Item_Type  ;



#42.WRITE a query to show minimum Item_Outlet_Sales BY
#Outlet_Establishment_Year


select Outlet_Establishment_Year  , min(Item_Outlet_Sales) as minimum 
from sql_project sp 
group by Outlet_Establishment_Year ;



#43.WRITE a query to show maximum Item_Outlet_Sales BY
#Outlet_Establishment_Year ordered BY descending

select Outlet_Establishment_Year , max(Item_Outlet_Sales) as maximum 
from sql_project sp 
group by Outlet_Establishment_Year
order by maximum desc;




#44.WRITE a query to show average Item_Outlet_Sales BY Outlet_Size
#AND ORDER it itn descending

select Outlet_Size  , avg(Item_Outlet_Sales) as average
from sql_project sp 
group by Outlet_Size  
order by average desc ;



#45.WRITE a query to show average Item_Outlet_Sales BY Outlet_Size

select Outlet_Size  , avg(Item_Outlet_Sales) as average
from sql_project sp 
group by Outlet_Size 





#46.WRITE a query to show average Item_Outlet_Sales BY Outlet_Type



select Outlet_Size  , avg(Item_Outlet_Sales) as average
from sql_project sp 
group by Outlet_Size 


#47.WRITE a query to show maximum Item_Outlet_Sales BY Outlet_Type



select Outlet_Type  , max(Item_Outlet_Sales) as maximum 
from sql_project sp 
group by Outlet_Type ; 


#48.WRITE a query to show total Item_Outlet_Sales BY outlet_type


select Outlet_Type  , sum(Item_Outlet_Sales) as Toal
from sql_project sp 
group by Outlet_Type ; 



#49.WRITE a query to show total Item_Outlet_Sales BY Item_Type


SELECT Item_Type , sum(Item_Outlet_Sales) as Total
from sql_project sp 
group by Item_Type ;


#50.WRITE a query to show total Item_Outlet_Sales BY outlet_size


SELECT Outlet_Size , sum(Item_Outlet_Sales) as Total
from sql_project sp 
group by Outlet_Size  ;



#51.WRITE a query to show total Item_Outlet_Sales BY Item_Fat_Content


SELECT Item_Fat_Content  , sum(Item_Outlet_Sales) as Total
from sql_project sp 
group by Item_Fat_Content  ;


#52.WRITE a query to show maximum Item_Visibility BY Item_Type

SELECT Item_Type  , max(Item_Visibility) 
from sql_project sp 
group by Item_Type ;






#53.WRITE a query to show Minimum Item_Visibility BY Item_Type


SELECT Item_Type  , min(Item_Visibility) 
from sql_project sp 
group by Item_Type ;



#54.WRITE a query to show total Item_Outlet_Sales BY Item_Type but
#ONLY WHERE Outlet_Location_Type IS Tier 1


SELECT Item_Type , sum(Item_Outlet_Sales) as Total
from sql_project sp
where Outlet_Location_Type = 'Tier 1' 
group by Item_Type ;



#55.WRITE a query to show total Item_Outlet_Sales BY Item_Type WHERE
#Item_Fat_Content IS ONLY Low Fat 

SELECT Item_Type , sum(Item_Outlet_Sales) as Total
from sql_project sp
where Item_Fat_Content = 'Low Fat' 
group by Item_Type ;


# END ...... THANK YOU FINGERTIPS FOR THIS PROJECT.....|||
