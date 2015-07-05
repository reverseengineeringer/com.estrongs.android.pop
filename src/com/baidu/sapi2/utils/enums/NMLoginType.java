package com.baidu.sapi2.utils.enums;

import android.text.TextUtils;

public enum NMLoginType
{
  private String a;
  
  private NMLoginType(String paramString)
  {
    a = paramString;
  }
  
  public static NMLoginType mapStrToValue(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    for (;;)
    {
      return null;
      NMLoginType[] arrayOfNMLoginType = values();
      int j = arrayOfNMLoginType.length;
      int i = 0;
      while (i < j)
      {
        NMLoginType localNMLoginType = arrayOfNMLoginType[i];
        if (paramString.equals(localNMLoginType.getName())) {
          return localNMLoginType;
        }
        i += 1;
      }
    }
  }
  
  public String getName()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.utils.enums.NMLoginType
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */