package com.estrongs.android.ui.e;

import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.pcs.n;
import com.estrongs.android.ui.pcs.r;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bd;
import com.estrongs.android.view.aw;
import com.estrongs.fs.m;

class bu
  implements n
{
  bu(w paramw) {}
  
  public void a(boolean paramBoolean, String paramString1, String paramString2)
  {
    if ((paramBoolean) && (bd.b(paramString2)))
    {
      paramString1 = com.estrongs.fs.impl.pcs.b.a().getPath();
      paramString2 = a.k.y();
      if (paramString2 != null)
      {
        if (!am.e(paramString1, paramString2.c())) {
          break label188;
        }
        if ((am.az(paramString1)) && (bd.b(r.a().f())) && (!r.a().f().equals(r.a().e()))) {
          w.a(a, r.a().h());
        }
        paramString2.b(true);
      }
    }
    for (;;)
    {
      com.estrongs.fs.a.b.a().b(am.k(), null);
      if ((bd.b(r.a().f())) && (!r.a().f().equals(r.a().e()))) {
        com.estrongs.fs.a.b.a().b(r.a().h(), null);
      }
      a.k.E();
      com.estrongs.fs.impl.pcs.b.a().setFileType(m.Q);
      ad.a(a.b).e(System.currentTimeMillis());
      return;
      label188:
      if ((bd.b(r.a().f())) && (!r.a().f().equals(r.a().e()))) {
        w.a(a, r.a().h());
      }
      if (am.az(paramString2.c())) {
        paramString2.g(paramString1);
      } else {
        paramString2.g("pcs://");
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.bu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */