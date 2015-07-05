package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.os.Handler;
import com.estrongs.a.a;
import com.estrongs.android.util.bd;

class kb
  implements com.estrongs.a.a.p
{
  kb(jw paramjw) {}
  
  public void a(a parama, int paramInt1, int paramInt2)
  {
    if (paramInt2 == 4) {}
    while (paramInt2 != 5) {
      try
      {
        String str1 = a.a();
        if (!bd.a(str1)) {
          jw.c(a).post(new kc(this, str1));
        }
        if (!jw.d(a)) {
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
      if (!bd.a(str2))
      {
        if (getTaskResulta != 12) {
          break;
        }
        jw.c(a).post(new kd(this, parama));
      }
      label150:
      if (jw.d(a)) {
        break label216;
      }
      a.dismiss();
      return;
      str2 = a.b();
    }
    if (getTaskResulta == 13) {
      str2 = a.getContext().getString(2131428047);
    }
    for (;;)
    {
      jw.a(a, str2);
      break label150;
      label216:
      break;
      if (getTaskResulta == 14) {
        str2 = a.getContext().getString(2131428048);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.kb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */