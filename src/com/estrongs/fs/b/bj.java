package com.estrongs.fs.b;

import android.app.Activity;
import com.estrongs.a.a.h;
import com.estrongs.android.d.e;
import com.estrongs.android.pop.esclasses.ESActivity;

class bj
  implements Runnable
{
  bj(bc parambc) {}
  
  public void run()
  {
    if (ESActivity.H() == null)
    {
      new Thread(new bk(this)).start();
      return;
    }
    e locale = new e(ESActivity.H(), new bl(this), true);
    locale.setTitle(bc.b(a).getString(2131231721));
    locale.setMessage(bc.b(a).getString(2131231340) + "\n" + ea).a);
    locale.show();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.b.bj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */