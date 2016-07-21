package com.estrongs.android.ui.dialog;

import com.estrongs.a.a;
import com.estrongs.a.a.l;
import com.estrongs.a.a.m;

class el
  implements l
{
  long a = -1L;
  
  el(ee paramee) {}
  
  public void a(a parama, m paramm)
  {
    if ((a == -1L) || (System.currentTimeMillis() - a > 200L))
    {
      a = System.currentTimeMillis();
      ee.h(b);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.el
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */