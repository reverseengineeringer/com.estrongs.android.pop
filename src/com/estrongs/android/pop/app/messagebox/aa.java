package com.estrongs.android.pop.app.messagebox;

import android.text.TextUtils;
import android.util.Log;

class aa
  implements com.dianxinos.library.notify.e
{
  aa(z paramz) {}
  
  public void onDataArrive(String paramString1, String paramString2)
  {
    if ((paramString1 != null) && (n.a.equals(paramString1)))
    {
      Log.d("MessageBoxRecommend", "Message Box All IData CallBack==" + paramString2);
      if (!TextUtils.isEmpty(paramString2)) {
        e.a().a(new ab(this, paramString2));
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.messagebox.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */