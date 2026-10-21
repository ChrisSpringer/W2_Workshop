#Requirements and Conceptual Model
Ardita Mrapshtija, Arionsae Mccutcheon, Christopher Springer

b) The end user is Lana. She needs to be able to track her customers and the information for their dogs.
  The categories she will need to track will be (customers, date, dog type, payment, transaction)

c) Customers: customer_id, owner_name, phone_number, email
  Dog: dog_id, dog_name, breed, age
  Date: dog_id,  walk_date, walk_duration, notes(what might have happened on the walk)
  payment: customer_id, amount, payment_method, date_serviced
  transaction: invoice_number, customer_id, dog_id, walk date
