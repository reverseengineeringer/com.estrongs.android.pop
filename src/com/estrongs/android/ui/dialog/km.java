package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.os.Handler;
import com.estrongs.a.a;
import com.estrongs.android.util.bk;

class km
  implements com.estrongs.a.a.p
{
  km(kh paramkh) {}
  
  public void a(a parama, int paramInt1, int paramInt2)
  {
    if (paramInt2 == 4) {}
    while (paramInt2 != 5) {
      try
      {
        String str1 = a.a();
        if (!bk.a(str1)) {
          kh.c(a).post(new kn(this, str1));
        }
        if (!kh.d(a)) {
          a.dismiss();
        }
        a.a(parama);
        return;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          localException.printStackTrace();
        }
      }
    }
    String str2 = a.a(parama.getTaskResult());
    if (str2 != null) {
      a.b(parama);
    }
    for (;;)
    {
      if (!bk.a(str2))
      {
        if (getTaskResulta != 12) {
          break;
        }
        kh.c(a).post(new ko(this, parama));
      }
      label150:
      if (kh.d(a)) {
        break label216;
      }
      a.dismiss();
      return;
      str2 = a.b();
    }
    if (getTaskResulta == 13) {
      str2 = a.getContext().getString(2131231284);
    }
    for (;;)
    {
      kh.a(a, str2);
      break label150;
      label216:
      break;
      if (getTaskResulta == 14) {
        str2 = a.getContext().getString(2131231731);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.km
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */