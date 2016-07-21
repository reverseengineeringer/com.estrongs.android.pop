package com.estrongs.android.pop.utils;

import android.content.Context;
import android.os.AsyncTask;
import com.estrongs.fs.impl.local.m;
import com.estrongs.fs.impl.local.r;
import com.estrongs.io.archive.d;
import com.estrongs.io.archive.i;
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
      paramVarArgs.put("charset_name", com.estrongs.android.util.e.a[0]);
      paramVarArgs.put("password", "s!*123.estrongs");
      paramVarArgs = d.b(e, paramVarArgs);
      r localr = m.f("/data/data/" + f);
      if (localr != null) {
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
      a.a(c, 2131231019);
    }
  }
  
  protected void onPreExecute()
  {
    a.a(c, 2131231028);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */