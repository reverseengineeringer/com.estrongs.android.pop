package com.estrongs.android.ui.e;

import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.pcs.q;
import com.estrongs.android.util.bk;
import com.estrongs.android.view.cr;
import com.estrongs.fs.impl.pcs.b;
import com.estrongs.fs.w;

class ab
  implements q
{
  ab(aa paramaa) {}
  
  public void a(boolean paramBoolean, String paramString1, String paramString2)
  {
    if ((paramBoolean) && (bk.b(paramString2)))
    {
      paramString1 = m.a(a.a).O();
      if (paramString1 != null) {
        paramString1.b(true);
      }
      b.a().setFileType(w.P);
      ad.a(m.a(a.a)).e(System.currentTimeMillis());
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */