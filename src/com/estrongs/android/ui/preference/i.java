package com.estrongs.android.ui.preference;

import com.estrongs.android.ftp.a;
import com.estrongs.android.ftp.k;
import com.estrongs.android.ftp.m;
import com.estrongs.android.pop.ad;

class i
  implements m
{
  i(FtpServerPreference paramFtpServerPreference, k paramk) {}
  
  public void a()
  {
    try
    {
      a locala = a.b();
      if ((locala != null) && (locala.i())) {
        ad.a(b).W();
      }
      a.b(b);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */