#Problem 175 SQL:
#Write an SQL query to report the first name, last name, city, and state of each person in the Person table.
#If the address of a PersonId is not present in the Address table, report null instead.
#Return the result table in any order.
#There is no address in the address table for the PersonId = 1 so we return null in their city and state.
#AddressId = 1 contains information about the address of PersonId = 2.
--------------------------------------------------
#Accepted Final Solution:
#Runtime: 336 ms, faster than 55.02% of MySQL online submissions for Combine Two Tables.
#Memory Usage: 0B, less than 100.00% of MySQL online submissions for Combine Two Tables.


SELECT person.FirstName, person.LastName, address.City, address.State
FROM person
LEFT OUTER JOIN address
ON person.PersonId = address.AddressId+1;

--------------------------------------------------


#Attempt1: This was really close to being correct, I just used INNER join instead of outer JOIN:
SELECT person.FirstName, person.LastName, address.City, address.State
FROM person, address
INNER JOIN
person.PersonId = address.AddressId+1;

--------------------------------------------------


