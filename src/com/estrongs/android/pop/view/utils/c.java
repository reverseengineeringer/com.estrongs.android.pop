package com.estrongs.android.pop.view.utils;

import android.app.Activity;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.utils.a;
import com.estrongs.android.util.am;
import com.estrongs.fs.h;
import java.io.File;

final class c
  extends Thread
{
  c(String paramString1, com.estrongs.fs.d paramd, String paramString2, Activity paramActivity, String paramString3, boolean paramBoolean, File paramFile, Runnable paramRunnable)
  {
    super(paramString1);
  }
  
  public void run()
  {
    h localh = a.j(b);
    if (localh == null)
    {
      a.a(c, c.getString(2131428087, new Object[] { am.E(b) }));
      return;
    }
    boolean bool = ad.a(FexApplication.a()).o();
    a.a(c, new d(this, bool, localh));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.utils.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */