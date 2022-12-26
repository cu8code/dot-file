# shell
### AWK

$0 = print the entire line


q print number of lines present
`awk 'END {print NR}'`

q  using a csv file and print a particular row
`awk -F, '{print $4}' filename`

q conditions in awk
`awk '{if($3>5000)' print $0} filename `

q changing a prticular field
`awk '{if($2=="Pol"){$3=80000}' print $0} filename`

q print a line with the given in value in search result
`awk '/India/' filename`

q adding counter at the begenning of every line
`awk '{print NR $0}' filename`

q print for a given range
`awk 'NR==8, NR==10 {print $0}' filename`

q checking for a give value in a line and then print the line number
`awk 'NF==0 {print NR}' filename` 

q for loop and while loop
`awk 'BEGIN {for(i=0;i<=10;i++) print i}' ;`

`awk 'BEGIN {while(i<10)}{i++; print i}' ;`

### Cut

q to get the first ccharacter from a given number of line
`cut -c1 nams`

q to get the 1 & 5 ccharacter from a given number of line
`cut -c1,5 nams`

q to get the 1 to 5 ccharacter from a given number of line
`cut -c1-5 nams`

q to use delimeter and also replace 
`cut -d, -f 1- csvfile --output-delimeter=" | "`

### tr
replace character

q delet any a
`tr -d 'a'`

q replace a with A
`tr -d 'a' 'A'`

q transplate lowercase to uppercase
`tr '[:lowercase:]' '[:uppercase:]'`

q to remove repetation of c
`tr -s`

q delete anything that is not the give ccharacter
`tr -cd 'aeio'`

q only print prtable cahracter
`tr -cd '[:print:]'`


### grep

`grep regex filename`

q exact word
`grep -w regex filename`

q -A return the line that contains the regex + return  a specified  number of line  after
`grep -A 3 regex filename`

q -A return the line that contains the regex + return  a specified  number of line  before
`grep -B 3 regex filename`

q -A return the line that contains the regex + return  a specified  number of line  before and after
`grep -C 3 regex filename`

q case insensitiy 
`grep -i -C 3 regex filename`

-H prints the file name
-n prints the line number
-C counts the number of occurance

### sed

q print 1st line
`sed -n '1p' filename`

q print last line
`sed -n '$p' filename`

q prin in a range
`sed -n '2-4p' filename`

