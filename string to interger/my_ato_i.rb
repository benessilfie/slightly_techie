# @param {String} s
# @return {Integer}

def my_atoi(s)
    s = s.to_i
    s = s <= -2147483648 ? -2147483648 : s >= 2147483647 ? 2147483647 : s
end