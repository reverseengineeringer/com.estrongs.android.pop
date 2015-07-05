package com.estrongs.android.ui.dialog;

import com.estrongs.a.a;
import com.estrongs.a.a.l;
import com.estrongs.a.a.m;
import com.estrongs.android.util.bd;

class bn
  implements l
{
  long a = 0L;
  
  bn(bj parambj) {}
  
  public void a(a parama, m paramm)
  {
    long l = System.currentTimeMillis();
    if (l - a > 800L)
    {
      a = l;
      bd.a(new bo(this));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.bn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */