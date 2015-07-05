package com.estrongs.fs.b;

import android.app.Activity;
import com.estrongs.a.a.h;
import com.estrongs.android.a.e;
import com.estrongs.android.pop.esclasses.ESActivity;

class bh
  implements Runnable
{
  bh(ba paramba) {}
  
  public void run()
  {
    if (ESActivity.A() == null)
    {
      new Thread(new bi(this)).start();
      return;
    }
    e locale = new e(ESActivity.A(), new bj(this), true);
    locale.setTitle(ba.b(a).getString(2131427401));
    locale.setMessage(ba.b(a).getString(2131427810) + "\n" + ea).a);
    locale.show();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.b.bh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */