package com.estrongs.android.ui.dialog;

import com.estrongs.a.a;
import com.estrongs.a.a.l;
import com.estrongs.a.a.m;
import com.estrongs.android.util.bk;

class bp
  implements l
{
  long a = 0L;
  
  bp(bl parambl) {}
  
  public void a(a parama, m paramm)
  {
    long l = System.currentTimeMillis();
    if (l - a > 800L)
    {
      a = l;
      bk.a(new bq(this));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.bp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */