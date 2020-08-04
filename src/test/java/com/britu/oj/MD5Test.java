package com.britu.oj;

import  java.security.MessageDigest;

class  MD5_test {
    public   final   static  String MD5(String s) {
        char  hexDigits[] = {  '0' ,  '1' ,  '2' ,  '3' ,  '4' ,  '5' ,  '6' ,  '7' ,  '8' ,  '9' ,
                'a' ,  'b' ,  'c' ,  'd' ,  'e' ,  'f'  };
        try  {
            byte [] strTemp = s.getBytes();
            MessageDigest mdTemp = MessageDigest.getInstance("MD5" );
            mdTemp.update(strTemp);
            byte [] md = mdTemp.digest();
            int  j = md.length;
            char  str[] =  new   char [j *  2 ];
            int  k =  0 ;
            for  ( int  i =  0 ; i < j; i++) {
                byte  byte0 = md[i];
                str[k++] = hexDigits[byte0 >>> 4  &  0xf ];
                str[k++] = hexDigits[byte0 & 0xf ];
            }
            return   new  String(str);
        } catch  (Exception e) {
            return   null ;
        }
    }

    public   static   void  main(String[] args) {
        // MD5_Test aa = new MD5_Test();
        System.out.print(MD5_test.MD5("b" ));
    }
}

public class MD5Test {
    // MD5加码。32位
    public   static  String MD5(String inStr) {
        MessageDigest md5 = null ;
        try  {
            md5 = MessageDigest.getInstance("MD5" );
        } catch  (Exception e) {
            System.out.println(e.toString());
            e.printStackTrace();
            return   "" ;
        }
        char [] charArray = inStr.toCharArray();
        byte [] byteArray =  new   byte [charArray.length];

        for  ( int  i =  0 ; i < charArray.length; i++)
            byteArray[i] = (byte ) charArray[i];

        byte [] md5Bytes = md5.digest(byteArray);

        StringBuffer hexValue = new  StringBuffer();

        for  ( int  i =  0 ; i < md5Bytes.length; i++) {
            int  val = (( int ) md5Bytes[i]) &  0xff ;
            if  (val <  16 )
                hexValue.append("0" );
            hexValue.append(Integer.toHexString(val));
        }

        return  hexValue.toString();
    }

    // 可逆的加密算法
    public   static  String KL(String inStr) {
        // String s = new String(inStr);
        char [] a = inStr.toCharArray();
        for  ( int  i =  0 ; i < a.length; i++) {
            a[i] = (char ) (a[i] ^  't' );
        }
        String s = new  String(a);
        return  s;
    }

    // 加密后解密
    public   static  String JM(String inStr) {
        char [] a = inStr.toCharArray();
        for  ( int  i =  0 ; i < a.length; i++) {
            a[i] = (char ) (a[i] ^  't' );
        }
        String k = new  String(a);
        return  k;
    }

    // 测试主函数
    public   static   void  main(String args[]) {
        String s = new  String( "123456" );
        System.out.println("原始："  + s);
        System.out.println("MD5后："  + MD5(s));
        System.out.println("MD5后再加密："  + KL(MD5(s)));
        System.out.println("解密为MD5后的："  + JM(KL(MD5(s))));
    }
}

