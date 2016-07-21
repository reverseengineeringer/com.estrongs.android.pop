package com.estrongs.android.pop.app.unlock;

import android.text.TextUtils;
import com.estrongs.android.util.l;

class n
  implements com.dianxinos.library.notify.e
{
  n(m paramm) {}
  
  public void onDataArrive(String paramString1, String paramString2)
  {
    if ((paramString1 != null) && (com.estrongs.android.pop.app.messagebox.n.c.equals(paramString1)) && (!TextUtils.isEmpty(paramString2)))
    {
      l.c(paramString2);
      com.estrongs.android.pop.app.messagebox.e.a().a(new o(this, paramString2));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.unlock.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */