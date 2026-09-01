# Part b

result1=punif(100, min=56, max=216, lower.tail=TRUE)
result2=punif(200, min=56, max=216, lower.tail=TRUE)
prob=result2-result1
list(result2,result1,prob)

# Part c

resultc=punif(150, min=56, max=216, lower.tail=FALSE)
list(resultc)

# Part d

resultd=punif(80, min=56, max=216, lower.tail=TRUE)
list(resultd)

 