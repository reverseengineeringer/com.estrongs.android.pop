package com.estrongs.android.view;

import com.estrongs.android.ui.pcs.n;
import com.estrongs.android.ui.pcs.r;
import com.estrongs.android.util.am;
import com.estrongs.fs.impl.m.b;

class ck
  implements n
{
  ck(cj paramcj) {}
  
  public void a(boolean paramBoolean, String paramString1, String paramString2)
  {
    if ((paramBoolean) && (paramString2 != null))
    {
      paramString1 = "SP://" + r.a().e() + "@" + "pcs";
      paramString2 = (b)a.a;
      paramString2.setPath(paramString1);
      paramString2.setAbsolutePath(paramString1);
      paramString2.setDisplayName(am.aj(paramString1));
      a.b.a.a(paramString2, null);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.ck
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */