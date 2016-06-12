# 二重ループの発展形

i = 0						# 外ループ
while i < 5					#
	
	print "i=#{i} "			# iの値を表示
	
	j = 0					# 内ループ
	while j <= i			# j の繰り返し回数は i で変化する
	
		print "*"
		
		j += 1				# jを +1
	end
	
	puts 					# 改行のみ
	
	i += 1					# iを +1
end

#=> *
#=> **
#=> ***
#=> ****
#=> *****
