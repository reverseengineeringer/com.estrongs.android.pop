package com.estrongs.android.pop.app.a;

import android.app.Activity;
import android.os.AsyncTask;
import android.util.Pair;
import com.estrongs.android.k.g;
import com.estrongs.android.k.h;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.ai;
import com.estrongs.android.scanner.a;
import com.estrongs.android.util.l;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

final class o
  extends AsyncTask<Void, Void, Boolean>
{
  int a = 0;
  
  o(Activity paramActivity) {}
  
  protected Boolean a(Void... paramVarArgs)
  {
    if (isCancelled()) {
      return Boolean.valueOf(false);
    }
    paramVarArgs = h.a().a("lock_realtimemonitor");
    if ((paramVarArgs != null) && (paramVarArgs.f()) && (paramVarArgs.e()) && (paramVarArgs.c() != null) && (ca))
    {
      paramVarArgs = ai.b(b);
      if (paramVarArgs.a("key_shown_unlock_dialog_by_charging", 0) >= 3) {
        return Boolean.valueOf(false);
      }
    }
    else
    {
      return Boolean.valueOf(false);
    }
    long l = paramVarArgs.a("key_last_shown_unlock_dialog_by_charging_time", Long.valueOf(0L));
    if (System.currentTimeMillis() - l < 259200000L) {
      return Boolean.valueOf(false);
    }
    l = new Date().getTime() - 604800000L;
    paramVarArgs = com.estrongs.android.pop.app.b.d.a(l, null);
    if (paramVarArgs != null)
    {
      paramVarArgs = paramVarArgs.iterator();
      for (i = 0;; i = ((List)nextsecond).size() + i)
      {
        j = i;
        if (!paramVarArgs.hasNext()) {
          break;
        }
      }
    }
    int j = 0;
    paramVarArgs = new HashMap();
    paramVarArgs.put(Integer.valueOf(20165), Long.valueOf(l));
    paramVarArgs = a.a().a(paramVarArgs, ad.a(b).bo());
    if (paramVarArgs != null)
    {
      paramVarArgs = (Integer)paramVarArgs.get(Integer.valueOf(20165));
      if (paramVarArgs == null) {}
    }
    for (int i = paramVarArgs.intValue();; i = 0)
    {
      l.a("MediaStore log count = " + j);
      l.a("RealTime log count = " + i);
      if (i > j)
      {
        a = (i - j);
        return Boolean.valueOf(true);
      }
      return Boolean.valueOf(false);
    }
  }
  
  protected void a(Boolean paramBoolean)
  {
    if ((isCancelled()) || (b == null) || (b.isFinishing()) || (!paramBoolean.booleanValue()) || (a <= 0)) {
      return;
    }
    n.a(b, a);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.a.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */