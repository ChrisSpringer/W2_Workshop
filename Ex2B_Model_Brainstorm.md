#Requirements and Conceptual Model
Ardita Mrapshtija, Arionsae Mccutcheon, Christopher Springer

b) The end user is Lana. She needs to be able to track her customers and the information for their dogs.
  The categories she will need to track will be (customers/owners, walk, dog, payment)

c) Customers - We need to track the 
  -- Owners (name)
  -- Contact info (phone # and email)
  -- Dog(s) 
  -- Payment information
  Walk - This will encompass all things walk related. 
  -- The date of the dog's walk
  -- How long it was
  -- Start and end times
  -- Dog's dropoff and pickup time
  Dog type - Includes information about the dog. 
  -- Breed 
  -- Name 
  -- Age
  -- Medical history
  -- Owner's name - to ensure each dog gets matched with its rightful owner.
  Payment - to charge for the dog walking service
  -- Customer's Name
  -- Amount for the dog walking service
  -- payment method (cash, credit, debit)
  -- Date charged for service


#Logical Model
a) Main entities are Owner, Dog, Payment, and Walk

b) Owner: owner_id(PK), owner_name, phone_number, email
  Dog: dog_id(PK), dog_name, breed, age, owner_id(fk)
  Walk: walk_id(PK) dog_id(FK),  walk_date, walk_duration, notes(what might have happened on the walk)
  Payment: payment_id(PK), owner_id(FK), amount, payment_method, date_serviced

c) The entities with relationships are Owner to Dog, Dog to Walk, and Owner to Payment.

d) Upon revision, we accounted for any many-to-many relationships and there are none.

#Notes
a) Our models turned out to be the same. The only difference between them was the placement of the tables, but the contents and relationships were all constant for all members.
