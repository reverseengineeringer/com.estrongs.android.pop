package com.google.android.gms.internal;

import android.os.Handler;
import com.google.android.gms.ads.internal.ae;

@me
public class gh
  extends np
{
  final qa a;
  final gk b;
  private final String c;
  
  gh(qa paramqa, gk paramgk, String paramString)
  {
    a = paramqa;
    b = paramgk;
    c = paramString;
    ae.r().a(this);
  }
  
  public void a()
  {
    try
    {
      b.a(c);
      return;
    }
    finally
    {
      oe.a.post(new gi(this));
    }
  }
  
  public void b()
  {
    b.a();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */