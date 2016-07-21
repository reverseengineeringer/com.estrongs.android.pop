package com.flurry.sdk;

import android.os.Build.VERSION;

public final class kh
{
  private final Class<? extends kj> a;
  private final int b;
  
  public kh(Class<? extends kj> paramClass, int paramInt)
  {
    a = paramClass;
    b = paramInt;
  }
  
  public Class<? extends kj> a()
  {
    return a;
  }
  
  public boolean b()
  {
    return (a != null) && (Build.VERSION.SDK_INT >= b);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.kh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */