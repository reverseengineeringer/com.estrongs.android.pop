package com.estrongs.android.ui.e;

import android.content.Context;
import android.os.Handler;
import com.estrongs.android.pop.app.a.ao;
import com.estrongs.android.ui.dialog.ProgressDialog;

final class bw
  extends Thread
{
  bw(Handler paramHandler, ProgressDialog[] paramArrayOfProgressDialog, Context paramContext) {}
  
  public void run()
  {
    ao.a().e();
    a.post(new bx(this));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.bw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */