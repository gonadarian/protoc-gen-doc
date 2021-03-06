
�
Booking.protocom.example"�
BookingStatus
id (Rid 
description (	RdescriptionF
status_code (2%.com.example.BookingStatus.StatusCodeR
statusCode"'

StatusCode
OK�
BAD_REQUEST�*d����"�
Booking

vehicle_id (R	vehicleId
customer_id (R
customerId2
status (2.com.example.BookingStatusRstatus+
confirmation_sent (RconfirmationSent0
payment_received (:falseRpaymentReceived2D
optional_field_1.com.example.BookingStatuse (	RoptionalField1*(
BookingType
	IMMEDIATEd

FUTUREe2Q
BookingService?
BookVehicle.com.example.Booking.com.example.BookingStatus:;
country.com.example.BookingStatusd (	:chinaRcountryJ�
 G
w
 m*
 Booking related messages.

 This file is really just an example. The data model is completely
 fictional.



6
  **
 Service for handling vehicle bookings.



 
_
  4R/ Used to book a vehicle. Pass in a Booking and a BookingStatus will be returned.


  

  

  %2
;
  #/*
 Represents the status of a vehicle booking.



 
/
  !*
 A flag for the status result.


  

   " OK result.


   

   

  " BAD result.


  

  
)
  &"/ Unique booking status ID.


  


  

  

  $%
:
 &"-/ Booking status description. E.g. "Active".


 


 

 

 $%
*
  &"/ The status of this status?


  


  

  !

  $%


 "

  "

  "

  "
	
% (
2
 '4'* The country the booking occurred in. 


 %


 '



 '


 '


 '


 ' 3


 '+2
$
 - 0*
 The type of booking.



 -
!
  ." Immediate booking.


  .

  .

 /" Future booking.


 /

 /
h
7 G\*
 Represents the booking of a vehicle.

 Vehicles are some cool shit. But drive carefully!



7
%
 8$"/ ID of booked vehicle.


 8


 8

 8

 8"#
1
9$"$/ Customer that booked the vehicle.


9


9

9

9"#
&
:$"/ Status of the booking.


:


:

:

:"#
3
=&&* Has booking confirmation been sent? 

=


=

=!

=$%
*
@7* Has payment been received? 

@


@

@ 

@#$

@%6

@05
2
DF2% Nested extentions are also a thing.

?
 E+"2 An optional field to be used however you please.


 D	

 E

 E

 E$

 E'*
�'
Vehicle.protocom.example"!
FindVehicleById
id (Rid"�
Model
id (	Rid

model_code (	R	modelCode

model_name (	R	modelName5
daily_hire_rate_dollars (RdailyHireRateDollars1
daily_hire_rate_cents (RdailyHireRateCents%
type (2.com.example.TypeRtype"
EmptyMessage"K
ExcludedMessage
id (	Rid
name (	Rname
value (Rvalue"�
Manufacturer
id (Rid
code (	Rcode
details (	Rdetails>
category (2".com.example.Manufacturer.CategoryRcategory"7
Category
CATEGORY_INHOUSE 
CATEGORY_EXTERNAL"�
Vehicle
id (Rid(
model (2.com.example.ModelRmodel

reg_number (	R	regNumber
mileage (Rmileage9
category (2.com.example.Vehicle.CategoryRcategory
rates (RratesD

properties (2$.com.example.Vehicle.PropertiesEntryR
properties@
Category
code (	Rcode 
description (	Rdescription=
PropertiesEntry
key (	Rkey
value (	Rvalue:8*
Type	
COUPE 	
SEDAN2�
VehicleService<
	GetModels.com.example.EmptyMessage.com.example.Model07
	AddModels.com.example.Model.com.example.Model(0@

GetVehicle.com.example.FindVehicleById.com.example.VehicleJ�
 s
;
 1*
 Messages describing manufacturers / vehicles.



C
  7*
 The vehicle service.

 Manages vehicles and such...



 
)
  5 Returns the set of models.


  

  

  '-

  .3

 5" creates models


 

 

 

 '-

 .3
*
 4*
 Looks up a vehicle by id.


 

  

 +2
7
  +*
 A request message for finding vehicles.



 
-
  "  The id of the vehicle to find.


  

  

  


  
+
" +*
 Represents a vehicle model.



"
#
 #" The unique model ID.


 #"

 #

 #	

 #
0
$"# The car model code, e.g. "PZ003".


$#

$

$	

$
-
%"  The car model name, e.g. "Z3".


%$

%

%	

%

'%" Dollars per day.


'%

'

'	 

'#$

(%" Cents per day.


('%

(

(	

(#$
%
*" The type of this model


*(%

*

*

*

. / An empty message.



.
8
5 ;,*
 @exclude
 This comment won't be rendered



5
&
 6" the id of this message.


 65

 6

 6	

 6
0
7"# @exclude the name of this message


76

7

7	

7
2
:% @exclude the value of this message. 

:7

:

:

:
 
 > A The type of model.



 >	
!
  ?" The type is coupe.


  ?

  ?

!
 @" The type is sedan.


 @

 @

2
F U&*
 Represents a manufacturer of cars.



F
Z
 JML*
 Manufacturer category. A manufacturer may be either inhouse or external.


 J
-
  K" The manufacturer is inhouse.


  K

  K
.
 L" The manufacturer is external.


 L

 L
+
 O"* The unique manufacturer ID. 

 OM

 O

 O


 O
1
P"$ A manufacturer code, e.g. "DKL4P".


PO

P

P	

P
:
Q"- Manufacturer details (minimum orders etc.).


QP

Q

Q	

Q
&
T* Manufacturer category. 

TQ

T


T

T
7
Z s+*
 Represents a vehicle that can be hired.



Z
I
 ^a;*
 Represents a vehicle category. E.g. "Sedan" or "Truck".


 ^

*
  _"/ Category code. E.g. "S".


  _^

  _


  _

  _
.
 `"/ Category name. E.g. "Sedan".


 `_

 `


 `

 `
"
 c"* Unique vehicle ID. 

 ca

 c

 c


 c

d"* Vehicle model. 

dc

d

d

d
,
e"* Vehicle registration number. 

ed

e

e	

e
2
f"%* Current vehicle mileage, if known. 

fe

f

f	

f
!
g"* Vehicle category. 

gf

g


g

g
�
p rates
2� Doc comments for fields can come before or
 after the field definition. And just like
 comments for messages / enums, they can be
 multi-paragraph:


p


p

p

p
8
r%"+ bag of properties related to the vehicle.


rp

r

r 

r#$bproto3