package com.estrongs.android.pop.app.compress;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.io.a.a.a;

class ad
  implements DialogInterface.OnClickListener
{
  ad(l paraml) {}
  
  public void onClick(DialogInterface arg1, int paramInt)
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
 * Qualified Name:     com.estrongs.android.pop.app.compress.ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */