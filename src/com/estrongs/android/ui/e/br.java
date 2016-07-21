package com.estrongs.android.ui.e;

import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.pcs.q;
import com.estrongs.android.ui.pcs.u;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bk;
import com.estrongs.android.view.cr;
import com.estrongs.fs.w;

class br
  implements q
{
  br(m paramm) {}
  
  public void a(boolean paramBoolean, String paramString1, String paramString2)
  {
    if ((paramBoolean) && (bk.b(paramString2)))
    {
      paramString1 = com.estrongs.fs.impl.pcs.b.a().getPath();
      paramString2 = m.a(a).O();
      if (paramString2 != null)
      {
        if (!ap.e(paramString1, paramString2.c())) {
          break label188;
        }
        if ((ap.aJ(paramString1)) && (bk.b(u.a().f())) && (!u.a().f().equals(u.a().e()))) {
          m.a(a, u.a().h());
        }
        paramString2.b(true);
      }
    }
    for (;;)
    {
      com.estrongs.fs.a.b.a().b(ap.k(), null);
      if ((bk.b(u.a().f())) && (!u.a().f().equals(u.a().e()))) {
        com.estrongs.fs.a.b.a().b(u.a().h(), null);
      }
      m.a(a).T();
      com.estrongs.fs.impl.pcs.b.a().setFileType(w.P);
      ad.a(m.a(a)).e(System.currentTimeMillis());
      return;
      label188:
      if ((bk.b(u.a().f())) && (!u.a().f().equals(u.a().e()))) {
        m.a(a, u.a().h());
      }
      if (ap.aJ(paramString2.c())) {
        paramString2.j(paramString1);
      } else {
        paramString2.j("pcs://");
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.br
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */