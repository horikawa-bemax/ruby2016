# ポン・デ・リング

LINE = 99

R = LINE / 3.0								# リング全体の半径
S = LINE / 7.5								# 小さな円の半径

CX = LINE / 2.0								# リングの中心Ｘ
CY = LINE / 2.0								# リングの中心Ｙ

i = 0
while i < LINE

	j = 0
	while j < LINE

		flg = false							# 判定用フラグ
		
		k = 0
		while k < 8							# 小さい円8つ分の処理を実行する
		
			deg = k * Math::PI / 4			# 小さな円の中心位置の角度　 Math::PI は円周率　Math::PI/4 で45度を表す
			dx = CX + R * Math.cos(deg)-j	# 小さな円の中心からの距離（X軸）
			dy = CY + R * Math.sin(deg)-i	# 小さな円の中心からの距離（Y軸）
			
			if Math.sqrt(dx*dx+dy*dy)<=S	# 三平方の定理で、小さな円の中か外かを判定
				flg = true					# 中であれば、フラグをtrueに
				break						# trueであれば、ほかの小円については判定しなくて良いのでbreak
			end
			
			k += 1
		end
		
		if flg	
			print "*"
		else
			print " "
		end
		
		j += 1
	end
	puts
	
	i += 1
end
