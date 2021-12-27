'''
LeetCode3: Longest Substring Without Repeating Characters.
Given a string s, find the length of the longest substring without repeating characters.

Input: s = "abcabcbb"
Output: 3
Explanation: The answer is "abc", with the length of 3.

Input: s = "pwwkew"
Output: 3
Explanation: The answer is "wke", with the length of 3.
Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.
'''

# FINAL SOLUTION:
def lengthOfLongestSubstring(s):
    chars=set() #keep track of the new substrings
    maxNum=0 #will store answer
    i=0 #track index on the left, will need to delete duplicate at some point.
    for r in range(len(s)):
        while s[r] in chars:
            chars.remove(s[i]) # remove the duplicate letter at beginning of substring
            #print("removed ", s[r])
            i=i+1 # next index num needs tracked
        chars.add(s[r]) # add unique letter so substring
        #print(" added ", s[r])
        maxNum=max(maxNum, r-i+1) # check new max number
    return maxNum #returns final answer

s="pwwkew" #s="abcabcbb"   
test=lengthOfLongestSubstring(s)
print(test)



'''
 FIRST ATTEMPT, INCORRECT
 This was one of my first medium level leetcode problems so further research had to be done to get the above solution
'''

def lengthOfLongestSubstring(s):
    start=0
    maxNum=1
    l=[]
    end=1
    while start<len(s)-1:
        print(s[end], " ", s[start:end])
        if s[end] not in s[start:end] and start!=end:
            l.append(end-start+1)
            end=end+1
        else:
            start=start+1
            print(start, " is the new start")
    print(l)
    return max(l)

s="pwwkew"    
test=lengthOfLongestSubstring(s)
print(test)

'''
b   a
c   ab
a   abc
1  is the new start
a   bc
b   bca
2  is the new start
b   ca
c   cab
3  is the new start
c   ab
b   abc
4  is the new start
b   bc
5  is the new start
b   c
b   cb
6  is the new start
b   b
7  is the new start
[2, 3, 3, 3, 3, 2]
3
'''
