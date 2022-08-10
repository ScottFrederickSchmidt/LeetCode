'''
LeetCode 27  https://leetcode.com/problems/remove-element/
Given an integer array nums and an integer val, remove all occurrences of val in nums in-place. The relative order of the elements may be changed.
Since it is impossible to change the length of the array in some languages, you must instead have the result be placed in the first part of the array nums. 
More formally, if there are k elements after removing the duplicates, then the first k elements of nums should hold the final result.
It does not matter what you leave beyond the first k elements.
Return k after placing the final result in the first k slots of nums.
'''

class Solution(object):
    def removeElement(self, nums, val):
        l = 0 #keeps track of index/count

        for r in range(len(nums)): # will loop through each number
            if nums[r] != val: # if they are not equal
                nums[l] = nums[r] #place number into new array
                l += 1 # next array index/count 
        return l 
            
