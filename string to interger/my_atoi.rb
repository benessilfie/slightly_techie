# @param {String} s
# @return {Integer}

def my_atoi(s)
    # Strip any leading whitespace
    s = s.lstrip

    # If the string is empty, return 0
    return 0 if s.length < 1

    # Counter to skip the sign
    i = 0

    # condition to check if the number is positive or negative
    is_positive = s.length > 1 && s[0] == '+'
    is_negative = s.length > 1 && s[0] == '-'

    # If the number is positive or negative, increment the counter
    is_negative ? i += 1 : is_positive ? i += 1 : i

    # this will store the converted number
    converted_number = 0

    def is_digit?(char)
        char =~ /[0-9]/
    end

    while i < s.length
        current_char = s[i]

        if !is_digit?(current_char)
            break
        else
            converted_number = converted_number * 10 + (current_char.to_i)
        end

        i += 1
    end

    # check if the converted number is negative
    converted_number = -converted_number if is_negative

    # check if the number is within the range of 32-bit signed integer
    return -2147483648 if converted_number < -2147483648
    return 2147483647 if converted_number > 2147483647

    return converted_number
end