package com.google.android.gms.internal;

import android.content.SharedPreferences;
import com.google.android.gms.ads.internal.ae;

@me
public abstract class cr<T>
{
  private final String a;
  private final T b;
  
  private cr(String paramString, T paramT)
  {
    a = paramString;
    b = paramT;
    ae.m().a(this);
  }
  
  public static cr<String> a(String paramString)
  {
    paramString = a(paramString, (String)null);
    ae.m().b(paramString);
    return paramString;
  }
  
  public static cr<Integer> a(String paramString, int paramInt)
  {
    return new ct(paramString, Integer.valueOf(paramInt));
  }
  
  public static cr<Long> a(String paramString, long paramLong)
  {
    return new cu(paramString, Long.valueOf(paramLong));
  }
  
  public static cr<Boolean> a(String paramString, Boolean paramBoolean)
  {
    return new cs(paramString, paramBoolean);
  }
  
  public static cr<String> a(String paramString1, String paramString2)
  {
    return new cv(paramString1, paramString2);
  }
  
  public static cr<String> b(String paramString)
  {
    paramString = a(paramString, (String)null);
    ae.m().c(paramString);
    return paramString;
  }
  
  protected abstract T a(SharedPreferences paramSharedPreferences);
  
  public String a()
  {
    return a;
  }
  
  public T b()
  {
    return (T)b;
  }
  
  public T c()
  {
    return (T)ae.n().a(this);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */