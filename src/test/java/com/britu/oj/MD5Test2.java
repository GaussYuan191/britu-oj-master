package com.britu.oj;

import java.security.MessageDigest;

public class MD5Test2 {
    public static String strToMD5(String inStr){
        MessageDigest md5 = null;
        try{
            md5 = MessageDigest.getInstance("MD5");
        } catch (Exception e){
            e.printStackTrace();
        }
        char[] charArray = inStr.toCharArray();
        byte[] byteArray = new byte[charArray.length];
        for (int i = 0;i < charArray.length;i++){
            byteArray[i] = (byte) charArray[i];
        }
        byte[] md5Bytes = md5.digest(byteArray);
        StringBuffer hexValue = new StringBuffer();
        for (int i = 0;i < md5Bytes.length;i++){
            int val = ((int) md5Bytes[i]) & 0xff;
            if (val < 16){
                hexValue.append("0");
            }
            hexValue.append(Integer.toHexString(val));
        }
        return hexValue.toString();
    }
    public static String convertMD5(String inStr){
        char[] a = inStr.toCharArray();
        for (int i = 0;i < a.length;i++){
            a[i] = (char) (a[i] ^ 't');
        }
        return new String(a);
    }
    public  static  void main(String args[]){
//        String s = new String("hahahaha");
//        System.out.println("原始字符串："+s);
//        System.out.println("MD5后："+strToMD5(s));
//        System.out.println("解密："+convertMD5(s));
        System.out.println("解密后："+convertMD5("7A92014C6767159ACD9D7DDCB97C838B"));
    }
}
