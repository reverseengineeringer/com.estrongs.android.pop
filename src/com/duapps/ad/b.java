package com.duapps.ad;

import android.text.TextUtils;

public class b
{
  public static final b a = new b(1000, "Network Error");
  public static final b b = new b(1001, "No Fill");
  public static final b c = new b(1002, "Ad was re-loaded too frequently");
  public static final b d = new b(2000, "Server Error");
  public static final b e = new b(2001, "Internal Error");
  public static final b f = new b(3000, "Time Out");
  public static final b g = new b(3001, "unknow error");
  public static final b h = new b(1003, "image download failed");
  @Deprecated
  public static final b i = new b(2002, "Native ad failed to load due to missing properties");
  private final int j;
  private final String k;
  
  public b(int paramInt, String paramString)
  {
    String str = paramString;
    if (TextUtils.isEmpty(paramString)) {
      str = "unknown error";
    }
    j = paramInt;
    k = str;
  }
  
  public int a()
  {
    return j;
  }
  
  public String b()
  {
    return k;
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */