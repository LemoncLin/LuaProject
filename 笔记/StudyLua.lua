 --[[

 print("Hello World��")

 a="���廪"
 b="������˫"
 c=100
 d=12.3

 print(a..b..c+d)


function   testFun(a,b)
do
	return a*b
end


	zz=testFun(100,2)

print(zz)
]]--

html=[[
<html>
<head></head>
<body>
    <a href="http://www.runoob.com/">����̳�</a>
</body>
</html>
]]

-- print(html)



--[[
str="123 456"
print ("�ַ���str�ĳ���: "..#str)

-- ֱ�ӳ�ʼ����
local  tbl1={}
local  tbl2= {"apple", "pear", "orange", "grape"}


print(#tbl2)
]]--




-- Lua ��ʾ�����ڶ���һ��������������ȡ�����û�������

-- ע��:�»��߼Ӵ�д��ĸ�ı�ʾ������ΪLua�ı�����Ҳ�������ġ�
-- Lua ������ʹ�������ַ��� @, $, �� % �������ʾ���� Lua ��һ�����ִ�Сд�ı�����ԡ�

--��õİ汾��
-- print(_VERSION)

							--ȫ�ֱ���
-- Ĭ������£�����������Ϊ��ȫ�ֵ�,ȫ�ֱ�������Ҫ��������һ��������ֵ�󼴴��������ȫ�ֱ���������һ��û�г�ʼ����ȫ�ֱ���Ҳ�������ֻ�����õ��Ľ���ǣ�nil��

--print(b)


--ɾ��һ��ȫ�ֱ�����ֻ��Ҫ��������ֵΪnil��


--Lua�Ƕ�̬�������ԣ�������Ҫ���Ͷ���,ֻ��ҪΪ������ֵ�� ֵ���Դ洢�ڱ����У���Ϊ�������ݻ������ء�

--8���������ͷֱ�Ϊ:
  -- nil:��Чֵ(���������ʽ���൱��false)
  -- boolean: ��������ֵ:false��true
  -- number :��ʾ˫���ȵ�ʵ������
  -- string :�ַ���
  -- function :��c����Lua��д�ĺ���
  -- userdata: ��ʾ����洢�ڱ����е�c���ݽṹ
  -- thread : ��ʾִ�еĶ����߳�  ����ִ��Эͬ����
  -- table : Lua�еı�����һ����������   �������������������ֻ������ַ���


--print(type("Hello world"))      --> string
--print(type(10.4*3))             --> number
--print(type(print))              --> function
--print(type(type))               --> function
--print(type(true))               --> boolean
--print(type(nil))                --> nil
--print(type(type(X)))			--> string

--[[
tab1 = { key1 = "��", key2 = "��", "��" }
for k, v in pairs(tab1)
do
    print(k .. " - " .. v)
end
print("-----------------------------")
tab1.key1 = nil
for k, v in pairs(tab1)
 do
    print(k .. " - " .. v)
end
]]--



--  # �������ַ����ĳ��ȣ������ַ���ǰ��
--len = "www.runoob.com"
--print(#len)


-- table(��)

-- ����һ���յ� table
--local tbl1 = {}

-- ֱ�ӳ�ʼ��
--local tbl2 = {"apple", "pear", "orange", "grape"}

--print(tbl2[2])




--����:
--[[
a = {}
a["key"] = "value"
key = 10    --��key��ֵ
a[key] = 22  --��ֵvalue
a[key] = a[key] + 11   --��ֵvalue
for k, v in pairs(a)
do
    print(k .. " : " .. v)
end
]]--



--��ͬ���������Ե������ 0 ��Ϊ����ĳ�ʼ�������� Lua ����Ĭ�ϳ�ʼ����һ���� 1 ��ʼ��
--table ����̶����ȴ�С�������������ʱ table ���Ȼ��Զ�������û��ʼ�� table ���� nil��

--[[
local tbl = {"apple", "pear", "orange", "grape"}
for key, val in pairs(tbl)
do
    print("Key", key)
end
]]--



--function(����)

-- ������Ӿ���һ����������1*.....*n
--[[
function  factorial1(n)
	if(n==0)
		then
	 		return 1
	else
			return n*factorial1(n-1)
		end
end

	print(factorial1(5))
-- ������ǽ�������ֵ��һ������

	factorial2=factorial1
	print(factorial2(5))

function testFun(tab,fun)
    for k ,v in pairs(tab) do
        print(fun(k,v));
    end
end

]]--

-- ����������ʹ��
--[[
function testFun(tab,fun)
    for k ,v in pairs(tab)
	do
        print(fun(k,v));
    end
end


tab={key1="val1",key2="val2"};
testFun(tab,function(key,val)--��������
              return key.."="..val;
			end
)
]]--



-- thread(�߳�)

--����Ҫ���߳���Эͬ����coroutine���������̣߳�thread����࣬ӵ���Լ�������ջ���ֲ�������ָ��ָ�룬���Ը�����Эͬ������ȫ�ֱ����������󲿷ֶ�����

--�̸߳�Э�̵������߳̿���ͬʱ������У���Э������ʱ��ֻ������һ�������Ҵ�������״̬��Э��ֻ�б�����suspend��ʱ�Ż���ͣ��



--userdata (�Զ�������)

--userdata ��һ���û��Զ������ݣ����ڱ�ʾһ����Ӧ�ó���� C/C++ ���Կ������������ͣ����Խ����� C/C++ �������������͵����ݣ�ͨ���� struct �� ָ�룩�洢�� Lua �����е��á�

--[[
a=5   --ȫ�ֱ���
local b=5  --�ֲ�����


function  joke()
	c=1			--ȫ�ֱ���
	local d=6	--�ֲ�����
end
]]--


--Lua���ԶԶ������ͬʱ��ֵ �����б��ֵ�б�ĸ���Ԫ���ö��ŷֿ� ��ֵ����ұߵ�ֵ���θ�����ߵı���
--a,b=10,2*8x  <--> a=10; b=2*x

--������ֵ���Lua���ȼ����ұ����е�ֵȻ����ִ�и�ֵ����

--������������ֵ�ĸ�����һ��ʱ��Lua��һֱ�Ա�������Ϊ������ȡ���²���
--a. �������� > ֵ�ĸ���             ��������������nil
--b. �������� < ֵ�ĸ���             �����ֵ�ᱻ����


--��ֵ��ֵ�������������������򽫺������÷��ظ�����
--f()��������ֵ����һ������a���ڶ�������b��
	--	a, b = f()
--Ӧ�þ����ܵ�ʹ�þֲ��������������ô���

--1. ����������ͻ��
--2. ���ʾֲ��������ٶȱ�ȫ�ֱ������졣


				--����
--�� table ������ʹ�÷����� []��Lua Ҳ�ṩ�� . ������

--t[i]
--t.i                 -- ������Ϊ�ַ�������ʱ��һ�ּ�д��
--gettable_event(t,i) -- �����������ʱ�������һ�����������ĺ�������



--Lua�� 0 Ϊ true




-- Lua����   ��ʽ
--[[
--  ��ʾȫ�ֻ��߾ֲ�      				ָ����������
optional_function_scope   function   function_name( argument1, argument2, argument3..., argumentn)
    function_body					--=������
    return result_params_comma_separated   --����ֵ
end
]]--


--�෵��ֵ
--Lua�������Է��ض�����ֵ������string.find���䷵��ƥ�䴮"��ʼ�ͽ������±�"�����������ƥ�䴮����nil����

--s,e=string.find("www.runoob.com","runoob")

--print(s,e)


--���ض������ֵ��д��

--[[
function maximum (a)
    local mi = 1             -- ���ֵ����
    local m = a[mi]          -- ���ֵ
    for i,val in ipairs(a) do
       if val > m then
           mi = i
           m = val
       end
    end
    return m, mi
end
]]--



--�ɱ����
--Lua �������Խ��ܿɱ���Ŀ�Ĳ������� C �������ƣ��ں��������б���ʹ������ ... ��ʾ�����пɱ�Ĳ�����
--[[
function average(...)
   result = 0
   local arg={...}    --> arg Ϊһ�����ֲ�����
   for i,v in ipairs(arg) do
      result = result + v
   end
   print("�ܹ����� " .. #arg .. " ����")    --  select("#",...)   һ����
   return result/#arg
end

print("ƽ��ֵΪ",average(10,5,3,4,5,6))
]]--

--[[
function fwrite(fmt, ...)  ---> �̶��Ĳ���fmt
    return io.write(string.format(fmt, ...))
end

fwrite("runoob\n")       --->fmt = "runoob", û�б䳤������
fwrite("%d%d\n", 1, 2)   --->fmt = "%d%d", �䳤����Ϊ 1 �� 2


]]--



--select('#', ��) ���ؿɱ�����ĳ���
--select(n, ��) ���ڷ��� n �� select('#',��) �Ĳ���
--[[
 function foo(...)
        for i = 1, select('#', ...) do  -->��ȡ��������
            local arg = select(i, ...); -->��ȡ����
            print("arg", arg);
        end
    end

]]--


-- ..   ���������ַ���
-- #     �����ַ������ĳ���
-- not   �߼���  ���߼��������෴   eg:   not(A  and  B)


--��������ȼ�
--[[

^
not    - (unary)
*      /
+      -
..
<      >      <=     >=     ~=     ==
and
or

]]--





--Lua����

-- һά����

-- ���������ֵ�������Ǹ���ֵ
--[[
array = {}
for i= -2, 2 do
   array[i] = i *2
end
for i = -2,2 do
   print(array[i])
end


���:
-4
-2
0
2
4

]]--


--��ά����   ��ά���鼴�����а��������һά�������������Ӧһ�����顣

--[[

array = {}
for i=1,3 do
   array[i] = {}
      for j=1,3 do
         array[i][j] = i*j
      end
end

-- ��������
for i=1,3 do
   for j=1,3 do
      print(array[i][j])
   end
end

]]--


--Lua������

--����for������

--��������У�k, vΪ�����б�pairs(t)Ϊ���ʽ�б�
--[[
array = {"Lua", "Tutorial"}

for key,value in ipairs(array)
do
   print(key, value)
end
]]--




--��״̬�������ĵ��͵ļ򵥵�������ipairs   ???


--��״̬�ĵ�����    ???����̫��



--table(��)�Ľṹ
-- ��ʼ����
--mytable = {}

-- ָ��ֵ
--mytable[1]= "Lua"

-- �Ƴ�����
--mytable = nil
-- lua �������ջ��ͷ��ڴ�


												-- Table����



--Table ����:

--fruits = {"banana","orange","apple"}
-- ���� table ���Ӻ���ַ���
--print("���Ӻ���ַ��� ",table.concat(fruits))   -->���Ӻ���ַ���     bananaorangeapple

-- ָ�������ַ�
--print("���Ӻ���ַ��� ",table.concat(fruits,", "))   -->���Ӻ���ַ���     banana, orange, apple

-- ָ������������ table
--print("���Ӻ���ַ��� ",table.concat(fruits,", ", 2,3))  -->���Ӻ���ַ���     orange, apple


--����� �Ƴ�

--[[
fruits = {"banana","orange","apple"}

-- ��ĩβ����
table.insert(fruits,"mango")
print("����Ϊ 4 ��Ԫ��Ϊ ",fruits[4])

-- ������Ϊ 2 �ļ�������
table.insert(fruits,2,"grapes")
print("����Ϊ 2 ��Ԫ��Ϊ ",fruits[2])

print("���һ��Ԫ��Ϊ ",fruits[5])

table.remove(fruits)
print("�Ƴ������һ��Ԫ��Ϊ ",fruits[5])

]]--


--Table����

--[[
fruits = {"banana","orange","apple","grapes"}
print("����ǰ")
for k,v in ipairs(fruits) do
    print(k,v)
end

table.sort(fruits)
print("�����")
for k,v in ipairs(fruits) do
    print(k,v)
end

]]--


--Table����ֵ
--[[
function table_maxn(t)
  local mn=nil;
  for k, v in pairs(t) do
    if(mn==nil) then
      mn=v
    end
    if mn < v then
      mn = v
    end
  end
  return mn
end
tbl = {[1] = 2, [2] = 6, [3] = 34, [26] =5}
print("tbl ���ֵ��", table_maxn(tbl))
print("tbl ���� ", #tbl)

]]--


--ע��: ��ȡ table �ĳ��ȵ�ʱ��������ʹ�� # ���� table.getn �䶼���������жϵĵط�ֹͣ�������������޷���ȷȡ�� table �ĳ��ȡ�

--[[

function table_leng(t)
  local leng=0
  for k, v in pairs(t)
  do
    leng=leng+1
  end
  return leng;
end

]]--



											--Luaģ�����
--Lua ��ģ�����ɱ�������������֪Ԫ����ɵ� table



--[[

-- ����һ����Ϊ module ��ģ��
module = {}

-- ����һ������
module.constant = "����һ������"

-- ����һ������
function module.func1()
    io.write("����һ�����к�����\n")
end

local function func2()
    print("����һ��˽�к�����")
end

function module.func3()
    func2()
end

return module

]]--


-- require ����

--Lua�ṩ��һ����Ϊrequire�ĺ�����������ģ��

--[[
require("<ģ����>")
����
require "<ģ����>"
]]--



-- module ģ��Ϊ�����ᵽ�� module.lua
-- �������� m
--local m = require("module")

--print(m.constant)

--m.func3()


-- ���ػ���   �����ر�����

--require �������� Lua �ļ���·���Ǵ����ȫ�ֱ��� package.path �У��� Lua �����󣬻��Ի������� LUA_PATH ��ֵ����ʼ����������������û���ҵ��û�����������ʹ��һ������ʱ�����Ĭ��·������ʼ����

--���û�� LUA_PATH �������������Ҳ�����Զ������ã��ڵ�ǰ�û���Ŀ¼�´� .profile �ļ���û���򴴽����� .bashrc �ļ�Ҳ���ԣ�������� "~/lua/" ·������ LUA_PATH ���������

--#LUA_PATH
--export LUA_PATH="~/lua/?.lua;;"



--Ԫ��

--mytable = {}                          -- ��ͨ��
--mymetatable = {}                      -- Ԫ��
--setmetatable(mytable,mymetatable)     -- �� mymetatable ��Ϊ mytable ��Ԫ��



--     _indexԪ����

-- _indexԪ�����鿴����Ԫ���Ƿ����,���������,���ؽ��Ϊnil  �����������_index���ؽ��


--  __newindex Ԫ���������Ա���£�__index�������Ա���� ��

-- �Զ�������������ֵ���� table_maxn����������Ԫ�ظ���



--[[
	function table_maxn(t)
		local mn = 0
		for k, v in pairs(t) do
			if mn < k then
				mn = k
			end
		end
		return mn
	end


   mytable=setmetatable({1,2,3},{__add=function(mytable,newtable)
								for  i=1,table_maxn(newtable)    do
								table.insert(mytable,table_maxn(mytable)+1,newtable[i])
								end
								return  mytable
							end
   })

	secodtable={4,5,6}
	mytable=mytable+secodtable
			for  k,v in  ipairs(mytable) do
		print(k,v)

	end

]]--


-- __callԪ����

--  __callԪ������Lua����һ��ֵʱ����



--  __tostringԪ����   �����޸ı�������Ϊ






--  LuaЭͬ����

--  �����﷨:
--  coroutine.create()  ����coroutine ����coroutine,������һ������,����resume���ʹ�õ�ʱ��ͻ��Ѻ�������

--  coroutine.resume()   ����coroutine  ��create���ʹ��

--  coroutine.yield()   ����coroutine  ��coroutine����Ϊ����״̬  �����resume���ʹ�����кܶ����õ�Ч��

--  coroutine.status()  �鿴coroutine״̬   dead,suspend,running  ����״̬

--  coroutine.wrap()    ����coroutine  ����һ������  һ��������������  �ͽ���coroutine��create�����ظ�

--  coroutine.running()	 ���������ܵ�coroutine  һ��coroutine����һ���߳�  ��ʹ��running��ʱ��   ���Ƿ���һ��corouting���̺߳�

--[[

co = coroutine.create(
    function(i)
        print(i);
    end
)

coroutine.resume(co, 1)   -- 1
print(coroutine.status(co))  -- dead

print("----------")

co = coroutine.wrap(
    function(i)
        print(i);
    end
)

co(1)

print("----------")

co2 = coroutine.create(
    function()
        for i=1,10 do
            print(i)
            if i == 3 then
                print(coroutine.status(co2))  --running
                print(coroutine.running()) --thread:XXXXXX
            end
            coroutine.yield()
        end
    end
)

coroutine.resume(co2) --1
coroutine.resume(co2) --2
coroutine.resume(co2) --3

print(coroutine.status(co2))   -- suspended
print(coroutine.running())

print("----------")


]]--



--[[


function foo (a)
    print("foo �������", a)
    return coroutine.yield(2 * a) -- ����  2*a ��ֵ
end

co = coroutine.create(function (a , b)
    print("��һ��Эͬ����ִ�����", a, b) -- co-body 1 10
    local r = foo(a + 1)

    print("�ڶ���Эͬ����ִ�����", r)
    local r, s = coroutine.yield(a + b, a - b)  -- a��b��ֵΪ��һ�ε���Эͬ����ʱ����

    print("������Эͬ����ִ�����", r, s)
    return b, "����Эͬ����"                   -- b��ֵΪ�ڶ��ε���Эͬ����ʱ����
end)

print("main", coroutine.resume(co, 1, 10)) -- true, 4
print("--�ָ���----")
print("main", coroutine.resume(co, "r")) -- true 11 -9
print("---�ָ���---")
print("main", coroutine.resume(co, "x", "y")) -- true 10 end
print("---�ָ���---")
print("main", coroutine.resume(co, "x", "y")) -- cannot resume dead coroutine
print("---�ָ���---")


]]--


--                 ������-����������
--				ʹ��Эͬ��ʵ���������

--[[

local newProductor

function productor()
     local i = 0
     while true do
          i = i + 1
          send(i)     -- ����������Ʒ���͸�������
     end
end

function consumer()
     while true do
          local i = receive()     -- ������������õ���Ʒ
          print(i)
     end
end

function receive()
     local status, value = coroutine.resume(newProductor)
     return value
end

function send(x)
     coroutine.yield(x)     -- x��ʾ��Ҫ���͵�ֵ��ֵ�����Ժ󣬾͹����Эͬ����
end

-- ��������
newProductor = coroutine.create(productor)
consumer()

]]--




--                          I/O�ļ����������





--���ļ��������:
--					file=io.open(filename, mode)
--[[
--	mode��ֵ��:
				 r    ��ֻ����ʽ���ļ�  ���ļ��������
				 w	  ��ֻд�ļ� ���ļ��������ļ�������Ϊ0  �����ļ����ݻ���ʧ ���ļ��������������ļ�
				 a	  �Ը����ķ�ʽ��ֻд�ļ�.���ļ�������  ��Ὠ�����ļ�  ����ļ����� д������ݻᱻ�ӵ��ļ�β ���ļ�ԭ�ȵ����ݻᱻ����
				 r+	  �Կɶ�д��ʽ���ļ�,���ļ��������
				 w+	  �򿪿ɶ�д�ļ� ���ļ����ڳ�����Ϊ��   ���ļ����ݻ���ʧ  ���ļ��������������ļ�
				 a+   ��a���� �����ļ��ɶ���д
				 b	  ������ģʽ ����ļ��Ƕ������ļ�   ���Լ���b
				 +    �ű�ʾ���ļ��ȿ��Զ�Ҳ����д

]]--


--��ģʽ��simple model��	 ӵ��һ����ǰ�����ļ���һ����ǰ����ļ��������ṩ�����Щ�ļ���صĲ�����
--��ģʽ����һЩ�򵥵��ļ�����ʱ��Ϊ���ʡ������ڽ���һЩ�߼����ļ�������ʱ�򣬼�ģʽ���Ե���������
--[[
--Eg:
	-- ��ֻ����ʽ���ļ�
	file=io.open("testlua.lua","r")

	--����Ĭ�������ļ�Ϊ test.lua
	io.input(file)

	--����ļ���һ��
	print(io.read())

	--�رմ򿪵��ļ�
	io.close(file)

	--�Ը��ӵķ�ʽ��ֻд�ļ�
	file=io.open("testlua.lua","a")

	--����Ĭ������ļ�Ϊ  test.lua

	io.output(file)

	--���ļ����һ�����luaע��
	io.write("-- test.lua�ļ�ĩβע��")


	--�رմ򿪵��ļ�
	io.close(file)

]]--



--io.tmpfile():����һ����ʱ�ļ���������ļ��Ը���ģʽ�򿪣��������ʱ�Զ�ɾ��

--io.type(file): ���obj�Ƿ�һ�����õ��ļ����

--io.flush(): ���ļ�д�뻺���е���������

--io.lines(optional file name): ����һ����������,ÿ�ε��ý�����ļ��е�һ������,�����ļ�βʱ��������nil,�����ر��ļ�




--��ȫģʽ��complete model�� ʹ���ⲿ���ļ������ʵ�֡�����һ����Զ������ʽ�������е��ļ���������Ϊ�ļ�����ķ���

--ͨ��������Ҫ��ͬһʱ�䴦�����ļ���������Ҫʹ�� file:function_name ������ io.function_name ����
--[[
-- ��ֻ����ʽ���ļ�
file = io.open("test.lua", "r")

-- ����ļ���һ��
print(file:read())

-- �رմ򿪵��ļ�
file:close()

-- �Ը��ӵķ�ʽ��ֻд�ļ�
file = io.open("test.lua", "a")

-- ���ļ����һ����� Lua ע��
file:write("--test")

-- �رմ򿪵��ļ�
file:close()
]]--


--										Lua������


-- �﷨����  ���д���   assert �� error ���������

-- assert����
--  assert(type(a) == "number", "a ����һ������")

-- error����

--  error(mess [,level])


--Level����ָʾ��ô����λ��:
--
--	Level=1[Ĭ��]��Ϊ����errorλ��(�ļ�+�к�)
--	Level=2��ָ���ĸ�����error�ĺ����ĺ���
--	Level=0:����Ӵ���λ����Ϣ



--										Lua����(Debug)

--  ��������ĵ��Ժ���  ���õ���14��   ʹ��ʱ���ٲ�




--										Lua��������

--  Lua �������Զ��ڴ����

--[[
collectgarbage("collect"): ��һ�������������ռ�ѭ����ͨ������ opt ���ṩ��һ�鲻ͬ�Ĺ��ܣ�

collectgarbage("count"): �� K �ֽ���Ϊ��λ���� Lua ʹ�õ����ڴ����� ���ֵ��С�����֣�����ֻ��Ҫ���� 1024 ���ܵõ� Lua ʹ�õ�׼ȷ�ֽ����������������

collectgarbage("restart"): ���������ռ������Զ����С�

collectgarbage("setpause"): �� arg ��Ϊ�ռ����� ��Ъ�� ���μ� ��2.5���� ���� ��Ъ�� ��ǰһ��ֵ��

collectgarbage("setstepmul"): ���� �������� ��ǰһ��ֵ��

collectgarbage("step"): �������������ռ����� ����"��С"�� arg ���ơ� ���� 0 ʱ���ռ������������ɷָ�ģ�һ���� ����� 0 ֵ�� �ռ����ռ��൱�� Lua ������Щ�ࣨK �ֽڣ��ڴ�Ĺ����� ����ռ�������һ��ѭ�������� true ��

collectgarbage("stop"): ֹͣ�����ռ��������С� �ڵ�������ǰ���ռ���ֻ������ʽ�ĵ������С�
]]--


--[[
mytable = {"apple", "orange", "banana"}

print(collectgarbage("count"))

mytable = nil

print(collectgarbage("count"))

print(collectgarbage("collect"))

print(collectgarbage("count"))

]]--




--												Lua�������


--Lua�е������ͨ��table+functionģ�����


-- һ������ʵ��

--[[
-- Meta class
Rectangle = {area = 0, length = 0, breadth = 0}     --����һ����

-- ������ķ��� new
function Rectangle:new (o,length,breadth)
  o = o or {}
  setmetatable(o, self)
  self.__index = self
  self.length = length or 0
  self.breadth = breadth or 0
  self.area = length*breadth;
  return o
end

-- ������ķ��� printArea
function Rectangle:printArea ()
  print("�������Ϊ ",self.area)
end



-- ��������
 r=Rectangle:new(nil,10,20)


--��������
 print(r.length)
 print(r.area)

 ]]--





 --����ʵ��

 --[[

 -- Meta class
Shape = {area = 0}

-- �����෽�� new
function Shape:new (o,side)
  o = o or {}
  setmetatable(o, self)   -- Ԫ�����
  self.__index = self
  side = side or 0
  self.area = side*side;
  return o
end

-- �����෽�� printArea
function Shape:printArea ()
  print("���Ϊ ",self.area)
end

-- ��������
myshape = Shape:new(nil,10)

myshape:printArea()


--���:   ���Ϊ     100

]]--



--Lua�̳�

--[[

 -- Meta class
Shape = {area = 0}
-- �����෽�� new
function Shape:new (o,side)
  o = o or {}
  setmetatable(o, self)
  self.__index = self
  side = side or 0
  self.area = side*side;
  return o
end
-- �����෽�� printArea
function Shape:printArea ()
  print("���Ϊ ",self.area)
end
--��������ʵ����Square ����̳��� Shape ��:

Square = Shape:new()   --�����̳�???
-- Derived class method new
function Square:new (o,side)
  o = o or Shape:new(o,side)
  setmetatable(o, self)
  self.__index = self
  return o
end


]]--


--  ����ʵ��   ʵ�����Ǽ̳���һ���򵥵��࣬����չ������ķ������������б����˼̳���ĳ�Ա�����ͷ���
--[[
 -- Meta class
Shape = {area = 0}
-- �����෽�� new
function Shape:new (o,side)
  o = o or {}
  setmetatable(o, self)
  self.__index = self
  side = side or 0
  self.area = side*side;
  return o
end
-- �����෽�� printArea
function Shape:printArea ()
  print("���Ϊ ",self.area)
end



-- ��������
myshape = Shape:new(nil,10)
myshape:printArea()

Square = Shape:new()
-- �����෽�� new
function Square:new (o,side)
  o = o or Shape:new(o,side)
  setmetatable(o, self)
  self.__index = self
  return o
end

-- �����෽�� printArea
function Square:printArea ()
  print("���������Ϊ ",self.area)
end



-- ��������
mysquare = Square:new(nil,10)
mysquare:printArea()

Rectangle = Shape:new()
-- �����෽�� new
function Rectangle:new (o,length,breadth)
  o = o or Shape:new(o)
  setmetatable(o, self)
  self.__index = self
  self.area = length * breadth
  return o
end

-- �����෽�� printArea
function Rectangle:printArea ()
  print("�������Ϊ ",self.area)
end

-- ��������
myrectangle = Rectangle:new(nil,10,20)
myrectangle:printArea()


]]--




-- ������д

-- �����෽�� printArea
---function Square:printArea ()
--  print("��������� ",self.area)
--end





--                      Lua���ݿ����


-- ע����Ҫ��װ���ݿ����������

--[[


luasql = require "luasql.mysql"    --Lua5.2֮�����Ҫʹ�ñ������淵��ֵ ��Ϊrequire���ٶ���ȫ�ֱ���

--������������
env = luasql.mysql()

--�������ݿ�
conn = env:connect("���ݿ���","�û���","����","IP��ַ",�˿�)

--�������ݿ�ı����ʽ
conn:execute"SET NAMES UTF8"

--ִ�����ݿ����
cur = conn:execute("select * from role")

row = cur:fetch({},"a")

--�ļ�����Ĵ���
file = io.open("role.txt","w+");

while row do
    var = string.format("%d %s\n", row.id, row.name)

    print(var)

    file:write(var)

    row = cur:fetch(row,"a")
end


file:close()  --�ر��ļ�����
conn:close()  --�ر����ݿ�����
env:close()   --�ر����ݿ⻷��


]]--




















