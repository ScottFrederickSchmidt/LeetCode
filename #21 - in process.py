'''
LeetCode21:  https://leetcode.com/problems/merge-two-sorted-lists/
This is the most common Amazon interview question and an important concept to data structures.

You are given the heads of two sorted linked lists list1 and list2.
Merge the two lists in a one sorted list. The list should be made by splicing together the nodes of the first two lists.
Return the head of the merged linked list.

Input: list1 = [1,2,4], list2 = [1,3,4]
Output: [1,1,2,3,4,4]
'''

class Solution(object):
    def mergeTwoLists(self, list1, list2):        
        dummy = ListNode()
        head = dummy
        while list1 and list2:
            if list1.val <= list2.val:
                dummy.next = list1
                list1 = list1.next
            else:
                dummy.next = list2
                list2 = list2.next
            dummy = dummy.next
        
        dummy.next = list1 or list2
        return head.next
