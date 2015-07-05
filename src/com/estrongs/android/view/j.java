package com.estrongs.android.view;

import com.estrongs.android.pop.app.compress.be;
import com.estrongs.io.archive.h;

class j
  implements Runnable
{
  j(e parame, h paramh) {}
  
  public void run()
  {
    be localbe = new be(b.ad, false, true);
    localbe.setButton(-1, b.l(2131427339), new k(this, localbe));
    localbe.setButton(-2, b.l(2131427340), new l(this, localbe));
    localbe.show();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */