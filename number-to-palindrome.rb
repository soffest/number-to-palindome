puts "Enter your current salary:"
a = gets.chomp
if /^(?<num>\d+)$/ =~ a then
	a_start = a[ 0, a.length / 2 ]
	a_end = a[ a.length / 2 + a.length % 2, a.length ]
	a_middle = a[ a.length / 2 ] if a.length % 2 > 0
	a_start_reversed = a_start.reverse

	if a_end.to_i > a_start_reversed.to_i then

		if a.length % 2 > 0 then
			if a_middle.to_i < 9 then
				a_middle = "#{a_middle.to_i + 1}"
			else
				a_middle = '0'
				a_start = "#{a_start.to_i + 1}"
				a_start_reversed = a_start.reverse
			end
		else
			a_start = "#{a_start.to_i + 1}"
			a_start_reversed = a_start.reverse
		end

	end

	b = a_start
	b += a_middle if a.length % 2 > 0
	b += a_start_reversed
	b_reversed = b.reverse
	puts('Your new salary is:', b +' $',
	 'if you reverse it, anyway you get:', b_reversed + ' $',
	 "and it is #{b.to_i-a.to_i} $ more than before!!!" )
else
	puts('Invalid value! Salary can only contain digits!')
end