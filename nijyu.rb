# 二重ループ

i = 0					# 外側ループは i で制御
while i < 5				#

	j = 0				# 内側ループは j で制御
	while j < 7			# 
		
		print "*"		# 改行せずに、表示する
		
		j += 1			# jを +1

	end
	
	puts				# 改行のみ
	
	i += 1				# iを +1
end
