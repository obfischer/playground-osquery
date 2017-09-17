--
-- Find all processes running as user root
--

select      p.pid, p.parent, p.name, p.uid, u.username
from        processes p
inner join  users u on p.uid = u.uid where u.uid = 0
order by    p.parent desc, p.pid desc;

