package com.estrongs.android.ui.controller;

import android.support.v7.view.menu.i;
import android.support.v7.view.menu.x;
import android.support.v7.view.menu.y;

class ai
  implements y
{
  private y b;
  private x c;
  
  public ai(h paramh, y paramy, x paramx)
  {
    b = paramy;
    c = paramx;
  }
  
  public void onCloseMenu(i parami, boolean paramBoolean)
  {
    if (b != null) {
      b.onCloseMenu(parami, paramBoolean);
    }
  }
  
  public boolean onOpenSubMenu(i parami)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (b != null)
    {
      bool1 = bool2;
      if (b != this) {
        bool1 = b.onOpenSubMenu(parami);
      }
    }
    return bool1;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.controller.ai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */