schedulemap=containers.Map({'Mon','Tus','Wed','Thu','Fri'} , {'Math','Chinese','History','Geography','Biology'});
keys(schedulemap);
values(schedulemap);
course=schedulemap('Wed');
values(schedulemap,{'Mon','Wed'});
remove(schedulemap,'Fri');
schedulemap('Sat')='public';
keys(schedulemap)
values(schedulemap)