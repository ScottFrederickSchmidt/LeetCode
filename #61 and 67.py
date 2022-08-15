https://leetcode.com/problems/plus-one/
You are given a large integer represented as an integer array digits, where each digits[i] is the ith digit of the integer.
The digits are ordered from most significant to least significant in left-to-right order. 
The large integer does not contain any leading 0's.
Increment the large integer by one and return the resulting array of digits

--------------
'''
1)Get last_digit, add one
2)Update list last_digit to last digit

class Solution(object):
    def plusOne(self, digits):
        last=digits[-1]+1
        digits[-1]=last
        return digits

However, this answer fails example 4:
Input: digits = [9]
Output: [1,0]
Explanation: The array represents the integer 9.
Incrementing by one gives 9 + 1 = 10.
Thus, the result should be [1,0].

3)The trick part! 
If the last digit is a 9, the list should split into a 1 and 0. And 99+1=[1, 0, 0]
Therefore, one must change the digits into an int, add one, and then back into a list again.

MY FINAL SOLUTION in PYTHON: Runtime: 20 ms, faster than 72.15% of Python online submissions for Plus One.
'''
class Solution(object):
    def plusOne(self, digits):
        last=digits[-1]
        if last is not 9:
            digits[-1]=last+1
            return digits
        else:
            final=[]
            s = ''.join(map(str, digits))
            s = int(s)+1
            string=str(s)
            for n in string:
                final.append(int(n))
            return final
        """
        :type digits: List[int]
        :rtype: List[int]
        """
        
        
        
 ---------------
# Add Binary: https://leetcode.com/problems/add-binary/
class Solution(object):
    def addBinary(self, a, b):
        val=int(a, 2)+int(b, 2)
        val=bin(val)
        return val[2::]
        
        

