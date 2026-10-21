#Requirements and Conceptual Model
Ardita Mrapshtija, Arionsae Mccutcheon, Christopher Springer

b) The end user is Lana. She needs to be able to track her customers and the information for their dogs.
  The categories she will need to track will be (customers, date, dog type, payment, transaction)

c) Customers - We need to track the 
  -- Owners (name)
  -- Contact info (phone # and email)
  -- Dog(s) 
  -- Payment information
  Date - This will encompass all things time related. 
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
  Transaction - the invoice for the service with links to all the tables
  -- Customer
  -- Dog
  -- Date of walk
  -- Payment


#Logical Model
a) Main entities are Owner, Dog, Payment, Date, and Transaction

b) Owner: owner_id, owner_name, phone_number, email
  Dog: dog_id, dog_name, breed, age, owner_id
  Walk_Date: dog_id,  date, walk_duration, notes(what might have happened on the walk)
  payment: owner_id, amount, payment_method, date_serviced
  transaction: invoice_number, owner_id, dog_id, walk date

c) The entities with relationships are Owner to Dog, Dog to Walk_Date, and Owner to Payment.

d) Dog and Walk_Date may be a possible many-to-many relationship. A dog can have many walk dates. And a date can have many dogs that walked.
