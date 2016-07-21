package com.estrongs.fs.b;

import com.estrongs.a.a.m;
import com.estrongs.a.p;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.view.utils.ac;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.ap;
import com.estrongs.fs.a.b;
import com.estrongs.fs.h;
import java.io.FileNotFoundException;
import java.util.Collections;
import java.util.List;

public class al
  extends com.estrongs.a.a
{
  protected com.estrongs.fs.d a;
  public h b;
  public Throwable c = null;
  public com.estrongs.android.pop.i d;
  com.estrongs.fs.util.a.a e = null;
  com.estrongs.fs.i f = null;
  Boolean g = null;
  TypedMap h = new TypedMap();
  public boolean i = false;
  private List<h> j = null;
  private am k = null;
  private long l = -1L;
  
  public al(com.estrongs.fs.d paramd, com.estrongs.android.pop.i parami)
  {
    a = paramd;
    d = parami;
  }
  
  private boolean a()
  {
    boolean bool = true;
    if ((j == null) && (getTaskResulta != 1)) {
      throw new FileNotFoundException(ap.cc(b.getAbsolutePath()));
    }
    if (getTaskResulta == 1)
    {
      setTaskResult(1, null);
      bool = false;
    }
    return bool;
  }
  
  public void a(am paramam)
  {
    k = paramam;
  }
  
  public void a(boolean paramBoolean)
  {
    requestStop();
  }
  
  public boolean a(Object... paramVarArgs)
  {
    bool2 = true;
    c = null;
    b = ((h)paramVarArgs[0]);
    e = ((com.estrongs.fs.util.a.a)paramVarArgs[1]);
    f = ((com.estrongs.fs.i)paramVarArgs[2]);
    g = ((Boolean)paramVarArgs[3]);
    if ((paramVarArgs.length == 5) && (paramVarArgs[4] != null)) {
      h = ((TypedMap)paramVarArgs[4]);
    }
    for (;;)
    {
      try
      {
        paramVarArgs = b.a().f(b.getPath());
        if ((g.booleanValue()) || (paramVarArgs == null) || (!a) || (!b.a().e(b.getPath()))) {
          continue;
        }
        bool1 = ap.aH(b.getPath());
        if (bool1) {
          continue;
        }
        bool1 = true;
      }
      catch (Exception paramVarArgs)
      {
        boolean bool1 = false;
        continue;
        bool2 = false;
        continue;
      }
      if (bool1) {
        continue;
      }
      super.execute(bool2);
      return bool1;
      h = TypedMap.EMPTY;
      continue;
      bool1 = false;
    }
  }
  
  public void handleMessage(int paramInt, Object... paramVarArgs)
  {
    if (getTaskStatus() != 2) {
      return;
    }
    switch (paramInt)
    {
    default: 
      super.handleMessage(paramInt, paramVarArgs);
      return;
    case 7: 
      m localm = processData;
      d += ((Long)paramVarArgs[0]).longValue();
      onProgress(processData);
      return;
    }
    processData.c = ((Long)paramVarArgs[0]).longValue();
    processData.d = 0L;
    onProgress(processData);
  }
  
  protected boolean needSystemLock()
  {
    return false;
  }
  
  public void onProgress(m paramm)
  {
    long l1 = System.currentTimeMillis();
    if (l1 - l < 1000L) {
      return;
    }
    super.onProgress(paramm);
    l = l1;
  }
  
  public boolean task()
  {
    j = null;
    int m;
    for (;;)
    {
      try
      {
        System.currentTimeMillis();
        String str = b.getAbsolutePath();
        m = a.l(str);
        if (m > 0)
        {
          h.put("offset", Integer.valueOf(0));
          h.put("limit", Integer.valueOf(m));
        }
        if (ap.bi(b.getPath())) {
          h.put("partialListener", k);
        }
        j = a.a(b, g.booleanValue(), f, h);
        if ((k != null) && (m >= 0) && (h.getInt("cacheStatus") != 1)) {
          break label519;
        }
        com.estrongs.fs.util.a.a locala1;
        if ((j != null) && (e != null))
        {
          locala1 = e;
          if (ac.c(str)) {
            locala1 = ad.a(FexApplication.a()).z(str);
          }
        }
        try
        {
          Collections.sort(j, locala1);
          if (!a()) {
            return false;
          }
        }
        catch (IllegalArgumentException localIllegalArgumentException1)
        {
          if ("Comparison method violates its general contract!".equals(localIllegalArgumentException1.getMessage())) {
            continue;
          }
          throw localIllegalArgumentException1;
        }
        setTaskResult(0, j);
      }
      catch (Throwable localThrowable)
      {
        localThrowable = localThrowable;
        if (localThrowable.getCause() == null) {
          break;
        }
        c = localThrowable.getCause();
        return true;
        if ((ap.b(b.getPath(), h)) && (!h.getBoolean("get_data_from_cache"))) {
          setTaskResult(0, "ALL_LOADED");
        }
      }
      finally {}
    }
    label519:
    label526:
    for (;;)
    {
      if ((!g.booleanValue()) && (h.getInt("cacheStatus") == 2)) {
        j = a.a(b, true, f, h);
      }
      if (a())
      {
        if (j != null)
        {
          com.estrongs.fs.util.a.a locala2 = e;
          if (locala2 == null) {}
        }
        for (;;)
        {
          try
          {
            Collections.sort(j, e);
            k.a(this, j);
            if (h.getBoolean("loadFinished"))
            {
              h.remove("loadFinished");
              setTaskResult(0, "ALL_LOADED");
            }
          }
          catch (IllegalArgumentException localIllegalArgumentException2)
          {
            if ("Comparison method violates its general contract!".equals(localIllegalArgumentException2.getMessage())) {
              continue;
            }
            throw localIllegalArgumentException2;
          }
          m = j.size() + m;
          h.put("offset", Integer.valueOf(m));
          j = a.a(b, true, f, h);
          if (j != null)
          {
            int n = j.size();
            if (n > 0) {
              break label526;
            }
          }
        }
        c = localIllegalArgumentException2;
        break;
        m = 0;
        continue;
      }
      return false;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.b.al
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */