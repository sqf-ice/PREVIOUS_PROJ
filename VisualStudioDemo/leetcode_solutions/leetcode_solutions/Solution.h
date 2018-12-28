#pragma once

#include <iostream>
#include <string>
#include <vector>
#include <set>
#include <map>
#include <list>
#include <stack>
#include <queue>

using namespace std;

class Solution
{
public:
	Solution();
	~Solution();
	
	//无重复字符的最长子串
	int lengthOfLongestSubstring(string s);

	//给定两个数组，编写一个函数来计算它们的交集。
	vector<int> intersect(vector<int>& nums1, vector<int>& nums2);

	//求两数之和
	vector<int> Solution::twoSum(vector<int>& nums, int target);

	int hitBall(vector<pair<int,int>>& ball);
};

