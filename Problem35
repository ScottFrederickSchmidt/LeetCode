'''
LeetCode35:  https://leetcode.com/problems/search-insert-position/
Given a sorted array of distinct integers and a target value, return the index if the target is found. 
If not, return the index where it would be if it were inserted in order.
You must write an algorithm with O(log n) runtime complexity.
'''

#Final Solution:
class Solution(object):
    def searchInsert(self, nums,target) :
        for i in range(len(nums)) :
            if nums[i] >= target :
                return i
        return len(nums)
        
        
#My initial solution did not have proper runTime due to not using an algorithm with O(log n) runtime complexity:
def search(nums, target):
    if target in nums:
        return nums.index(target)
    else:
        new=new.append(target)
        new=sorted(new)
        return new.index(target)
