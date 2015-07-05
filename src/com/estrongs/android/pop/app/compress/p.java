package com.estrongs.android.pop.app.compress;

import android.content.Context;
import com.estrongs.io.archive.h;

class p
  implements Runnable
{
  p(o paramo, h paramh) {}
  
  public void run()
  {
    be localbe = new be(l.d(b.a), false, true);
    localbe.setButton(-1, l.d(b.a).getString(2131427339), new q(this, localbe));
    localbe.setButton(-2, l.d(b.a).getString(2131427340), new r(this, localbe));
    localbe.setOnCancelListener(new s(this));
    localbe.show();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.compress.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */