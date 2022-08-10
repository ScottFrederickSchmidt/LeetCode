'''
Problem136:
https://leetcode.com/problems/single-number/submissions/

I have two solutions for this problem.
The first solution has a Runtime speed much faster than my original answer on bottom.
The second solution on bottom requires calculating the list everytime thus why the answer was really slow.
'''

#Runtime: 121 ms, faster than 48.71% of Python online submissions for Single Number.
class Solution(object):
    def singleNumber(self, nums):
        dic={}
        
        for key in nums:
            if key not in dic:
                dic[key]=1
            else:
                dic[key]+=1
        
        for k in dic:
            if dic[k]==1:
                return k


#Runtime: 4544 ms, faster than 7.01% of Python online submissions for Single Number.
#Memory Usage: 15.6 MB, less than 83.02% of Python online submissions for Single Number
class Solution(object):
    def singleNumber(self, nums):
        #print(nums)
        for n in nums:
            count=nums.count(n)
            if count==1:
                return n
