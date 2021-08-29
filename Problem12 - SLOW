'''
Problem12:
https://leetcode.com/problems/roman-to-integer/

Runtime: 40 ms, faster than 59.20% of Python online submissions for Roman to Integer.
Memory Usage: 13.5 MB, less than 59.58% of Python online submissions for Roman to Integer.
'''

def romanToInt(s):
    roman={'I':1, 'V':5, 'X':10, 'L':50, 'C':100, 'D':500, 'M':1000} 
    count=0
    length=len(s)
    
    for i in range( length-1):
        n=roman[s[i]]
        n1=roman[s[i+1]]
        #if the first number is bigger you simply add it.
        if n >= n1:
            count=count+n  
            #print(n, n1)
        #If the second number is bigger, you minus the first number.
        #For example, 9='IX' (you would MINUS 1 not add 1)
        else:
            count=count-n
            #print(n, n1)
    count=count+roman[s[-1]] #Always add the final number in string
    return count #returns answer
