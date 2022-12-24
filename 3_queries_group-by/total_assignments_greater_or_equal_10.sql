SELECT day, count(*) as total_assigments 
from assignments 
group by day 
HAVING COUNT(*)>9 
ORDER BY day ASC;