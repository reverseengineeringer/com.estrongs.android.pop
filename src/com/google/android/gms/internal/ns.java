package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.concurrent.Future;

@me
public final class ns
{
  public static Future a(Context paramContext, int paramInt)
  {
    return new nv(paramContext, paramInt).g();
  }
  
  public static Future a(Context paramContext, ny paramny)
  {
    return new nu(paramContext, paramny).g();
  }
  
  public static Future a(Context paramContext, boolean paramBoolean)
  {
    return new nt(paramContext, paramBoolean).g();
  }
  
  private static SharedPreferences b(Context paramContext)
  {
    return paramContext.getSharedPreferences("admob", 0);
  }
  
  public static Future b(Context paramContext, ny paramny)
  {
    return new nw(paramContext, paramny).g();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ns
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */