package com.estrongs.android.ui.e;

import com.estrongs.android.ui.pcs.q;
import com.estrongs.android.ui.pcs.u;
import com.estrongs.fs.impl.pcs.b;
import com.estrongs.fs.w;

class ad
  implements q
{
  ad(ac paramac) {}
  
  public void a(boolean paramBoolean, String paramString1, String paramString2)
  {
    paramString1 = u.a();
    if (paramString1.i() != null)
    {
      if (paramString2 != null)
      {
        paramString1.i().a(true, null, paramString2);
        b.a().setFileType(w.P);
        com.estrongs.android.pop.ad.a(m.a(a.a)).e(System.currentTimeMillis());
      }
    }
    else {
      return;
    }
    paramString1.i().a(false, null, null);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */