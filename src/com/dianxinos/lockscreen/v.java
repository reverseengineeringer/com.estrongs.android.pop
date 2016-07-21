package com.dianxinos.lockscreen;

import android.content.Context;
import android.view.View;

public abstract class v
{
  private w a;
  
  public v(Context paramContext) {}
  
  public abstract View a();
  
  void a(w paramw)
  {
    a = paramw;
  }
  
  protected void b()
  {
    if (a != null) {
      a.a();
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */