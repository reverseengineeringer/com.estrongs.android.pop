package com.estrongs.android.util;

import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.ui.view.ak;
import com.estrongs.fs.util.j;

public class r
{
  public static final boolean a(boolean paramBoolean, String paramString1, String paramString2)
  {
    if ((ap.aG(paramString1)) && (ap.d(paramString1, "mediafire"))) {
      if (paramBoolean)
      {
        if (paramString2.length() < 3)
        {
          ak.a(FexApplication.a(), FexApplication.a().getString(2131231695), 0);
          return false;
        }
      }
      else if (!j.b(paramString1).equals(j.b(paramString2)))
      {
        ak.a(FexApplication.a(), FexApplication.a().getString(2131231694), 0);
        return false;
      }
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.util.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */