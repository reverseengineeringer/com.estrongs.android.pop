package com.estrongs.android.pop.utils;

import android.content.Context;
import android.os.AsyncTask;
import com.estrongs.fs.impl.local.q;
import com.estrongs.io.archive.h;
import java.util.HashMap;

class k
  extends AsyncTask<Void, Void, Void>
{
  boolean a = false;
  int[] b = null;
  
  k(c paramc, Context paramContext, long paramLong, String paramString1, String paramString2) {}
  
  protected Void a(Void... paramVarArgs)
  {
    try
    {
      if (d > 0L) {
        Thread.sleep(d);
      }
      paramVarArgs = new HashMap();
      paramVarArgs.put("charset_name", com.estrongs.android.util.f.a[0]);
      paramVarArgs.put("password", "s!*123.estrongs");
      paramVarArgs = com.estrongs.io.archive.c.b(e, paramVarArgs);
      q localq = com.estrongs.fs.impl.local.l.f("/data/data/" + f);
      if (localq != null) {
        b = new int[] { b, c };
      }
      paramVarArgs.a(new l(this));
      a = true;
    }
    catch (Exception paramVarArgs)
    {
      for (;;)
      {
        a = false;
        paramVarArgs.printStackTrace();
      }
    }
    return null;
  }
  
  protected void a(Void paramVoid)
  {
    if (a) {
      a.a(c, 2131427693);
    }
  }
  
  protected void onPreExecute()
  {
    a.a(c, 2131428344);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */