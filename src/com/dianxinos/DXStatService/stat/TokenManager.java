package com.dianxinos.DXStatService.stat;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.provider.Settings.System;
import android.text.TextUtils;
import android.util.Log;
import com.dianxinos.DXStatService.a.b;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public final class TokenManager
{
  private static String a = "";
  
  public static String a(Context paramContext)
  {
    String str2 = f(paramContext);
    String str1 = str2;
    if (b(str2)) {
      str1 = getToken(paramContext);
    }
    return str1;
  }
  
  private static String a(String paramString)
  {
    try
    {
      localObject = MessageDigest.getInstance("MD5");
      ((MessageDigest)localObject).update(paramString.getBytes("UTF-8"));
      localObject = new String(dianxinos.dxstat.org.apache.commons.codec.a.a.a(((MessageDigest)localObject).digest()), "UTF-8");
      return (String)localObject;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      do
      {
        localObject = paramString;
      } while (!b.b);
      Log.e("TokenManager", "Encoding#1 not found.", localNoSuchAlgorithmException);
      return paramString;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      do
      {
        Object localObject = paramString;
      } while (!b.b);
      Log.e("TokenManager", "Encoding#2 not found.", localUnsupportedEncodingException);
    }
    return paramString;
  }
  
  private static boolean a(Context paramContext, String paramString)
  {
    paramContext = paramContext.getSharedPreferences("utils", 2).edit();
    paramContext.putString("tm", paramString);
    return paramContext.commit();
  }
  
  public static boolean b(Context paramContext)
  {
    return c(paramContext).equals(d(paramContext));
  }
  
  private static boolean b(Context paramContext, String paramString)
  {
    boolean bool1 = false;
    paramContext = paramContext.getContentResolver();
    try
    {
      boolean bool2 = Settings.System.putString(paramContext, "android.{F46B117B-CBC7-4ac2-8F3C-43C1649DC760}", paramString);
      bool1 = bool2;
    }
    catch (Exception paramContext)
    {
      while (!b.b) {}
      Log.e("TokenManager", "Writing settings error!!");
    }
    return bool1;
    return false;
  }
  
  private static boolean b(String paramString)
  {
    return (paramString == null) || (paramString.length() <= 5);
  }
  
  private static String c(Context paramContext)
  {
    return paramContext.getSharedPreferences("utils", 1).getString("tm", "");
  }
  
  private static boolean c(String paramString)
  {
    return TextUtils.isEmpty(paramString);
  }
  
  private static String d(Context paramContext)
  {
    return Settings.System.getString(paramContext.getContentResolver(), "android.{F46B117B-CBC7-4ac2-8F3C-43C1649DC760}");
  }
  
  private static String e(Context paramContext)
  {
    String str1 = com.dianxinos.DXStatService.a.a.m(paramContext);
    String str2 = com.dianxinos.DXStatService.a.a.c(paramContext);
    paramContext = com.dianxinos.DXStatService.a.a.b(paramContext);
    String str3 = com.dianxinos.DXStatService.a.a.a();
    String str4 = com.dianxinos.DXStatService.a.a.b();
    long l = System.currentTimeMillis();
    return a(str1 + "_" + paramContext + "_" + str2 + "_" + l + "_" + str3 + "_" + str4);
  }
  
  private static String f(Context paramContext)
  {
    String str3 = com.dianxinos.DXStatService.a.a.m(paramContext);
    String str2 = com.dianxinos.DXStatService.a.a.n(paramContext);
    paramContext = com.dianxinos.DXStatService.a.a.a();
    String str1 = str2;
    if (!TextUtils.isEmpty(str2)) {
      str1 = str2.replaceAll("\\s*ro.cdma.home.operator.alpha=", "cdma=");
    }
    int i = 1;
    if ((TextUtils.isEmpty(str3)) || (str3.length() <= 12)) {
      i = 0;
    }
    if ((TextUtils.isEmpty(str1)) || (str1.length() <= 12)) {
      i = 0;
    }
    if ((TextUtils.isEmpty(paramContext)) || (paramContext.length() <= 32)) {
      i = 0;
    }
    for (;;)
    {
      if (i != 0)
      {
        return a(str3 + "_" + str1 + "_" + paramContext);
        if (paramContext.length() > 128) {
          paramContext = paramContext.substring(0, 128);
        }
      }
      else
      {
        return "";
      }
    }
  }
  
  public static String getToken(Context paramContext)
  {
    int k = 0;
    int j = 1;
    String str1;
    String str2;
    int i;
    if ((c(a)) || (b(a)))
    {
      str1 = c(paramContext);
      str2 = d(paramContext);
      if (!b(str1)) {
        break label163;
      }
      if (!c(str2)) {
        break label115;
      }
      a = f(paramContext);
      if (!b(a)) {
        break label197;
      }
      a = e(paramContext);
      i = 1;
    }
    for (;;)
    {
      if (i != 0) {}
      label115:
      label163:
      try
      {
        a(paramContext, a);
        if (j == 0) {}
      }
      finally {}
      try
      {
        b(paramContext, a);
        return a;
      }
      finally {}
      if (b(str2))
      {
        a = f(paramContext);
        if (b(a))
        {
          a = e(paramContext);
          i = 1;
        }
      }
      else
      {
        a = str2;
        i = 1;
        j = 0;
        continue;
        a = str1;
        i = k;
        if (b(str2)) {
          continue;
        }
        j = 0;
        i = k;
        continue;
      }
      label197:
      i = 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.DXStatService.stat.TokenManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */