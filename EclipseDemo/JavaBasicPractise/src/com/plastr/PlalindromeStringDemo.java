package com.plastr;

/**
 * @author lixin on 2018/9/24.
 **取得回文串示例程序
 */
public class PlalindromeStringDemo {

	public static void main(String[] args) {

		PlalindromeString ps = new PlalindromeString();

		String[] testStrArr = new String[] { "abcdcef", "adaelele", "cabadabae", "aaaabcdefgfedcbaa", "aaba",
				"aaaaaaaaa" };

		for (String str : testStrArr) {
			System.out.println(String.format("原字串 : %s", str));
			System.out.println(String.format("最长回文串 : %s", ps.findLongestPlalindromeString(str)));
			System.out.println();
		}

	}

}