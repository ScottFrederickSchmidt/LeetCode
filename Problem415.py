'''
Problem415:
https://leetcode.com/problems/add-strings/

Given two non-negative integers, num1 and num2 represented as string, return the sum of num1 and num2 as a string.
You must solve the problem without using any built-in library for handling large integers (such as BigInteger). 
You must also not convert the inputs to integers directly.

Runtime: 20 ms, faster than 87.13% of Python online submissions for Add Strings.
Memory Usage: 13.5 MB, less than 92.06% of Python online submissions for Add Strings.
'''


class Solution(object):
    def addStrings(self, num1, num2):
        total=int(num1)+int(num2)
        return str(total)
        
        """
        :type num1: str
        :type num2: str
        :rtype: str
        """
        
