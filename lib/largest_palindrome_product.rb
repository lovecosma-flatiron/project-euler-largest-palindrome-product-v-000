# Implement your procedural solution here!
class LargestPalindromeProduct

    def answer
        num1 = 999
        num2 = 999
        prod = num1 * num2
        
        palindrome_target = findNextPalindrome(prod)
        
        while palindrome_target % num1 != 0
            num1 -= 1
            if num1 < 100 || palindrome_target / num1 > 999
                nextPalindrome = findNextPalindrome(palindrome_target)
                palindrome_target = nextPalindrome
                num1 = 999
            end 
        end 
           palindrome_target
        
        end 
        
        def findNextPalindrome(num)
            if(palindrome(num))
                num -= 1
            end
            while !palindrome(num)
                num -= 1
            end 
            num
        end 
        
        
        
        def palindrome(num)
        
            string_num = num.to_s
        
            if(string_num.length == 1)
                return false
            elsif string_num.length ==2
                if(string_num[0] == string_num[string_num.length-1])
                    return true
                else 
                    return false
                end  
            else
                if string_num[0] == string_num[string_num.length-1]
                    palindrome(string_num.slice(1, string_num.length-2))
                else
                    return false
                end 
            end 
        
        
        end 

end 