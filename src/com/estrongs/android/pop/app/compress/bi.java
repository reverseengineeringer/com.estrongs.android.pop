package com.estrongs.android.pop.app.compress;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.io.a.a.a;

class bi
  implements DialogInterface.OnClickListener
{
  bi(bb parambb) {}
  
  public void onClick(DialogInterface arg1, int paramInt)
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
 * Qualified Name:     com.estrongs.android.pop.app.compress.bi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */