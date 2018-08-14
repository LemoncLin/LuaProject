 --[[

 print("Hello World！")

 a="林清华"
 b="天下无双"
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
    <a href="http://www.runoob.com/">菜鸟教程</a>
</body>
</html>
]]

-- print(html)



--[[
str="123 456"
print ("字符串str的长度: "..#str)

-- 直接初始化表
local  tbl1={}
local  tbl2= {"apple", "pear", "orange", "grape"}


print(#tbl2)
]]--




-- Lua 标示符用于定义一个变量，函数获取其他用户定义的项。

-- 注意:下划线加大写字母的标示符，因为Lua的保留字也是这样的。
-- Lua 不允许使用特殊字符如 @, $, 和 % 来定义标示符。 Lua 是一个区分大小写的编程语言。

--获得的版本号
-- print(_VERSION)

							--全局变量
-- 默认情况下，变量总是认为是全局的,全局变量不需要声明，给一个变量赋值后即创建了这个全局变量，访问一个没有初始化的全局变量也不会出错，只不过得到的结果是：nil。

--print(b)


--删除一个全局变量，只需要将变量赋值为nil。


--Lua是动态类型语言，变量不要类型定义,只需要为变量赋值。 值可以存储在变量中，作为参数传递或结果返回。

--8个基本类型分别为:
  -- nil:无效值(在条件表达式中相当与false)
  -- boolean: 包含两个值:false和true
  -- number :表示双精度的实浮点数
  -- string :字符串
  -- function :由c或者Lua编写的函数
  -- userdata: 表示任意存储在变量中的c数据结构
  -- thread : 表示执行的独立线程  用于执行协同程序
  -- table : Lua中的表其是一个关联数组   关联的索引可以是数字或者是字符串


--print(type("Hello world"))      --> string
--print(type(10.4*3))             --> number
--print(type(print))              --> function
--print(type(type))               --> function
--print(type(true))               --> boolean
--print(type(nil))                --> nil
--print(type(type(X)))			--> string

--[[
tab1 = { key1 = "林", key2 = "清", "华" }
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



--  # 来计算字符串的长度，放在字符串前面
--len = "www.runoob.com"
--print(#len)


-- table(表)

-- 创建一个空的 table
--local tbl1 = {}

-- 直接初始表
--local tbl2 = {"apple", "pear", "orange", "grape"}

--print(tbl2[2])




--例子:
--[[
a = {}
a["key"] = "value"
key = 10    --给key赋值
a[key] = 22  --赋值value
a[key] = a[key] + 11   --赋值value
for k, v in pairs(a)
do
    print(k .. " : " .. v)
end
]]--



--不同于其他语言的数组把 0 作为数组的初始索引，在 Lua 里表的默认初始索引一般以 1 开始。
--table 不会固定长度大小，有新数据添加时 table 长度会自动增长，没初始的 table 都是 nil。

--[[
local tbl = {"apple", "pear", "orange", "grape"}
for key, val in pairs(tbl)
do
    print("Key", key)
end
]]--



--function(函数)

-- 这个例子就是一个方法迭代1*.....*n
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
-- 这里就是将方法赋值给一个变量

	factorial2=factorial1
	print(factorial2(5))

function testFun(tab,fun)
    for k ,v in pairs(tab) do
        print(fun(k,v));
    end
end

]]--

-- 匿名函数的使用
--[[
function testFun(tab,fun)
    for k ,v in pairs(tab)
	do
        print(fun(k,v));
    end
end


tab={key1="val1",key2="val2"};
testFun(tab,function(key,val)--匿名函数
              return key.."="..val;
			end
)
]]--



-- thread(线程)

--最主要的线程是协同程序（coroutine）。它跟线程（thread）差不多，拥有自己独立的栈、局部变量和指令指针，可以跟其他协同程序共享全局变量和其他大部分东西。

--线程跟协程的区别：线程可以同时多个运行，而协程任意时刻只能运行一个，并且处于运行状态的协程只有被挂起（suspend）时才会暂停。



--userdata (自定义类型)

--userdata 是一种用户自定义数据，用于表示一种由应用程序或 C/C++ 语言库所创建的类型，可以将任意 C/C++ 的任意数据类型的数据（通常是 struct 和 指针）存储到 Lua 变量中调用。

--[[
a=5   --全局变量
local b=5  --局部变量


function  joke()
	c=1			--全局变量
	local d=6	--局部变量
end
]]--


--Lua可以对多个变量同时赋值 变量列表和值列表的各个元素用逗号分开 赋值语句右边的值依次赋给左边的变量
--a,b=10,2*8x  <--> a=10; b=2*x

--遇到赋值语句Lua会先计算右边所有的值然后再执行赋值操作

--当变量个数和值的个数不一致时，Lua会一直以变量个数为基础采取以下策略
--a. 变量个数 > 值的个数             按变量个数补足nil
--b. 变量个数 < 值的个数             多余的值会被忽略


--多值赋值经常用来交换变量，或将函数调用返回给变量
--f()返回两个值，第一个赋给a，第二个赋给b。
	--	a, b = f()
--应该尽可能的使用局部变量，有两个好处：

--1. 避免命名冲突。
--2. 访问局部变量的速度比全局变量更快。


				--索引
--对 table 的索引使用方括号 []。Lua 也提供了 . 操作。

--t[i]
--t.i                 -- 当索引为字符串类型时的一种简化写法
--gettable_event(t,i) -- 采用索引访问本质上是一个类似这样的函数调用



--Lua中 0 为 true




-- Lua函数   格式
--[[
--  表示全局或者局部      				指定函数名称
optional_function_scope   function   function_name( argument1, argument2, argument3..., argumentn)
    function_body					--=函数体
    return result_params_comma_separated   --返回值
end
]]--


--多返回值
--Lua函数可以返回多个结果值，比如string.find，其返回匹配串"开始和结束的下标"（如果不存在匹配串返回nil）。

--s,e=string.find("www.runoob.com","runoob")

--print(s,e)


--返回多个返回值的写法

--[[
function maximum (a)
    local mi = 1             -- 最大值索引
    local m = a[mi]          -- 最大值
    for i,val in ipairs(a) do
       if val > m then
           mi = i
           m = val
       end
    end
    return m, mi
end
]]--



--可变参数
--Lua 函数可以接受可变数目的参数，和 C 语言类似，在函数参数列表中使用三点 ... 表示函数有可变的参数。
--[[
function average(...)
   result = 0
   local arg={...}    --> arg 为一个表，局部变量
   for i,v in ipairs(arg) do
      result = result + v
   end
   print("总共传入 " .. #arg .. " 个数")    --  select("#",...)   一样的
   return result/#arg
end

print("平均值为",average(10,5,3,4,5,6))
]]--

--[[
function fwrite(fmt, ...)  ---> 固定的参数fmt
    return io.write(string.format(fmt, ...))
end

fwrite("runoob\n")       --->fmt = "runoob", 没有变长参数。
fwrite("%d%d\n", 1, 2)   --->fmt = "%d%d", 变长参数为 1 和 2


]]--



--select('#', …) 返回可变参数的长度
--select(n, …) 用于访问 n 到 select('#',…) 的参数
--[[
 function foo(...)
        for i = 1, select('#', ...) do  -->获取参数总数
            local arg = select(i, ...); -->读取参数
            print("arg", arg);
        end
    end

]]--


-- ..   连接两个字符串
-- #     返回字符串或表的长度
-- not   逻辑非  与逻辑运算结果相反   eg:   not(A  and  B)


--运算符优先级
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





--Lua数组

-- 一维数组

-- 数组的索引值还可以是负数值
--[[
array = {}
for i= -2, 2 do
   array[i] = i *2
end
for i = -2,2 do
   print(array[i])
end


结果:
-4
-2
0
2
4

]]--


--多维数组   多维数组即数组中包含数组或一维数组的索引键对应一个数组。

--[[

array = {}
for i=1,3 do
   array[i] = {}
      for j=1,3 do
         array[i][j] = i*j
      end
end

-- 访问数组
for i=1,3 do
   for j=1,3 do
      print(array[i][j])
   end
end

]]--


--Lua迭代器

--泛型for迭代器

--上面代码中，k, v为变量列表；pairs(t)为表达式列表。
--[[
array = {"Lua", "Tutorial"}

for key,value in ipairs(array)
do
   print(key, value)
end
]]--




--无状态迭代器的典型的简单的例子是ipairs   ???


--多状态的迭代器    ???不是太懂



--table(表)的结构
-- 初始化表
--mytable = {}

-- 指定值
--mytable[1]= "Lua"

-- 移除引用
--mytable = nil
-- lua 垃圾回收会释放内存


												-- Table操作



--Table 连接:

--fruits = {"banana","orange","apple"}
-- 返回 table 连接后的字符串
--print("连接后的字符串 ",table.concat(fruits))   -->连接后的字符串     bananaorangeapple

-- 指定连接字符
--print("连接后的字符串 ",table.concat(fruits,", "))   -->连接后的字符串     banana, orange, apple

-- 指定索引来连接 table
--print("连接后的字符串 ",table.concat(fruits,", ", 2,3))  -->连接后的字符串     orange, apple


--插入和 移除

--[[
fruits = {"banana","orange","apple"}

-- 在末尾插入
table.insert(fruits,"mango")
print("索引为 4 的元素为 ",fruits[4])

-- 在索引为 2 的键处插入
table.insert(fruits,2,"grapes")
print("索引为 2 的元素为 ",fruits[2])

print("最后一个元素为 ",fruits[5])

table.remove(fruits)
print("移除后最后一个元素为 ",fruits[5])

]]--


--Table排序

--[[
fruits = {"banana","orange","apple","grapes"}
print("排序前")
for k,v in ipairs(fruits) do
    print(k,v)
end

table.sort(fruits)
print("排序后")
for k,v in ipairs(fruits) do
    print(k,v)
end

]]--


--Table最大的值
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
print("tbl 最大值：", table_maxn(tbl))
print("tbl 长度 ", #tbl)

]]--


--注意: 获取 table 的长度的时候无论是使用 # 还是 table.getn 其都会在索引中断的地方停止计数，而导致无法正确取得 table 的长度。

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



											--Lua模块与包
--Lua 的模块是由变量、函数等已知元素组成的 table



--[[

-- 定义一个名为 module 的模块
module = {}

-- 定义一个常量
module.constant = "这是一个常量"

-- 定义一个函数
function module.func1()
    io.write("这是一个公有函数！\n")
end

local function func2()
    print("这是一个私有函数！")
end

function module.func3()
    func2()
end

return module

]]--


-- require 函数

--Lua提供了一个名为require的函数用来加载模块

--[[
require("<模块名>")
或者
require "<模块名>"
]]--



-- module 模块为上文提到到 module.lua
-- 别名变量 m
--local m = require("module")

--print(m.constant)

--m.func3()


-- 加载机制   不是特别清晰

--require 用于搜索 Lua 文件的路径是存放在全局变量 package.path 中，当 Lua 启动后，会以环境变量 LUA_PATH 的值来初始这个环境变量。如果没有找到该环境变量，则使用一个编译时定义的默认路径来初始化。

--如果没有 LUA_PATH 这个环境变量，也可以自定义设置，在当前用户根目录下打开 .profile 文件（没有则创建，打开 .bashrc 文件也可以），例如把 "~/lua/" 路径加入 LUA_PATH 环境变量里：

--#LUA_PATH
--export LUA_PATH="~/lua/?.lua;;"



--元表

--mytable = {}                          -- 普通表
--mymetatable = {}                      -- 元表
--setmetatable(mytable,mymetatable)     -- 把 mymetatable 设为 mytable 的元表



--     _index元方法

-- _index元方法查看表中元素是否存在,如果不存在,返回结果为nil  如果存在则由_index返回结果


--  __newindex 元方法用来对表更新，__index则用来对表访问 。

-- 自定义计算表中最大键值函数 table_maxn，即计算表的元素个数



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


-- __call元方法

--  __call元方法在Lua调用一个值时调用



--  __tostring元方法   用于修改表的输出行为






--  Lua协同程序

--  基本语法:
--  coroutine.create()  创建coroutine 返回coroutine,参数是一个函数,当和resume配合使用的时候就唤醒函数调用

--  coroutine.resume()   重启coroutine  和create配合使用

--  coroutine.yield()   挂起coroutine  和coroutine设置为挂起状态  这个和resume配合使用能有很多有用的效果

--  coroutine.status()  查看coroutine状态   dead,suspend,running  三种状态

--  coroutine.wrap()    创建coroutine  返回一个函数  一旦你调用这个函数  就进入coroutine和create功能重复

--  coroutine.running()	 返回正在跑的coroutine  一个coroutine就是一个线程  当使用running的时候   就是返回一个corouting的线程号

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
    print("foo 函数输出", a)
    return coroutine.yield(2 * a) -- 返回  2*a 的值
end

co = coroutine.create(function (a , b)
    print("第一次协同程序执行输出", a, b) -- co-body 1 10
    local r = foo(a + 1)

    print("第二次协同程序执行输出", r)
    local r, s = coroutine.yield(a + b, a - b)  -- a，b的值为第一次调用协同程序时传入

    print("第三次协同程序执行输出", r, s)
    return b, "结束协同程序"                   -- b的值为第二次调用协同程序时传入
end)

print("main", coroutine.resume(co, 1, 10)) -- true, 4
print("--分割线----")
print("main", coroutine.resume(co, "r")) -- true 11 -9
print("---分割线---")
print("main", coroutine.resume(co, "x", "y")) -- true 10 end
print("---分割线---")
print("main", coroutine.resume(co, "x", "y")) -- cannot resume dead coroutine
print("---分割线---")


]]--


--                 生产者-消费者问题
--				使用协同来实现这个问题

--[[

local newProductor

function productor()
     local i = 0
     while true do
          i = i + 1
          send(i)     -- 将生产的物品发送给消费者
     end
end

function consumer()
     while true do
          local i = receive()     -- 从生产者那里得到物品
          print(i)
     end
end

function receive()
     local status, value = coroutine.resume(newProductor)
     return value
end

function send(x)
     coroutine.yield(x)     -- x表示需要发送的值，值返回以后，就挂起该协同程序
end

-- 启动程序
newProductor = coroutine.create(productor)
consumer()

]]--




--                          I/O文件输入输出流





--打开文件操作语句:
--					file=io.open(filename, mode)
--[[
--	mode的值有:
				 r    以只读方式打开文件  该文件必须存在
				 w	  打开只写文件 若文件存在则文件长度清为0  即该文件内容会消失 若文件不存在则建立该文件
				 a	  以附件的方式打开只写文件.若文件不存在  则会建立该文件  如果文件存在 写入的数据会被加到文件尾 即文件原先的内容会被保留
				 r+	  以可读写方式打开文件,该文件必须存在
				 w+	  打开可读写文件 若文件存在长度清为零   即文件内容会消失  若文件不存在则建立该文件
				 a+   与a类似 但此文件可读可写
				 b	  二进制模式 如果文件是二进制文件   可以加上b
				 +    号表示对文件既可以读也可以写

]]--


--简单模式（simple model）	 拥有一个当前输入文件和一个当前输出文件，并且提供针对这些文件相关的操作。
--简单模式在做一些简单的文件操作时较为合适。但是在进行一些高级的文件操作的时候，简单模式就显得力不从心
--[[
--Eg:
	-- 以只读方式打开文件
	file=io.open("testlua.lua","r")

	--设置默认输入文件为 test.lua
	io.input(file)

	--输出文件第一行
	print(io.read())

	--关闭打开的文件
	io.close(file)

	--以附加的方式打开只写文件
	file=io.open("testlua.lua","a")

	--设置默认输出文件为  test.lua

	io.output(file)

	--在文件最后一行添加lua注释
	io.write("-- test.lua文件末尾注释")


	--关闭打开的文件
	io.close(file)

]]--



--io.tmpfile():返回一个临时文件句柄，该文件以更新模式打开，程序结束时自动删除

--io.type(file): 检测obj是否一个可用的文件句柄

--io.flush(): 向文件写入缓冲中的所有数据

--io.lines(optional file name): 返回一个迭代函数,每次调用将获得文件中的一行内容,当到文件尾时，将返回nil,但不关闭文件




--完全模式（complete model） 使用外部的文件句柄来实现。它以一种面对对象的形式，将所有的文件操作定义为文件句柄的方法

--通常我们需要在同一时间处理多个文件。我们需要使用 file:function_name 来代替 io.function_name 方法
--[[
-- 以只读方式打开文件
file = io.open("test.lua", "r")

-- 输出文件第一行
print(file:read())

-- 关闭打开的文件
file:close()

-- 以附加的方式打开只写文件
file = io.open("test.lua", "a")

-- 在文件最后一行添加 Lua 注释
file:write("--test")

-- 关闭打开的文件
file:close()
]]--


--										Lua错误处理


-- 语法错误  运行错误   assert 和 error 来处理错误

-- assert函数
--  assert(type(a) == "number", "a 不是一个数字")

-- error函数

--  error(mess [,level])


--Level参数指示获得错误的位置:
--
--	Level=1[默认]：为调用error位置(文件+行号)
--	Level=2：指出哪个调用error的函数的函数
--	Level=0:不添加错误位置信息



--										Lua调试(Debug)

--  贼吉尔多的调试函数  常用的有14个   使用时候再查




--										Lua垃圾回收

--  Lua 采用了自动内存管理。

--[[
collectgarbage("collect"): 做一次完整的垃圾收集循环。通过参数 opt 它提供了一组不同的功能：

collectgarbage("count"): 以 K 字节数为单位返回 Lua 使用的总内存数。 这个值有小数部分，所以只需要乘上 1024 就能得到 Lua 使用的准确字节数（除非溢出）。

collectgarbage("restart"): 重启垃圾收集器的自动运行。

collectgarbage("setpause"): 将 arg 设为收集器的 间歇率 （参见 §2.5）。 返回 间歇率 的前一个值。

collectgarbage("setstepmul"): 返回 步进倍率 的前一个值。

collectgarbage("step"): 单步运行垃圾收集器。 步长"大小"由 arg 控制。 传入 0 时，收集器步进（不可分割的）一步。 传入非 0 值， 收集器收集相当于 Lua 分配这些多（K 字节）内存的工作。 如果收集器结束一个循环将返回 true 。

collectgarbage("stop"): 停止垃圾收集器的运行。 在调用重启前，收集器只会因显式的调用运行。
]]--


--[[
mytable = {"apple", "orange", "banana"}

print(collectgarbage("count"))

mytable = nil

print(collectgarbage("count"))

print(collectgarbage("collect"))

print(collectgarbage("count"))

]]--




--												Lua面向对象


--Lua中的类可以通过table+function模拟出来


-- 一个简单类实例

--[[
-- Meta class
Rectangle = {area = 0, length = 0, breadth = 0}     --定义一个表

-- 派生类的方法 new
function Rectangle:new (o,length,breadth)
  o = o or {}
  setmetatable(o, self)
  self.__index = self
  self.length = length or 0
  self.breadth = breadth or 0
  self.area = length*breadth;
  return o
end

-- 派生类的方法 printArea
function Rectangle:printArea ()
  print("矩形面积为 ",self.area)
end



-- 创建对象
 r=Rectangle:new(nil,10,20)


--访问属性
 print(r.length)
 print(r.area)

 ]]--





 --完整实例

 --[[

 -- Meta class
Shape = {area = 0}

-- 基础类方法 new
function Shape:new (o,side)
  o = o or {}
  setmetatable(o, self)   -- 元表操作
  self.__index = self
  side = side or 0
  self.area = side*side;
  return o
end

-- 基础类方法 printArea
function Shape:printArea ()
  print("面积为 ",self.area)
end

-- 创建对象
myshape = Shape:new(nil,10)

myshape:printArea()


--结果:   面积为     100

]]--



--Lua继承

--[[

 -- Meta class
Shape = {area = 0}
-- 基础类方法 new
function Shape:new (o,side)
  o = o or {}
  setmetatable(o, self)
  self.__index = self
  side = side or 0
  self.area = side*side;
  return o
end
-- 基础类方法 printArea
function Shape:printArea ()
  print("面积为 ",self.area)
end
--接下来的实例，Square 对象继承了 Shape 类:

Square = Shape:new()   --这样继承???
-- Derived class method new
function Square:new (o,side)
  o = o or Shape:new(o,side)
  setmetatable(o, self)
  self.__index = self
  return o
end


]]--


--  完整实例   实例我们继承了一个简单的类，来扩展派生类的方法，派生类中保留了继承类的成员变量和方法
--[[
 -- Meta class
Shape = {area = 0}
-- 基础类方法 new
function Shape:new (o,side)
  o = o or {}
  setmetatable(o, self)
  self.__index = self
  side = side or 0
  self.area = side*side;
  return o
end
-- 基础类方法 printArea
function Shape:printArea ()
  print("面积为 ",self.area)
end



-- 创建对象
myshape = Shape:new(nil,10)
myshape:printArea()

Square = Shape:new()
-- 派生类方法 new
function Square:new (o,side)
  o = o or Shape:new(o,side)
  setmetatable(o, self)
  self.__index = self
  return o
end

-- 派生类方法 printArea
function Square:printArea ()
  print("正方形面积为 ",self.area)
end



-- 创建对象
mysquare = Square:new(nil,10)
mysquare:printArea()

Rectangle = Shape:new()
-- 派生类方法 new
function Rectangle:new (o,length,breadth)
  o = o or Shape:new(o)
  setmetatable(o, self)
  self.__index = self
  self.area = length * breadth
  return o
end

-- 派生类方法 printArea
function Rectangle:printArea ()
  print("矩形面积为 ",self.area)
end

-- 创建对象
myrectangle = Rectangle:new(nil,10,20)
myrectangle:printArea()


]]--




-- 函数重写

-- 派生类方法 printArea
---function Square:printArea ()
--  print("正方形面积 ",self.area)
--end





--                      Lua数据库访问


-- 注意需要安装数据库的驱动环境

--[[


luasql = require "luasql.mysql"    --Lua5.2之后必须要使用变量保存返回值 因为require不再定义全局变量

--创建环境对象
env = luasql.mysql()

--连接数据库
conn = env:connect("数据库名","用户名","密码","IP地址",端口)

--设置数据库的编码格式
conn:execute"SET NAMES UTF8"

--执行数据库操作
cur = conn:execute("select * from role")

row = cur:fetch({},"a")

--文件对象的创建
file = io.open("role.txt","w+");

while row do
    var = string.format("%d %s\n", row.id, row.name)

    print(var)

    file:write(var)

    row = cur:fetch(row,"a")
end


file:close()  --关闭文件对象
conn:close()  --关闭数据库连接
env:close()   --关闭数据库环境


]]--




















