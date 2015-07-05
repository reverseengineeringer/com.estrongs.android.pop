package com.estrongs.fs.b;

import com.estrongs.android.pop.app.LocalFileSharingActivity;
import com.estrongs.android.pop.zeroconf.u;
import com.estrongs.android.pop.zeroconf.v;
import java.net.Inet4Address;
import java.util.ArrayList;

class av
  implements v
{
  av(au paramau) {}
  
  public void a(u paramu)
  {
    if ((paramu.a()) && (f != null) && ((au.c(a) instanceof LocalFileSharingActivity)))
    {
      au.a(f.getAddress(), b);
      au.a(a).add(f.getHostAddress());
      ((LocalFileSharingActivity)au.c(a)).runOnUiThread(new aw(this));
    }
  }
  
  public void b(u paramu) {}
}

/* Location:
 * Qualified Name:     com.estrongs.fs.b.av
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */