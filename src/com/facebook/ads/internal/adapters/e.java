package com.facebook.ads.internal.adapters;

import android.content.Context;
import android.os.Handler;
import android.view.View;

public class e
{
  private int a = 0;
  private int b = 1000;
  private final Context c;
  private final View d;
  private final int e;
  private final e.a f;
  private final Handler g = new Handler();
  private final Runnable h = new e.1(this);
  private volatile boolean i;
  
  public e(Context paramContext, View paramView, int paramInt, e.a parama)
  {
    c = paramContext;
    d = paramView;
    e = paramInt;
    f = parama;
  }
  
  public void a()
  {
    if (!i) {
      g.postDelayed(h, a);
    }
  }
  
  public void a(int paramInt)
  {
    a = paramInt;
  }
  
  public void b()
  {
    g.removeCallbacks(h);
  }
  
  public void b(int paramInt)
  {
    b = paramInt;
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.adapters.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */