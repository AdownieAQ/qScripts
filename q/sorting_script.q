

//Testing
/a:5
/\v

//Input 3 params -- Param1 = file	--Param2 = Asc/Desc	--Param3 = name & location of new txt file

dict:(.Q.opt [.z.x])
file:dict[`file]
order:dict[`order]
name:dict[`name]

sort:value order[0]

sorted_file: sort file

save `:sorted_file.csv
name, ".csv" set sorted_file

exit 0;
