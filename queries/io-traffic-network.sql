--
-- This query returns the current traffic on all network
-- devices, only the loopback device will not be reported.
--

select  d.interface, d.ipackets, d.opackets,
        d.ibytes/1024 as 'kB in', d.ibytes/1024/1024 as 'MB in',
        d.obytes/1024 as 'kB out', d.obytes/1024/1024 as 'MB out'
from    interface_details d
where   d.interface not in ('lo');
