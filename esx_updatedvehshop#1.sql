USE `es_extended`;

DELETE FROM `vehicle_categories` WHERE name IN ('sedans', 'compacts');

DELETE FROM `vehicles` WHERE model IN ('rumpo', 'stromberg', 'deluxo', 'ardent', 'oppressor', 'blazer5', 'ruiner2', 'voltic', 'monster');

UPDATE `vehicles`
SET price =
	case model
   	when 'dune' then 200000
	when 'guardian' then 400000
	when 'kuruma' then 2000000
	when 'schafter3' then 2000000
	when 'sultan' then 1500000
	when 'adder' then 1000000
	when 'banshee2' then 1000000
	when 'bullet' then 1000000
	when 'cheetah' then 1500000
	when 'entityxf' then 1500000
	when 'sheava' then 1500000
	when 'fmj' then 1500000
	when 'infernus' then 1000000
	when 'osiris' then 1500000
	when 'pfister811' then 1000000
	when 'le7b' then 1000000
	when 'neon' then 2500000
	else 0
end
where model IN (
	'dune', 
	'guardian', 
	'kuruma', 
	'schafter3', 
	'sultan', 
	'adder', 
	'banshee2', 
	'bullet', 
	'cheetah', 
	'entityxf', 
	'sheava', 
	'fmj', 
	'infernus', 
	'osiris', 
	'pfister811', 
	'le7b', 
	'neon'
);

UPDATE `vehicles` SET category='super' where model='stretch';
