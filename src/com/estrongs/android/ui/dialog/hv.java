package com.estrongs.android.ui.dialog;

import com.estrongs.a.a;
import com.estrongs.a.a.l;
import com.estrongs.a.a.m;

class hv
  implements l
{
  long a = 0L;
  
  hv(hn paramhn) {}
  
  public void a(a parama, m paramm)
  {
    long l = System.currentTimeMillis();
    if (l - a > 800L)
    {
      a = l;
      hn.f(b);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.hv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */