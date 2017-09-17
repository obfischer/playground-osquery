--
-- Returns all users which are members of the group root
--

select  *
from    users u
where   u.gid = 0;
