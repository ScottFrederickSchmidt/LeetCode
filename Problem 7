'''
PROBLEM7:
https://leetcode.com/problems/reverse-integer/

Runtime: 24 ms, faster than 41.64% of Python online submissions for Reverse Integer.
Memory Usage: 13.3 MB, less than 65.29% of Python online submissions for Reverse Integer.

The biggest trick to solving this problem is realzing that you cannot reverse a negative number.
If onen reverses -321, the reversal becomes 123-.
Therefore, one must temporarily make the number positive, then reverse, then put the negative back in.
Other than that, this one is pretty simple to solve.
'''

class Solution(object):
    def reverse(self, x):
        if x>0:
            x=str(x)
            s= x[::-1]
            rev=int(s) 
            if rev > 2**31 or rev < -2**31:
                return 0
            else: 
                return rev
        else:
            x =abs(x)
            x =str(x)
            s =x[::-1]
            rev=int(s)
            rev=rev*-1
            if rev > 2**31 or rev < -2**31:
                return 0
            else: 
                return rev
                
        
        """
        :type x: int
        :rtype: int
        """
        

