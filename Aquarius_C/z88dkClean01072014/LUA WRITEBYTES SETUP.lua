
function DEC_HEX(IN)
    local B,K,OUT,I,D=16,"0123456789ABCDEF","",0
    while IN>0 do
        I=I+1
        IN,D=math.floor(IN/B),math.fmod(IN,B)+1
        OUT=string.sub(K,D,D)..OUT
    end
    return OUT
end
n=100
for i=0,255 do
n=100+i
print("writeword("..n..",fpout);")
print('writestring('..'"REM'..i..'= 0x'..DEC_HEX(i)..'"'..',fpout);')
print("writebyte(0x"..DEC_HEX(i)..",fpout);")
end;



