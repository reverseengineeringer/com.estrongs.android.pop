package com.google.android.gms.internal;

import android.os.Bundle;
import com.google.android.gms.ads.internal.ae;

@me
public class nn
{
  private final Object a = new Object();
  private int b;
  private int c;
  private final nk d;
  private final String e;
  
  nn(nk paramnk, String paramString)
  {
    d = paramnk;
    e = paramString;
  }
  
  public nn(String paramString)
  {
    this(ae.h(), paramString);
  }
  
  public Bundle a()
  {
    synchronized (a)
    {
      Bundle localBundle = new Bundle();
      localBundle.putInt("pmnli", b);
      localBundle.putInt("pmnll", c);
      return localBundle;
    }
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    synchronized (a)
    {
      b = paramInt1;
      c = paramInt2;
      d.a(e, this);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.nn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */