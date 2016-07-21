package com.estrongs.android.pop.app.compress;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class bh
  implements DialogInterface.OnClickListener
{
  bh(bb parambb) {}
  
  public void onClick(DialogInterface arg1, int paramInt)
  {
    bb.a(a, bb.d(a).a());
    synchronized (bb.b(a))
    {
      bb.b(a).notify();
      bb.d(a).dismiss();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.compress.bh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */