package com.google.android.gms.internal;

import android.os.Handler;
import com.google.android.gms.ads.internal.client.m;
import com.google.android.gms.ads.internal.util.client.a;
import com.google.android.gms.common.api.y;

@me
public abstract class gk
  implements y
{
  protected qa a;
  
  public gk(qa paramqa)
  {
    a = paramqa;
  }
  
  public abstract void a();
  
  protected void a(String paramString1, String paramString2)
  {
    a.a.post(new gn(this, paramString1, paramString2));
  }
  
  protected void a(String paramString1, String paramString2, int paramInt)
  {
    a.a.post(new gm(this, paramString1, paramString2, paramInt));
  }
  
  protected void a(String paramString1, String paramString2, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    a.a.post(new gl(this, paramString1, paramString2, paramInt1, paramInt2, paramBoolean));
  }
  
  public abstract boolean a(String paramString);
  
  protected String b(String paramString)
  {
    return m.a().a(paramString);
  }
  
  public void b() {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */