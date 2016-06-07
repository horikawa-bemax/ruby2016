#二分探索
ary = Array.new(5000){rand(10000)}
ary.sort!

print "KEY(0-9999) =>"
key = gets.to_i

count = 0

left = 0
right = ary.length - 1

while left <= right
	mid = (left + right) / 2
	
	count += 1
	
	if key == ary[mid]
		break
	end
	
	if key < ary[mid]
		right = mid - 1
	else
		left = mid + 1
	end
	
	puts "ary[#{mid}]=#{ary[mid]}"
end

if left > right
	puts "見つかりません"
else
	puts "見つかりました ary[#{mid}]=#{ary[mid]}"
end

puts "探索回数 #{count}"