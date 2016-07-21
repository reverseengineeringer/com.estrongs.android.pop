package com.flurry.sdk;

import android.text.TextUtils;
import java.util.Arrays;

public class jd
{
  private static String a = jd.class.getName();
  
  public static String a(String paramString)
  {
    String str2 = "a=" + js.a().d();
    String str1 = str2;
    if (!TextUtils.isEmpty(paramString)) {
      str1 = String.format("%s&%s", new Object[] { str2, "cid=" + b(paramString) });
    }
    return str1;
  }
  
  private static String b(String paramString)
  {
    Object localObject2 = null;
    Object localObject3 = null;
    Object localObject1 = localObject3;
    if (paramString != null)
    {
      localObject1 = localObject3;
      if (paramString.trim().length() <= 0) {}
    }
    for (;;)
    {
      try
      {
        paramString = lt.f(paramString);
        if (paramString != null)
        {
          int i = paramString.length;
          if (i != 20) {}
        }
      }
      catch (Exception paramString)
      {
        localObject1 = localObject2;
      }
      try
      {
        kg.a(5, a, "syndication hashedId is:" + new String(paramString));
        localObject1 = paramString;
        return lt.a((byte[])localObject1);
      }
      catch (Exception localException)
      {
        for (;;)
        {
          String str = paramString;
        }
      }
      kg.a(6, a, "sha1 is not " + 20 + " bytes long: " + Arrays.toString(paramString));
      paramString = null;
      continue;
      kg.a(6, a, "Exception in getHashedSyndicationIdString()");
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.jd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */