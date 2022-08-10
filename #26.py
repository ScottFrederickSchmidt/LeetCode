'''
Problem26
https://leetcode.com/problems/remove-duplicates-from-sorted-array/

Given an integer array nums sorted in non-decreasing order, remove the duplicates in-place such that each unique element appears only once. 
The relative order of the elements should be kept the same.

Example: Input: nums = [0,0,1,1,1,2,2,3,3,4]
Output: 5, nums = [0,1,2,3,4,_,_,_,_,_]
Explanation: Your function should return k = 5, with the first five elements of nums being 0, 1, 2, 3, and 4 respectively.
It does not matter what you leave beyond the returned k (hence they are underscores).
'''


class Solution(object):
    def removeDuplicates(self, nums):
        #No need to check the first number:
        length=1
        if len(nums)==0:
            return 0 #is the list is empty
        for i in range(1, len(nums)): #start a 1 to compare to 0 usin g next line of code
            if nums[i]!=nums[i-1]: #check every number to the previous number in list
                nums[length] = nums[i] #found a unique number that will replace in the unique index
                length=length+1 # count goes up by one
        return length 
                
