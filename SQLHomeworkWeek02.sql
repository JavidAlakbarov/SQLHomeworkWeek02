CREATE TABLE Book(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	[Name] NVARCHAR(20)
)

CREATE TABLE [Address](
	ID INT IDENTITY(1,1) PRIMARY KEY,
	City NVARCHAR(20) NOT NULL ,
	Country NVARCHAR(20)
)

CREATE TABLE Author(
	[Name] NVARCHAR(20) PRIMARY KEY,
	Age INT CHECK(Age<30),
	[Address] INT FOREIGN KEY REFERENCES [Address](ID),
	BookName INT FOREIGN KEY REFERENCES Book(ID),
	CompanyName NVARCHAR(20) 
)

INSERT INTO Book([Name]) VALUES ('Sefiller'),
								('Sefehler'),
								('Opponent Of Twilight'),
								('Enemy Without A Goal'),
								('History With Honor');

INSERT INTO [Address] (City,Country) VALUES ('Baku','Azerbaijan'),
											('Vienna','Austria'),
											('Prague','Czech Republic'),
											('London','UK'),
											('Madrid','Spain');

INSERT INTO Author ([Name],Age,[Address],BookName,CompanyName) VALUES ('Paul Auster',18,1,1,'Ali&Nino'),
																	  ('James Baldwin',20,2,2,'Book Agency'),
																	  ('Beatrix Potter',22,3,3,'Read&GO'),
																	  ('Mikhail Bulgakov',24,4,4,'Booking'),
																	  ('Franz Kafka',26,5,5,'BookXana');

SELECT * FROM [Address] a INNER JOIN Book b ON b.ID=a.ID and b.Name='Sefiller';