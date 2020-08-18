package com.britu.oj.utils;

import java.util.HashMap;
import java.util.Map;

/**
 * @program: britu-oj
 * @description: 根据用户能力计算用户做题所需的时间
 * @author: Gauss
 * @date: 2020-08-15 22:38
 **/
public class SpendTimeUtil {
    public static Integer GetSpendTime(double ability){
        Map<Double,Integer> SpendTimeMap = new HashMap<>();
        SpendTimeMap.put(0.4,300);
        SpendTimeMap.put(0.5,600);
        SpendTimeMap.put(0.6,900);
        SpendTimeMap.put(0.7,1200);
        if(ability <= 0.5){
            return SpendTimeMap.get(0.4);
        }
        else if(ability > 0.5 && ability <= 0.6){
            return SpendTimeMap.get(0.5);
        }
        else if(ability > 0.6 && ability <= 0.7){
            return SpendTimeMap.get(0.6);
        }
        else{
            return SpendTimeMap.get(0.7);
        }
    }
}
