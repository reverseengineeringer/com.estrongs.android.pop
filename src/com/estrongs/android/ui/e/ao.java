package com.estrongs.android.ui.e;

import com.estrongs.android.pop.ad;
import com.estrongs.android.ui.pcs.n;
import com.estrongs.android.ui.pcs.r;
import com.estrongs.fs.impl.pcs.b;
import com.estrongs.fs.m;

class ao
  implements n
{
  ao(an paraman) {}
  
  public void a(boolean paramBoolean, String paramString1, String paramString2)
  {
    paramString1 = r.a();
    if (paramString1.i() != null)
    {
      if (paramString2 != null)
      {
        paramString1.i().a(true, null, paramString2);
        b.a().setFileType(m.Q);
        ad.a(a.a.b).e(System.currentTimeMillis());
      }
    }
    else {
      return;
    }
    paramString1.i().a(false, null, null);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.ao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */