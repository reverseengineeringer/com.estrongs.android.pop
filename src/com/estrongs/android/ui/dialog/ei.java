package com.estrongs.android.ui.dialog;

import com.estrongs.a.a;
import com.estrongs.a.a.l;
import com.estrongs.a.a.m;

class ei
  implements l
{
  long a = -1L;
  
  ei(eb parameb) {}
  
  public void a(a parama, m paramm)
  {
    if ((a == -1L) || (System.currentTimeMillis() - a > 200L))
    {
      a = System.currentTimeMillis();
      eb.e(b);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.ei
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */