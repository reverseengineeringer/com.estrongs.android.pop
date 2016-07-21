package com.estrongs.android.pop.app.compress;

import android.content.Context;
import com.estrongs.io.archive.i;

class bl
  implements Runnable
{
  bl(bk parambk, i parami) {}
  
  public void run()
  {
    cb localcb = new cb(bb.g(b.a), false, true);
    localcb.setButton(-1, bb.g(b.a).getString(2131231270), new bm(this, localcb));
    localcb.setButton(-2, bb.g(b.a).getString(2131231265), new bn(this, localcb));
    localcb.setOnCancelListener(new bo(this));
    localcb.show();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.compress.bl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */