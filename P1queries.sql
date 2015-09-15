/*
   CSCI 585 HOMEWORK 2 
   
     Name:  AVINASH AKKA
   USC ID:  3874-5774-01

*/


/*--------------------------------- QUERY 1 ----------------------------------------------------------------------------------*/ 

Select UserID as Users_RegIn_May2012 from UserProfile
where DateMembered LIKE '05____2012';




/*--------------------------------- QUERY 2 ----------------------------------------------------------------------------------*/ 

Select CAST(AVG(strftime('%Y', 'now') - substr(DoB,7,4)) as INT) as Avg_Age
      from UserProfile
      where UserID IN 
                (SELECT OwnerID
                 FROM Channel 
                 where ChannelType = 'Public-Channel' and (LENGTH(VideoIDs)- LENGTH(REPLACE(VideoIDs,'V',''))) > 4);
    

/*--------------------------------- QUERY 3 ----------------------------------------------------------------------------------*/ 

Select VideoID,ViewCount,Artist
from Video 
where substr(UploadDate,7,4) = '2013' AND substr(UploadDate,1,2) = '12'
order by ViewCount desc
LIMIT 3;


/*--------------------------------- QUERY 4 ----------------------------------------------------------------------------------*/ 

Select Substr(UploadDate,7,4) as Upload_Year,Type,SUM(ViewCount) as Total_Agg_View_Count
from Video
Group by Type,Upload_Year
Order by Type;



/*--------------------------------- QUERY 5 ----------------------------------------------------------------------------------*/
/* Use Limit 1 to display only 1 channel owned by the youngest owner with multiple channels*/

Select ChannelID,UserID,Age
from 
(select UserID,min(strftime('%Y', 'now') - substr(DoB,7,4)) as Age
      from UserProfile,Channel
      where UserID IN 
            (select OwnerID
             from Channel
             group by ChannelID
             order by OwnerID)) join Channel on UserID = OwnerID;




/*--------------------------------- QUERY 6 ----------------------------------------------------------------------------------*/ 

Select GrantedPersonalInfo
from Friend_Group
where UserID = 'U-2' and FriendGroup IN ( 
				      Select FriendGroup
			               from FriendList
				      where UserID = 'U-17' and FriendID = 'U-2' and FriendAgreed = 'YES' and FriendRegistered = 'Member');



/*--------------------------------- QUERY 7 ----------------------------------------------------------------------------------*/ 

Select UserID,A_TotalFriendRequestsMade,count(*) as B_FriendRequestsAccepted,C_FriendRequestRejected,D_FriendRequestUndecided
from FriendList left join
         (select UserID,count(*) as D_FriendRequestUndecided
          from FriendList
          where FriendAgreed = 'Not-Yet'
          group by UserID)  using (UserID) left join
                         (select UserID, count(*) as C_FriendRequestRejected
                          from FriendList
                          where FriendAgreed = 'NO'
                          group by UserID) using (UserID) left join
						(select UserID,count(*) as A_TotalFriendRequestsMade 
						 from FriendList group by UserID ) using (UserID) 
where FriendAgreed = 'YES'
group by UserID;




/*--------------------------------- QUERY 8 ----------------------------------------------------------------------------------*/ 

Select FriendID as Guy_Grouped_CLOSE_FAMILY_Most,max(Counnt) as No_of_People_who_Did
from
    (select count(FriendID) as Counnt,FriendID
     from FriendList
     where FriendGroup = 'Close-family'
     group by FriendID);