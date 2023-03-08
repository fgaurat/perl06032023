#!/usr/bin/perl
use DBI;

# Connect to database
my $dbh = DBI->connect("dbi:SQLite:dbname=test.db","","");

# Create table
$dbh->do("CREATE TABLE IF NOT EXISTS mytable (id INTEGER PRIMARY KEY, name TEXT, age INTEGER)");

# Insert some data
$dbh->do("INSERT INTO mytable (name, age) VALUES ('Alice', 25)");
$dbh->do("INSERT INTO mytable (name, age) VALUES ('Bob', 30)");

# Execute a SELECT query
my $sth = $dbh->prepare("SELECT * FROM mytable");
$sth->execute();

# Print results
while (my $row = $sth->fetchrow_hashref()) {
    print "ID: $row->{id}, Name: $row->{name}, Age: $row->{age}\n";
}

# Disconnect from database
$dbh->disconnect();

