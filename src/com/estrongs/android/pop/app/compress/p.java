package com.estrongs.android.pop.app.compress;

import android.content.Context;
import com.estrongs.io.archive.i;

class p
  implements Runnable
{
  p(o paramo, i parami) {}
  
  public void run()
  {
    cb localcb = new cb(l.d(b.a), false, true);
    localcb.setButton(-1, l.d(b.a).getString(2131231270), new q(this, localcb));
    localcb.setButton(-2, l.d(b.a).getString(2131231265), new r(this, localcb));
    localcb.setOnCancelListener(new s(this));
    localcb.show();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.compress.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */