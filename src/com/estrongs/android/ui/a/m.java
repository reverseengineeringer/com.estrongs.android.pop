package com.estrongs.android.ui.a;

import android.os.Handler;
import com.estrongs.android.appinfo.o;
import com.estrongs.android.util.bd;

class m
  extends o
{
  m(k paramk) {}
  
  public void b()
  {
    bd.n().removeCallbacks(a.a);
    bd.n().postDelayed(a.a, 100L);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.a.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */