
-- 1)Retrieve the number of visitors to the Maldives in 2019?
Select name , NumberofVisitors ,year from destination join 
touristarrivals on destination.DestinationID = touristarrivals.DestinationID where Name = "Maldives" And year = "2019";

-- 2)Retrieve the average budget per day and best time to visit for destinations with more than 10,000 tourists in 2022?
select Name,AverageBudgetPerDay,BestTimeToVisit ,Numberoftourists ,year from destination inner join indiantourists 
on destination.DestinationID = indiantourists.DestinationID
where Numberoftourists > 10000 And year = "2022" ;

-- 3)Retrieve the unique features of tourist attractions in Lakshadweep?
select destination.name , UniqueFeatures ,Description, touristattractions.name As island_name from destination
 inner join touristattractions on 
  destination.DestinationID = touristattractions.DestinationID where destination.name =  'Lakshadweep';
  
-- 4)Retrieve the number of Indian tourists who visited the Maldives in 2021?
select name, NumberofTourists As indianTourist ,year from  destination inner join indiantourists 
on destination.DestinationID = indiantourists.DestinationID
where destination.DestinationID = 1 And IndianTouristID And year = "2021";

-- 5)Find the destinations with the highest tourism revenue in 2022?
select name ,year , Max(TourismRevenue) As HighestRevenue from destination inner join 
indiantourists on destination.DestinationID = indiantourists.DestinationID where year = "2022" ;