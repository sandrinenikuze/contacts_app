Contact.create!([
  {first_name: "Claire", last_name: "Uwineza", email: "claire@gmail.com", phone_number: "0788868022"},
  {first_name: "Marcel", last_name: "Masengo", email: "masengomarcel@gmail.com", phone_number: "0788845853"},
  {first_name: "Celine", last_name: "Niwemugeni", email: "celine.niwe@gmail.com", phone_number: "0788684148"},
  {first_name: "Aline", last_name: "Nirere", email: "anire02@yahoo.fr", phone_number: "0785982592"},
  {first_name: "Illuminee ", last_name: "Mukamwiza", email: "illumine@gmail.com", phone_number: "0788515012"}
])
Group.create!([
  {name: "friends"},
  {name: "family"},
  {name: "business"}
])
GroupContact.create!([
  {contact_id: 1, group_id: 2},
  {contact_id: 2, group_id: 3},
  {contact_id: 4, group_id: 2},
  {contact_id: 5, group_id: 1},
  {contact_id: 7, group_id: 2}
])
