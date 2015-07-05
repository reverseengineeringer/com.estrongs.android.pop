package com.estrongs.android.ui.e;

import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.pcs.n;
import com.estrongs.android.util.bd;
import com.estrongs.android.view.aw;
import com.estrongs.fs.impl.pcs.b;
import com.estrongs.fs.m;

class am
  implements n
{
  am(al paramal) {}
  
  public void a(boolean paramBoolean, String paramString1, String paramString2)
  {
    if ((paramBoolean) && (bd.b(paramString2)))
    {
      paramString1 = a.a.k.y();
      if (paramString1 != null) {
        paramString1.b(true);
      }
      b.a().setFileType(m.Q);
      ad.a(a.a.b).e(System.currentTimeMillis());
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.am
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */