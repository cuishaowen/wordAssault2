package com.thinkgem.jeesite.modules.userchapterword.util;

import java.util.HashSet;
import java.util.Set;

public class UserChapterWordUtil {
    /**
     * 功能：随机指定范围内N个不重复的数
     *
     * @param min 指定范围最小值
     * @param max 指定范围最大值
     * @param n 随机数个数
     */
    public static int[] randomSet(int min, int max, int n) {
        Set<Integer> set = new HashSet<Integer>();
        int[] array = new int[n];
        for (; true;) {
            // 调用Math.random()方法
            int num = (int) (Math.random() * (max - min)) + min;

            // 将不同的数存入HashSet中
            set.add(num);
            // 如果存入的数小于指定生成的个数，则调用递归再生成剩余个数的随机数，如此循环，直到达到指定大小
            if (set.size() >= n) {
                break;
            }
        }
        int i = 0;
        for (int a : set) {
            array[i] = a;
            i++;
        }
        return array;
    }
}
