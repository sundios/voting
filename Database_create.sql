### Creating Table
CREATE TABLE votes (
    id int NOT NULL AUTO_INCREMENT,
    Name varchar(255) NOT NULL,
    Date DATE NOT NULL,
    primary key (id)
);


### Inserting Values into DB


INSERT INTO votes(Name,Date)
VALUES
('Konrad','2019-12-02'),
('Margi','2019-12-02'),
('Konrad','2019-12-02'),
('Konrad','2019-12-02'),
('Konrad','2019-12-03'),
('Margi','2019-12-03'),
('Margi','2019-12-03'),
('Konrad','2019-12-03'),
('Margi','2019-12-04'),
('Margi','2019-12-04'),
('Konrad','2019-12-04'),
('Margi','2019-12-04'),
('Konrad','2019-12-04');


### Selecting Votes per day to count votes

select count(*) as count,
 Date_Format(Date(Date),'%Y/%m/%d') as Date,
 sum(Name = 'Konrad.') As KB, 
 sum(Name='Margi.') as Margi
 from votes 
 Group by Date(Date)




