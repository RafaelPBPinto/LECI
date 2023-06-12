
CREATE TABLE Voos_Airports   (
	[city] varchar(255) NOT NULL,
	[state] varchar(255) NOT NULL,
	[name] varchar(255) NOT NULL,
	[airport_code] INT NOT NULL,
    [arrival_time] DATE NOT NULL,
    [departure_time] DATE NOT NULL,
	PRIMARY KEY ([airport_code]),


);

CREATE TABLE Voos_AirplaneType(
    [type_name] varchar(255) NOT NULL,
    [company] varchar(255) NOT NULL,
    [max_seats] INT NOT NULL CHECK ([max_seats] > 0),
    PRIMARY KEY ([type_name])
);

CREATE TABLE Voos_Can_Land(
    [airport_code] INT NOT NULL ,
    [type_name] varchar(255) NOT NULL ,
    PRIMARY KEY ([airport_code],[type_name]),
    FOREIGN KEY ([airport_code]) REFERENCES Voos_Airports([airport_code]),
    FOREIGN KEY ([type_name]) REFERENCES Voos_AirplaneType([type_name])
);

CREATE TABLE Voos_Airplane(
    [airplane_id] INT NOT NULL ,
    [total_no_of_seats] INT NOT NULL CHECK ([total_no_of_seats] > 0),
    [type_name_airplanetype] varchar(255) NOT NULL,
    PRIMARY KEY ([airplane_id]),
    FOREIGN KEY ([type_name_airplanetype]) REFERENCES Voos_AirplaneType([type_name])
);

CREATE TABLE Voos_Flight(
    [number] INT NOT NULL ,
    [weekdays] varchar(50) NOT NULL,
    [airline] varchar(255) NOT NULL,
    PRIMARY KEY ([number])
);

CREATE TABLE Voos_Fare(
    [code] INT NOT NULL,
    [amount] varchar(250) NOT NULL,
    [restrictions] varchar(250) NOT NULL,
    [number_flight] INT NOT NULL,
    PRIMARY KEY ([code],[number_flight]),
    FOREIGN KEY ([number_flight]) REFERENCES Voos_Flight([number])
);

CREATE TABLE Voos_FlightLeg(
    [leg_no] INT NOT NULL,
    [sched_departure_time] DATE NOT NULL,
    [sched_arrival_time] DATE NOT NULL,
    [number_flight] INT NOT NULL,
    PRIMARY KEY ([leg_no],[sched_departure_time],[sched_arrival_time],[number_flight]),
    FOREIGN KEY ([number_flight]) REFERENCES Voos_Flight([number])
    
);



CREATE TABLE Voos_LegInstance(
    [leg_no] INT NOT NULL,
    [sched_departure_time] DATE NOT NULL,
    [sched_arrival_time] DATE NOT NULL,
    [number_flight] INT NOT NULL,
    [date] DATE NOT NULL,
    [no_avail_seats] INT NOT NULL CHECK ([no_avail_seats] >= 0),
    [airplane_id] INT NOT NULL, 
    PRIMARY KEY ([leg_no],[sched_departure_time],[sched_arrival_time],[number_flight],[date],[airplane_id]),
    FOREIGN KEY ([leg_no],[sched_departure_time],[sched_arrival_time],[number_flight]) REFERENCES Voos_FlightLeg([leg_no],[sched_departure_time],[sched_arrival_time],[number_flight]),
    FOREIGN KEY ([airplane_id]) REFERENCES Voos_Airplane([airplane_id])
);

CREATE TABLE Voos_Seat(
    [leg_no] INT NOT NULL,
    [sched_departure_time] DATE NOT NULL,
    [sched_arrival_time] DATE NOT NULL,
    [number_flight] INT NOT NULL,
    [date] DATE NOT NULL,
    [airplane_id] INT NOT NULL, 
    [seat_no] INT NOT NULL,
    PRIMARY KEY ([leg_no],[sched_departure_time],[sched_arrival_time],[number_flight],[date],[airplane_id],[seat_no]),
    FOREIGN KEY ([leg_no],[sched_departure_time],[sched_arrival_time],[number_flight],[date],[airplane_id]) REFERENCES Voos_LegInstance([leg_no],[sched_departure_time],[sched_arrival_time],[number_flight],[date],[airplane_id]),

    

);