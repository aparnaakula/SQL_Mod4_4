-- customer

insert into customer(customer_id,first_name,last_name,address,billing_info)
values(1, 'Josh', 'Martin', '123 Flatland Av, Brooklyn,NY 112321', '4545 3200 6909 5656');

insert into customer(customer_id,first_name,last_name,address,billing_info)
values(2, 'Dale', 'Grace', '4002 Park PL Staten Island,NY 10301', '4242 0000 1015 0101');

insert into customer(customer_id,first_name,last_name,address,billing_info)
values(3, 'Mark', 'Hightower', '445 Atlantic Av, Queens,NY 11212', '5805 7272 0202 6767');

-- INSERT DATA USING STORED PROC
create or replace function add_customer(_customer_id INTEGER, _first_name VARCHAR, _last_name VARCHAR, _address VARCHAR, _billing_info VARCHAR)
returns void
as $MAIN$
begin 
	insert into customer(customer_id,first_name,last_name,address,billing_info)
	values (_customer_id,_first_name,_last_name,_address,_billing_info);
end;
$MAIN$
language plpgsql;

select add_customer(4, 'Aparna', 'Watson', '335 Sunshine Lane, 56342', '1111 2222 3333 4444');


-- Car

insert into car(car_id,salesperson_id,customer_id,make,model,car_year)
values(1, '1', '1', 'Honda', 'Civic', '01-30-2018');

insert into car(car_id,salesperson_id,customer_id,make,model,car_year)
values(2, '2', '2', 'Subaru', 'Outback', '11-25-2020');

insert into car(car_id,salesperson_id,customer_id,make,model,car_year)
values(3, '3', '3', 'Acura', 'ILX', '03-12-2019');

-- INSERT DATA USING STORED PROC
create or replace function add_car(_car_id INTEGER, _salesperson_id INTEGER, _customer_id INTEGER, _make VARCHAR, _model VARCHAR, _car_year DATE)
returns void
as $MAIN$
begin 
	insert into car(car_id,salesperson_id,customer_id,make,model,car_year)
	values (_car_id,_salesperson_id, _customer_id, _make, _model, _car_year);
end;
$MAIN$
language plpgsql;

select add_car(4, '3', '4', 'Nissan', 'Altima', '01-12-2015');



-- Salesperson

insert into salesperson(salesperson_id,first_name,last_name,sales_total)
values(1, 'Alex', 'Kerr', '3200');

insert into salesperson(salesperson_id,first_name,last_name,sales_total)
values(2, 'David', 'Soprano', '1453');

insert into salesperson(salesperson_id,first_name,last_name,sales_total)
values(3, 'William', 'Winford', '5105');

-- Mechanic
insert into mechanic(mechanic_id,first_name,last_name,parts_cost,service_cost,total_cost)
values(1, 'Jose', 'Gomez', '300', '150', '450');

insert into mechanic(mechanic_id,first_name,last_name,parts_cost,service_cost,total_cost)
values(2, 'Don', 'West', '65', '30', '95');

insert into mechanic(mechanic_id,first_name,last_name,parts_cost,service_cost,total_cost)
values(3, 'James', 'Jones', '1500', '500', '2000');

-- Invoice
insert into invoice(invoice_id,salesperson_id,customer_id,cost_total)
values('1032','1','1','450');

insert into invoice(invoice_id,salesperson_id,customer_id,cost_total)
values('1043','2','2','95');

insert into invoice(invoice_id,salesperson_id,customer_id,cost_total)
values('1052','3','3','2000');

-- Ticket 
insert into ticket(ticket_id,mechanic_id,car_id,customer_id)
values('11','2','3','3');

insert into ticket(ticket_id,mechanic_id,car_id,customer_id)
values('16','1','2','1');

insert into ticket(ticket_id,mechanic_id,car_id,customer_id)
values('22','3','1','2');