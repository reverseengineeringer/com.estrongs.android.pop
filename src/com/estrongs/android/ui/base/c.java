package com.estrongs.android.ui.base;

import android.support.v7.view.menu.i;
import android.support.v7.view.menu.x;
import android.support.v7.view.menu.y;

public class c
  implements y
{
  private y a;
  private x b;
  
  public c(y paramy, x paramx)
  {
    a = paramy;
    b = paramx;
  }
  
  public void onCloseMenu(i parami, boolean paramBoolean)
  {
    if (a != null) {
      a.onCloseMenu(parami, paramBoolean);
    }
  }
  
  public boolean onOpenSubMenu(i parami)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (a != null)
    {
      bool1 = bool2;
      if (a != this) {
        bool1 = a.onOpenSubMenu(parami);
      }
    }
    return bool1;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.base.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */