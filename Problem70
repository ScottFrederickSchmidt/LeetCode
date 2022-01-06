'''
Problem70 https://leetcode.com/problems/climbing-stairs/  
You are climbing a staircase. It takes n steps to reach the top.
Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?
'''

#This is a fib sequence problem in diguise, same as Project Euler#2.  
class Solution(object):
    count=0
    def climbStairs(self, n):
        n1=1
        n2=2
        total=0
        if n<=2: return n
        
        for i in range(2, n):
            total=n1+n2
            n1=n2
            n2=total
        return total
