package com.google.android.gms.internal;

import android.view.View;
import com.google.android.gms.ads.internal.o;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.dynamic.h;

@me
public final class di
  extends dl
{
  private final o a;
  private final String b;
  private final String c;
  
  public di(o paramo, String paramString1, String paramString2)
  {
    a = paramo;
    b = paramString1;
    c = paramString2;
  }
  
  public String a()
  {
    return b;
  }
  
  public void a(e parame)
  {
    if (parame == null) {
      return;
    }
    a.b((View)h.a(parame));
  }
  
  public String b()
  {
    return c;
  }
  
  public void c()
  {
    a.y();
  }
  
  public void d()
  {
    a.r();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.di
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */