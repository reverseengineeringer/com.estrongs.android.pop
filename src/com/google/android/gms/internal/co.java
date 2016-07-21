package com.google.android.gms.internal;

import android.text.TextUtils;

@me
public final class co
{
  private String a;
  private int b = -1;
  
  public co()
  {
    this((String)cz.b.b(), -1);
  }
  
  public co(String paramString)
  {
    this(paramString, -1);
  }
  
  public co(String paramString, int paramInt)
  {
    if (TextUtils.isEmpty(paramString)) {
      paramString = (String)cz.b.b();
    }
    for (;;)
    {
      a = paramString;
      b = paramInt;
      return;
    }
  }
  
  public String a()
  {
    return a;
  }
  
  public int b()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.co
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */