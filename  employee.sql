/*create tittle table */ 

 create table titles(
 	title_id varchar(250) not null,
 	title varchar(250) not null,
 	primary key(title_id)
 );

 select * from titles

/* create table employees */

create table employees(
		emp_no integer not null,
	 	emp_title_id varchar(250) not null,
	 	birth_date date not null,
	 	first_name varchar(250) not null,
	 	last_name varchar(250) not null,
	 	sex varchar(1) not null,
	 	hire_date date not null,
	 	primary key(emp_no),
	    FOREIGN KEY (emp_title_id) 
		REFERENCES titles(title_id)
);

select * from employees;

/* create salary table */ 

create table salaries(
 	emp_no integer not null,
 	salary integer not null,
	foreign key(emp_no) References employees(emp_no)
);

 select * from salaries;
 
 /* create department table */

 create table departments(
 	dept_no varchar(250) not null,
 	dept_name varchar(250) not null,
 	primary key(dept_no)
 );
 
  select * from departments
  
/*create table dept_manager*/

create table dept_manager(
	dept_no varchar(250) not null,
 	emp_no integer not null,
 	FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no)
 );
 
 select * from dept_manager

 
/* create dept_emp table */

create table dept_emp(
 	emp_no integer not null,
 	dept_no varchar(250) not null,
 	foreign key(emp_no) References employees(emp_no),
 	foreign key(dept_no) References departments(dept_no)
);

 select * from dept_emp
 


