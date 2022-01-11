'''
Problem 20:
https://leetcode.com/problems/valid-parentheses/

Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
An input string is valid if:
Open brackets must be closed by the same type of brackets.
Open brackets must be closed in the correct order.
'''

class Solution(object):
    def isValid(self, string):
        if len(string)%2!=0:
            return False
        temp=[]
        dic={'{':'}', '[':']', '(':')'}
        for s in string:
            s=str(s)
            if s=='(' or s=='[' or s=='{':
                temp.append(s)
                print(s, " added")
            elif temp and dic[temp[-1]]==s:
                print(dic[temp[-1]] )
                print(s)
                temp.pop()
            else:
                return False
        if len(temp)==0:
            return True
        else:
            return False
