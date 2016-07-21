package com.estrongs.fs.b;

import com.estrongs.android.pop.app.LocalFileSharingActivity;
import com.estrongs.android.pop.zeroconf.u;
import com.estrongs.android.pop.zeroconf.v;
import java.net.Inet4Address;
import java.util.ArrayList;

class ax
  implements v
{
  ax(aw paramaw) {}
  
  public void a(u paramu)
  {
    if ((paramu.a()) && (f != null) && ((aw.c(a) instanceof LocalFileSharingActivity)))
    {
      aw.a(f.getAddress(), b);
      aw.a(a).add(f.getHostAddress());
      ((LocalFileSharingActivity)aw.c(a)).runOnUiThread(new ay(this));
    }
  }
  
  public void b(u paramu) {}
}

/* Location:
 * Qualified Name:     com.estrongs.fs.b.ax
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */