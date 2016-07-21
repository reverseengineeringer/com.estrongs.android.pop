package com.estrongs.io.archive.sevenzip;

import android.app.Activity;
import android.os.ConditionVariable;
import com.estrongs.a.a;
import com.estrongs.android.pop.ac;
import com.estrongs.android.util.ao;
import com.estrongs.fs.impl.local.m;
import java.io.File;

final class o
  implements com.estrongs.a.a.o
{
  o(File paramFile, boolean[] paramArrayOfBoolean, Activity paramActivity, String paramString, boolean paramBoolean, ConditionVariable paramConditionVariable, Runnable paramRunnable) {}
  
  public void a(a parama, boolean paramBoolean)
  {
    boolean bool = true;
    if (paramBoolean)
    {
      try
      {
        parama = new File(a.getPath());
        if (ac.a() < 9) {
          break label157;
        }
        parama = new ao(parama);
        parama.a("setExecutable", new Class[] { Boolean.TYPE, Boolean.TYPE }, new Object[] { Boolean.valueOf(true), Boolean.valueOf(false) });
        parama.a("setReadable", new Class[] { Boolean.TYPE, Boolean.TYPE }, new Object[] { Boolean.valueOf(true), Boolean.valueOf(false) });
        if (!bool)
        {
          b[0] = false;
          f.a(c, d);
        }
      }
      catch (Exception parama)
      {
        for (;;)
        {
          label142:
          b[0] = false;
          f.a(c, d);
        }
      }
      if (!e) {
        break label217;
      }
      f.open();
    }
    label157:
    label217:
    while (!paramBoolean)
    {
      return;
      bool = m.a(a.getPath(), "777", false);
      break;
      b[0] = false;
      f.a(c, d);
      break label142;
    }
    c.runOnUiThread(new p(this));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.io.archive.sevenzip.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */