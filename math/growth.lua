getmetatable('').__index = function(str,i)
 if type(i) == 'number' then
  return string.sub(str,i,i)
 else
  return string[i]
 end
end

print("P = Ae^(K*T)")

io.write("P: "); P = io.read()
io.write("A: "); A = io.read()
io.write("T: "); T = io.read()

local l = tostring(P/A)
if #l > 5 then
 io.write("P/A: ")
 for i=1,6 do
  io.write(l[i])
 end
 io.write("\n")
else
 print("P/A: "..l)
end
K = tostring(math.log(P/A)/T)

local j = 4
local je = false
local temp = ""
for i=0,100 do
 if je == false then
  if K[i] == "." then
   je = true
  end
 elseif je == true and j > 0 then
  j = j - 1
 end
 temp = temp..K[i]
 if j == 0 then
  break
 end
end
K = tonumber(temp)

P = math.floor(A*math.exp(K*T))
print(P.." = "..A.."e^("..K.."*"..T..")")

io.write("change T: "); T = io.read()
P = math.floor(A*math.exp(K*T))
print(P.." = "..A.."e^("..K.."*"..T..")")
