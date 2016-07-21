package com.google.android.gms.cast;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.n;
import com.google.android.gms.common.api.w;

public abstract interface d
{
  public abstract w<Status> a(n paramn);
  
  public abstract w<Status> a(n paramn, String paramString1, String paramString2);
  
  @Deprecated
  public abstract w<c> a(n paramn, String paramString, boolean paramBoolean);
  
  public abstract void a(n paramn, double paramDouble);
  
  public abstract void a(n paramn, String paramString);
  
  public abstract void a(n paramn, String paramString, l paraml);
  
  public abstract double b(n paramn);
}

/* Location:
 * Qualified Name:     com.google.android.gms.cast.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */