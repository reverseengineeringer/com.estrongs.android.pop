package com.estrongs.android.pop.app.a;

import android.text.TextUtils;
import com.estrongs.android.pop.app.messagebox.n;

final class b
  implements com.dianxinos.library.notify.e
{
  public void onDataArrive(String paramString1, String paramString2)
  {
    if ((n.d.equals(paramString1)) && (!TextUtils.isEmpty(paramString2))) {
      com.estrongs.android.pop.app.messagebox.e.a().a(new c(this, paramString2));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */