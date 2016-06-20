# 円を描く

LINE = 9						# 定数（プログラム実行中に値が変わらない）大文字で記述する

count = 0

i = 0
while i < LINE

	j = 0
	while j < LINE
	
		if Math.sqrt( i*i + j*j ) <= LINE
			print "*"
			count += 1
		else
			print " "
		end
		
		j += 1
	end
	puts
	
	i += 1

end


# モンテカルロ法による円周率の近似値を計算してみる
pi =  4.0 * count / (LINE * LINE)
puts "PI = #{pi}"