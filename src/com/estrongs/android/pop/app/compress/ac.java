package com.estrongs.android.pop.app.compress;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class ac
  implements DialogInterface.OnClickListener
{
  ac(l paraml) {}
  
  public void onClick(DialogInterface arg1, int paramInt)
  {
    l.a(a, l.g(a).a());
    synchronized (l.a(a))
    {
      l.a(a).notify();
      l.g(a).dismiss();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.compress.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */