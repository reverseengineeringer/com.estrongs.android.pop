package com.baidu.sapi2.shell;

import android.text.TextUtils;
import com.baidu.android.common.security.Base64;
import com.baidu.sapi2.utils.L;
import com.baidu.sapi2.utils.g;
import java.io.ByteArrayInputStream;
import java.security.Key;
import java.util.Random;
import javax.crypto.Cipher;
import javax.security.cert.X509Certificate;
import org.json.JSONArray;

class b
{
  public static final String a = "RSA/ECB/PKCS1Padding";
  private String b = "kf1t9tsczk16vc8z";
  private g c = new g();
  
  private byte[] a(Key paramKey, byte[] paramArrayOfByte)
  {
    Cipher localCipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
    localCipher.init(1, paramKey);
    return localCipher.doFinal(paramArrayOfByte);
  }
  
  private String b()
  {
    Random localRandom = new Random();
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    while (i < 16)
    {
      localStringBuilder.append("abcdefghijklmnopqrstuvwxyz0123456789".charAt(localRandom.nextInt("abcdefghijklmnopqrstuvwxyz0123456789".length())));
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  static String c(String paramString)
  {
    try
    {
      paramString = Base64.decode(paramString.getBytes());
      String str = new StringBuffer("baiduvoice35hy12").reverse().toString();
      paramString = new String(new g().a(paramString, str, "baiduvoice35hy12"), "UTF-8").trim();
      return paramString;
    }
    catch (Throwable paramString)
    {
      L.e(paramString);
    }
    return "";
  }
  
  static String d(String paramString)
  {
    try
    {
      String str = new StringBuffer("baiduvoice35hy12").reverse().toString();
      paramString = Base64.encode(new g().a(paramString, str, "baiduvoice35hy12"), "UTF-8");
      return paramString;
    }
    catch (Throwable paramString)
    {
      L.e(paramString);
    }
    return "";
  }
  
  public String a()
  {
    return b;
  }
  
  public String a(String paramString1, String paramString2)
  {
    if ((TextUtils.isEmpty(paramString1)) || (TextUtils.isEmpty(paramString2))) {
      return null;
    }
    paramString1 = X509Certificate.getInstance(new ByteArrayInputStream(paramString1.getBytes())).getPublicKey();
    JSONArray localJSONArray = new JSONArray();
    paramString2 = paramString2.getBytes("UTF-8");
    int i;
    int j;
    if (paramString2.length % 116 == 0)
    {
      i = paramString2.length / 116;
      j = 0;
      label67:
      if (j >= i) {
        break label215;
      }
      if (1 != i) {
        break label115;
      }
      localJSONArray.put(Base64.encode(a(paramString1, paramString2), "UTF-8"));
    }
    for (;;)
    {
      j += 1;
      break label67;
      i = paramString2.length / 116 + 1;
      break;
      label115:
      byte[] arrayOfByte;
      if (j != i - 1)
      {
        arrayOfByte = new byte[116];
        System.arraycopy(paramString2, j * 116, arrayOfByte, 0, 116);
        localJSONArray.put(Base64.encode(a(paramString1, arrayOfByte), "UTF-8"));
      }
      else
      {
        int k = paramString2.length - j * 116;
        arrayOfByte = new byte[k];
        System.arraycopy(paramString2, j * 116, arrayOfByte, 0, k);
        localJSONArray.put(Base64.encode(a(paramString1, arrayOfByte), "UTF-8"));
      }
    }
    label215:
    return Base64.encode(localJSONArray.toString().getBytes("UTF-8"), "UTF-8");
  }
  
  public void a(String paramString)
  {
    b = paramString;
  }
  
  public String b(String paramString)
  {
    paramString = Base64.decode(paramString.getBytes());
    String str = new StringBuffer(b).reverse().toString();
    return new String(c.a(paramString, str, b), "UTF-8");
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.shell.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */