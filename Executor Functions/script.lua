e,c,a,g=tostring(identifyexecutor()),0,{},getgenv()
for i,_ in pairs(g)do c+=1 a[c]=i..'\n'end
o=table.concat(a)
writefile(e..'.txt','-- '..e..' executor functions\n\n'..o)