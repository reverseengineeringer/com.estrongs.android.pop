package com.estrongs.android.pop.app.compress;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.estrongs.io.a.a.a;

class n
  implements DialogInterface.OnCancelListener
{
  n(l paraml) {}
  
  public void onCancel(DialogInterface arg1)
  {
    l.a(a, null);
    synchronized (l.a(a))
    {
      l.a(a).e();
      l.a(a).notify();
      l.g(a).dismiss();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.compress.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */