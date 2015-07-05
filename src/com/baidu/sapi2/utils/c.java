package com.baidu.sapi2.utils;

import android.text.TextUtils;
import com.baidu.android.common.security.Base64;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.InputStreamReader;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;

public class c
{
  public static String a(String paramString1, String paramString2)
  {
    if ((paramString1 == null) || (TextUtils.isEmpty(paramString2))) {
      return null;
    }
    try
    {
      Cipher localCipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
      paramString2 = a(paramString2);
      if (paramString2 != null)
      {
        localCipher.init(2, paramString2);
        paramString1 = new String(localCipher.doFinal(Base64.decode(paramString1.getBytes())), "UTF8");
        return paramString1;
      }
    }
    catch (Throwable paramString1)
    {
      L.e(paramString1);
    }
    return null;
  }
  
  private static PublicKey a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    for (;;)
    {
      return null;
      try
      {
        BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(new ByteArrayInputStream(paramString.getBytes("UTF-8"))));
        StringBuilder localStringBuilder = new StringBuilder();
        String str;
        do
        {
          str = localBufferedReader.readLine();
          paramString = str;
          if (str == null) {
            break;
          }
        } while (!str.contains("-----BEGIN PUBLIC KEY-----"));
        for (;;)
        {
          str = localBufferedReader.readLine();
          paramString = str;
          if (str != null)
          {
            if (str.contains("-----END PUBLIC KEY-----")) {
              paramString = str;
            }
          }
          else
          {
            localBufferedReader.close();
            if (TextUtils.isEmpty(paramString)) {
              break;
            }
            return KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(localStringBuilder.toString().getBytes())));
          }
          localStringBuilder.append(str.trim());
        }
        return null;
      }
      catch (Throwable paramString)
      {
        L.e(paramString);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.utils.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */