package com.estrongs.android.pop.app.messagebox;

import android.text.TextUtils;
import android.util.Log;

class ac
  implements com.dianxinos.library.notify.e
{
  ac(z paramz) {}
  
  public void onDataArrive(String paramString1, String paramString2)
  {
    if ((paramString1 != null) && (n.b.equals(paramString1)))
    {
      Log.d("MessageBoxRecommend", "Message Box Part IData CallBack==" + paramString2);
      if (!TextUtils.isEmpty(paramString2)) {
        e.a().a(new ad(this, paramString2));
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.messagebox.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */