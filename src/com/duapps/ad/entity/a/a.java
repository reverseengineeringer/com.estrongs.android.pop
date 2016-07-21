package com.duapps.ad.entity.a;

import android.content.Context;
import com.duapps.ad.base.ap;
import com.duapps.ad.d;

public abstract class a<T>
{
  public volatile boolean b;
  public volatile boolean c;
  public long d;
  public volatile boolean e;
  protected Context f;
  protected int g;
  protected d h;
  
  public a(Context paramContext, int paramInt, long paramLong)
  {
    d = paramLong;
    f = paramContext;
    g = paramInt;
    ap.a(paramInt);
  }
  
  public abstract void a();
  
  public abstract void a(int paramInt);
  
  public void a(d paramd)
  {
    h = paramd;
  }
  
  public abstract int c();
  
  public abstract T d();
}

/* Location:
 * Qualified Name:     com.duapps.ad.entity.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */