package com.estrongs.android.ui.preference;

import android.preference.Preference;
import com.estrongs.android.pop.ad;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.e;
import java.nio.charset.Charset;

class l
  implements e
{
  l(k paramk, String paramString) {}
  
  public void a(String paramString1, String paramString2, int paramInt)
  {
    if (!a.equals(paramString1)) {
      paramInt = 1;
    }
    try
    {
      paramString2 = Charset.forName(paramString1);
      if (paramString2 == null) {
        paramInt = 0;
      }
    }
    catch (Exception paramString2)
    {
      for (;;)
      {
        paramInt = 0;
      }
      ag.a(b.a, 2131427668, 0);
    }
    if (paramInt != 0)
    {
      ad.a(b.a).E(paramString1);
      com.estrongs.android.ftp.a.f = paramString1;
      b.a.d.setSummary(b.a.getText(2131427666) + paramString1);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */