package com.baidu.sapi2.utils.enums;

import android.text.TextUtils;

public enum RegistMode
{
  private String a;
  
  private RegistMode(String paramString)
  {
    a = paramString;
  }
  
  public static RegistMode getDefault()
  {
    return FAST;
  }
  
  public static RegistMode mapStrToValue(String paramString)
  {
    Object localObject;
    if (TextUtils.isEmpty(paramString))
    {
      localObject = getDefault();
      return (RegistMode)localObject;
    }
    RegistMode[] arrayOfRegistMode = values();
    int j = arrayOfRegistMode.length;
    int i = 0;
    for (;;)
    {
      if (i >= j) {
        break label57;
      }
      RegistMode localRegistMode = arrayOfRegistMode[i];
      localObject = localRegistMode;
      if (paramString.equals(localRegistMode.getStrValue())) {
        break;
      }
      i += 1;
    }
    label57:
    return getDefault();
  }
  
  public String getStrValue()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.utils.enums.RegistMode
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */