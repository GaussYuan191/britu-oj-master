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
    public static Integer GetSpendTime(double ability,Integer level){
        Map<Double,Integer> SpendTimeMap = new HashMap<>();
        SpendTimeMap.put(0.4,300);
        SpendTimeMap.put(0.5,480);
        SpendTimeMap.put(0.6,600);
        SpendTimeMap.put(0.7,900);
        double m = (level + 10) / 10;
        if(ability <= 0.5){
            return (int)(SpendTimeMap.get(0.4) * m);
        }
        else if(ability > 0.5 && ability <= 0.6){
            return (int)(SpendTimeMap.get(0.5) * m);
        }
        else if(ability > 0.6 && ability <= 0.7){
            return (int)(SpendTimeMap.get(0.6) * m);
        }
        else{
            return (int)(SpendTimeMap.get(0.7) * m);
        }
    }
}
