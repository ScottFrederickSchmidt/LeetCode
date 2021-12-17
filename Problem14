'''
Problem14:
https://leetcode.com/problems/longest-common-prefix/

1)Using a zip will "zip" the lists together. Using the * zips the indexes together.
2)Set does not include duplicates. Therefore, if the zipped index is one, all the index are the same.
3)Add the letter to the prefix if the letter is the same.
4)When the set is not 1, use a break to stp the code and return the prefix.
'''

class Solution(object):
    def longestCommonPrefix(self, strs):
        prefix=''
        for z in zip(*strs):
            if(len(set(z)))==1:
                prefix+=z[0]
            else:
                break;
        return prefix
