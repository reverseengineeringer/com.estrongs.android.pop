package com.estrongs.android.view;

import com.estrongs.android.ui.pcs.q;
import com.estrongs.android.ui.pcs.u;
import com.estrongs.android.util.ap;
import com.estrongs.fs.impl.r.b;

class el
  implements q
{
  el(ek paramek) {}
  
  public void a(boolean paramBoolean, String paramString1, String paramString2)
  {
    if ((paramBoolean) && (paramString2 != null))
    {
      paramString1 = "SP://" + u.a().e() + "@" + "pcs";
      paramString2 = (b)a.a;
      paramString2.setPath(paramString1);
      paramString2.setAbsolutePath(paramString1);
      paramString2.setDisplayName(ap.at(paramString1));
      a.b.c.a.a(paramString2, null);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.el
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */