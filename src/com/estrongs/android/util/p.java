package com.estrongs.android.util;

import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.ui.view.ag;
import com.estrongs.fs.util.j;

public class p
{
  public static final boolean a(boolean paramBoolean, String paramString1, String paramString2)
  {
    if ((am.aw(paramString1)) && (am.d(paramString1, "mediafire"))) {
      if (paramBoolean)
      {
        if (paramString2.length() < 3)
        {
          ag.a(FexApplication.a(), FexApplication.a().getString(2131428502), 0);
          return false;
        }
      }
      else if (!j.b(paramString1).equals(j.b(paramString2)))
      {
        ag.a(FexApplication.a(), FexApplication.a().getString(2131428503), 0);
        return false;
      }
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.util.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */