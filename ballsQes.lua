---------------解决12颗小球问题-----------------------------
--12颗小球中有一颗重量不一样,且不知道它是更重还是更轻,---------
--用天平称量最多三次找出它并确定其是更重还是更轻---------------
--请给出一个数字类型为KEY的连续表，相当于是12颗小球
--请随意修改此表的12个数值，保证有且只有一个数值与其他十一个不一样，然后进行测试，

--菜鸟们可以将所以代码复制到 https://c.runoob.com/compile/66 即可运行测试

local allBalls = {0,0,0,5,0,0,0,0,0,0,0,0}

function mainQes()
	local x = allBalls[1] + allBalls[2] + allBalls[3] + allBalls[4]
	local y = allBalls[5] + allBalls[6] + allBalls[7] + allBalls[8]



	local ddayy = function ()
		x = allBalls[5] + allBalls[6] + allBalls[7] + allBalls[4]
		y = allBalls[9] + allBalls[10] + allBalls[11] + allBalls[8]
		local ddayy2 = function ()
			local resultStr =""
			local da = function ()
				resultStr = "第4个值与其他值不一样，" .. "且其值比其他值更大," .. "其值为：" .. allBalls[4]
				print(resultStr);
			end
			local x = function ()

				resultStr = "不可能变成小于 除非12个值当中不止一个值与其他值不一样"
				print(resultStr);
			end
			local d = function ()
				resultStr = "第8个值与其他值不一样，" .. "且其值比其他值更小," .. "其值为：" .. allBalls[8]
				print(resultStr);
			end

			balance(allBalls[4],allBalls[1],da,x,d)
		end
		local xxyy2 = function ()
			threeToResult(5,6,7,false);
		end
		local ddyy2 = function ()
			threeToResult(1,2,3,true);
		end

		balance(x,y,ddayy2,xxyy2,ddyy2)

	end



	local xxyy = function ()
		x = allBalls[9] + allBalls[10] + allBalls[11] + allBalls[4]
		y = allBalls[1] + allBalls[2] + allBalls[3] + allBalls[8]
		local ddayy2 = function ()
			threeToResult(1,2,3,false);
		end
		local xxyy2 = function ()
			local resultStr =""
			local da = function ()
				resultStr = "不可能变成大于 除非12个值当中不止一个值与其他值不一样"
				print(resultStr);
			end
			local x = function ()
				resultStr = "第4个值与其他值不一样，" .. "且其值比其他值更小," .. "其值为：" .. allBalls[4]
				print(resultStr);
			end
			local d = function ()
				resultStr = "第8个值与其他值不一样，" .. "且其值比其他值更大," .. "其值为：" .. allBalls[8]
				print(resultStr);
			end
			balance(allBalls[4],allBalls[1],da,x,d)
		end
		local ddyy2 = function ()
			threeToResult(5,6,7,true);
		end

		balance(x,y,ddayy2,xxyy2,ddyy2)
	end


	local ddyy = function ()
		x = x - allBalls[4]
		y = allBalls[9] + allBalls[10] + allBalls[11]
		local ddayy1 = function ()
			threeToResult(9,10,11,false);
		end
		local xxyy1 = function ()
			threeToResult(9,10,11,true);
		end
		local ddyy1 = function ()
			local resultStr ="第12个值与其他值不一样，"
			local da = function ()
				resultStr = resultStr .. "且其值比其他值更小," .. "其值为：" .. allBalls[12]
				print(resultStr);
			end
			local x = function ()
				resultStr = resultStr .. "且其值比其他值更大," .. "其值为：" .. allBalls[12]
				print(resultStr);
			end
			local d = function ()
				resultStr = "不可能还等于了 除非12个值全一样"
				print(resultStr);

			end
			balance(allBalls[1],allBalls[12],da,x,d)
		end

		balance(x,y,ddayy1,xxyy1,ddyy1)
	end


	balance(x,y,ddayy,xxyy,ddyy)





end


--天平方法
function balance(a,b,dayFunc,xyFunc,dyFunc)
	print("调用一次打印一次，称了几次一目了然")
	if a>b then
		dayFunc()
	end
	if a==b then
		dyFunc()
	end
	if a<b then
		xyFunc()
	end
end

--当已经确定在某三个序号里的一个是要找的目标且知道了它是更大还是更小后 调下面这个方法
function threeToResult(A,B,C,isBig)
	local resultStr = ""
	if isBig then
		resultStr = "且其值比其他值更大,"
	else
		resultStr = "且其值比其他值更小,"
	end
	local dayu = function ()
		if isBig then
			resultStr = "第" .. A .. "个值与其他值不一样，" .. resultStr .. "其值为：" .. allBalls[A]
		else
			resultStr = "第" .. B .. "个值与其他值不一样，" .. resultStr .. "其值为：" .. allBalls[B]
		end
		print(resultStr);
	end
	local xiaoyu = function ()
		if isBig then
			resultStr = "第" .. B .. "个值与其他值不一样，" .. resultStr .. "其值为：" .. allBalls[B]
		else
			resultStr = "第" .. A .. "个值与其他值不一样，" .. resultStr .. "其值为：" .. allBalls[A]
		end
		print(resultStr);
	end
	local dengyu = function ()
		resultStr = "第" .. C .. "个值与其他值不一样，" .. resultStr .. "其值为：" .. allBalls[C]
		print(resultStr);
	end
	balance(allBalls[A],allBalls[B],dayu,xiaoyu,dengyu)

end
mainQes()

--菜鸟们可以将所有内容复制到 https://c.runoob.com/compile/66 即可运行测试
