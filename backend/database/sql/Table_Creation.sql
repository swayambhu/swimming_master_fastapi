CREATE TABLE members(
	id INT AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
    dob DATE NOT NULL,
    gender ENUM('MALE', 'FEMALE', 'OTHERS') NOT NULL,
    blood_group ENUM('A+','A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-'),
    street_address VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50),
    phone_no BIGINT NOT NULL,
    email VARCHAR(50) NOT NULL,
    INDEX(phone_no, email),
    UNIQUE(phone_no, email),
    PRIMARY KEY(id)
);

CREATE TABLE clubs_or_organisations(
	id INT AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    street_address VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50),
    contact_no BIGINT NOT NULL,
    email_id VARCHAR(50) NOT NULL,
    logo BLOB,
    INDEX(contact_no, email_id),
    UNIQUE(contact_no, email_id),
    PRIMARY KEY(id)
);

CREATE TABLE tournaments(
	id  INT AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE tournament_details(
	id INT AUTO_INCREMENT,
    version INT NOT NULL,
    street_address VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50),
    host_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    tournament_id INT NOT NULL,
    CHECK(start_date < end_date),
    PRIMARY KEY(id),
    FOREIGN KEY (host_id) REFERENCES clubs_or_organisations(id),
    FOREIGN KEY (tournament_id) REFERENCES tournaments(id)
);

CREATE TABLE role(
	id INT AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    PRIMARY KEY(id),
    UNIQUE(name),
    INDEX(name)
);

CREATE TABLE member_role(
	id INT AUTO_INCREMENT,
    member_id INT NOT NULL,
    role_id INT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(member_id) REFERENCES members(id),
    FOREIGN KEY(role_id) REFERENCES role(id)
);

CREATE TABLE strokes_styles(
	id INT AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    PRIMARY KEY(id),
    UNIQUE(name),
    INDEX(name)
);

CREATE TABLE distance(
	id INT AUTO_INCREMENT,
    value INT NOT NULL,
    PRIMARY KEY(id),
    UNIQUE(value),
    INDEX(value)
);

CREATE TABLE age_groups(
	id INT AUTO_INCREMENT,
    value INT NOT NULL,
    PRIMARY KEY(id),
    UNIQUE(value),
    INDEX(value)
);


