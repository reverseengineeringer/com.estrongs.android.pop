package com.estrongs.android.ui.e;

import android.content.Context;
import android.os.Handler;
import com.estrongs.android.pop.app.c.m;
import com.estrongs.android.ui.dialog.ProgressDialog;

final class bu
  extends Thread
{
  bu(Handler paramHandler, ProgressDialog[] paramArrayOfProgressDialog, Context paramContext) {}
  
  public void run()
  {
    m.a().e();
    a.post(new bv(this));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.bu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */