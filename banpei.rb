# 番兵法
ary = Array.new(5000){rand(10000)}	# 0～9999までのランダムな値を持つ、要素数5000の配列を作成

count = 0							# 探索回数をカウントする

print "KEY(0～9999) =>"
key = gets.to_i						# KEYをキーボードから入力

ary << key							# 配列の最後に番兵（KEYと同じ値）を追加

# 探索ループ
i = 0
while key != ary[i]					# KEYと同じ値が出るまで繰り返す（番兵があるので、必ず当たる）

	count += 1						# カウント +1
	i += 1							# i +1
	
	puts "ary[#{i}]=#{ary[i]} <-> #{key}"	# 探索した値を表示
end

#結果表示
if i < ary.length-1					# i が番兵の位置より前でループが終わっている
	puts "見つかりました ary[#{i}]=#{ary[i]}"
else								# i が番兵の位置で終わっている
	puts "見つかりません"
end

puts "探索回数 #{count}回"			# 探索回数表示
