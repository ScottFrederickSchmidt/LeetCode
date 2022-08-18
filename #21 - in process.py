'''
LeetCode21:  https://leetcode.com/problems/merge-two-sorted-lists/
This is the most common Amazon interview question and an important concept to data structures.
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
