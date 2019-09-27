##Functions
[HCL Functions Reference](https://www.terraform.io/docs/configuration/functions.html)

##Loops and Conditionals
##For loops
For loop (count.index)
Lab: Create 3 items
##Foreach loop
each.value
Each.key
##For expression
[for name in var.names : upper(name) if lenght(name) < 5]
[for name, role in var.hero_thousand_faces : “${name} is the ${role}”]
Conditionals <CONDITION> ? <TRUE> : <FALSE>
Use in a count attribute to conditionally create
If/else type logic accomplished by inverting the count criteria
