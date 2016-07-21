package com.estrongs.android.pop.app.analysis;

import android.content.Context;
import android.os.AsyncTask;
import com.estrongs.android.a.b;
import com.estrongs.android.a.b.f;

final class l
  extends AsyncTask<Void, Void, m>
{
  l(boolean paramBoolean, f paramf, Context paramContext, o paramo) {}
  
  protected m a(Void... paramVarArgs)
  {
    if (!a) {
      b.a().a(b);
    }
    return k.a(c, b);
  }
  
  protected void a(m paramm)
  {
    long l2 = 0L;
    int i = 0;
    boolean bool;
    long l1;
    if (d != null)
    {
      if (paramm != null) {
        break label90;
      }
      bool = true;
      l1 = 0L;
    }
    for (;;)
    {
      com.estrongs.android.util.l.b("appInfo", "isUninstalled = " + bool + " , processCount = " + i + " , cacheSize = " + l1 + ", memorySize = " + l2);
      d.a(bool, i, l1, l2);
      return;
      label90:
      i = b;
      l1 = a;
      l2 = c;
      bool = false;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */