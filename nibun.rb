#二分探索
ary = Array.new(5000){rand(10000)}	# 0～9999までのランダムな値を持つ、要素数5000の配列を作成
ary.sort!							# 配列を要素の昇順に整列する

print "KEY(0-9999) =>"				
key = gets.to_i						# 探索値 KEY をキーボードから入力する

count = 0							# 探索数をカウントするための変数

left = 0							# 探索範囲の左端の添え字を格納する変数
right = ary.length - 1				# 探索範囲の右端の添え字を格納する変数

while left <= right					# left > right になったら終了するループ
	mid = (left + right) / 2		# 探索範囲の中央の添え字を計算で求め、変数midに代入

	count += 1						# 探索回数を +1
	
	# 探索値が見つかった時の処理
	if key == ary[mid]				# 探索値とary[mid]が一致した（みつかった）とき
		break						# ループを終了させる
	end
	
	# 探索値が見つからなかった時の処理（次の探索範囲を決定する）
	if key < ary[mid]				# KEY の値が、ary[mid]より小さければ、midより左半分を探索範囲とする
		right = mid - 1
	else
		left = mid + 1				# KEY の値が、ary[mid]より大きければ、midより右半分を探索範囲とする
	end
	
	puts "ary[#{mid}]=#{ary[mid]}"	# 今回の探索で比較されたaryの値を表示する
end

# ループ終了後の処理（結果の表示）
if left > right						# left > right であれば、見つからなかった
	puts "見つかりません"
else								# left <= right であれば、見つかった
	puts "見つかりました ary[#{mid}]=#{ary[mid]}"
end

puts "探索回数 #{count}"			# 結果を得るまでに、KEY と aryの値を比較した数を表示する
