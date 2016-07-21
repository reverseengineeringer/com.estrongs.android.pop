package com.estrongs.android.pop.app.compress;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.estrongs.io.a.a.a;

class bj
  implements DialogInterface.OnCancelListener
{
  bj(bb parambb) {}
  
  public void onCancel(DialogInterface arg1)
  {
    bb.a(a, null);
    synchronized (bb.b(a))
    {
      bb.b(a).e();
      bb.b(a).notify();
      bb.d(a).dismiss();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.compress.bj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */