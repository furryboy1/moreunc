execName=identityexecutor()
count=0
array={}
for i,_ in pairs(getgenv())do count+=1 array[count]=i..'\n'end
out=table.concat(array)
writefile(execName..'.txt','-- '..execName..' executor functions\n\n'..out)