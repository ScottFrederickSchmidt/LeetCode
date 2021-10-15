'''
https://leetcode.com/problems/two-sum/submissions/
This code is an easy rank and was similiar to Project Euler.
'''

#Final Solution:
#Runtime: 3520 ms, faster than 29.97% of Python online submissions for Two Sum.
#Memory Usage: 14.3 MB, less than 48.23% of Python online submissions for Two Sum.

class Solution(object):
    def twoSum(self, nums, target):
        length=len(nums)
        index=[]
        for i in range(length):
            for j in range(i+1, length):
                if nums[i]+nums[j]==target:
                    index.append(i)
                    index.append(j)
                    return index
            
-----------------------------------

# My initial solution was slow because there is no need to check every combo.
# Therefore, this solution gets rejected due to speed.

import itertools

class Solution(object):
    def twoSum(self, nums, target):
        index=[] #store indexes to be returned at end
        for numbers in itertools.combinations(nums,2):
            if sum(numbers)==target: #if the sum of these numbers 
                for n in numbers: # find each num in numbers
                    index.append(nums.index(n)) #add index to 
        return index #this is the answer
