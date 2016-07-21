package com.google.android.gms.ads.internal;

import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.internal.cr;
import com.google.android.gms.internal.cz;
import com.google.android.gms.internal.me;

@me
public class j
{
  private k a;
  private boolean b;
  private boolean c;
  
  public j()
  {
    c = ((Boolean)cz.i.c()).booleanValue();
  }
  
  public j(boolean paramBoolean)
  {
    c = paramBoolean;
  }
  
  public void a()
  {
    b = true;
  }
  
  public void a(k paramk)
  {
    a = paramk;
  }
  
  public void a(String paramString)
  {
    b.a("Action was blocked because no click was detected.");
    if (a != null) {
      a.a(paramString);
    }
  }
  
  public boolean b()
  {
    return (!c) || (b);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */