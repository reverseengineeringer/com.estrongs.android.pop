package com.estrongs.fs.b;

import android.app.Activity;
import android.content.res.Resources;
import com.estrongs.a.a.f;
import com.estrongs.a.a.m;
import com.estrongs.a.p;
import com.estrongs.a.q;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.utils.cd;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bd;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.media.MediaStoreInsertException;
import com.estrongs.fs.util.c;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class ag
  extends com.estrongs.a.a
{
  ai a = null;
  private List<h> b;
  private Activity c;
  private List<String> d = new ArrayList();
  private List<String> e = new ArrayList();
  private List<String> f = new ArrayList();
  private List<String> g = new ArrayList();
  private List<String> h = new ArrayList();
  private int i = 1;
  private boolean j = false;
  
  public ag(Activity paramActivity, List<h> paramList)
  {
    c = paramActivity;
    b = paramList;
    int m = b.size();
    paramActivity = new StringBuilder();
    int k = 0;
    for (;;)
    {
      if (k < m)
      {
        paramActivity.append(((h)b.get(k)).getName());
        if (k + 1 != m)
        {
          paramActivity.append(" , ");
          if (k >= 4) {
            paramActivity.append("...");
          }
        }
      }
      else
      {
        processData.j = paramActivity.toString();
        processData.p = false;
        processData.n = false;
        return;
      }
      k += 1;
    }
  }
  
  private boolean c()
  {
    a = new ai(b, com.estrongs.fs.d.a(c));
    a.addProgressListeners(getProgressListeners());
    a.execute(false);
    Object localObject;
    if (a.getTaskStatus() != 4)
    {
      localObject = a.getTaskResult();
      setTaskResult(a, b);
      return false;
    }
    if (a.d.size() == 0)
    {
      localObject = new Exception(FexApplication.a().getResources().getString(2131428490));
      setTaskResult(10000, new q(((Exception)localObject).getMessage(), (Exception)localObject));
      return false;
    }
    processData.e = a.d.size();
    processData.c = a.d.size();
    return true;
  }
  
  protected void a()
  {
    try
    {
      if (bd.f())
      {
        com.estrongs.fs.impl.media.d.b(g);
        com.estrongs.fs.impl.media.d.a(h, null);
        return;
      }
      com.estrongs.fs.impl.k.b.c().c(d);
      com.estrongs.fs.impl.i.b.c().c(e);
      com.estrongs.fs.impl.q.b.c().c(f);
      return;
    }
    catch (MediaStoreInsertException localMediaStoreInsertException)
    {
      localMediaStoreInsertException.printStackTrace();
      cd.b();
    }
  }
  
  public List<h> b()
  {
    return b;
  }
  
  public boolean canHide()
  {
    return false;
  }
  
  public void handleMessage(int paramInt, Object... paramVarArgs)
  {
    switch (paramInt)
    {
    default: 
      super.handleMessage(paramInt, paramVarArgs);
      return;
    case 9: 
      processData.g = ((Long)paramVarArgs[0]).longValue();
      processData.h = ((Long)paramVarArgs[1]).longValue();
      return;
    }
    m localm = processData;
    f += ((Long)paramVarArgs[0]).longValue();
    processData.a = ((String)paramVarArgs[1]);
  }
  
  protected void postTask()
  {
    super.postTask();
    a();
  }
  
  public void requestStop()
  {
    if (a != null) {
      a.requestStop();
    }
    super.requestStop();
  }
  
  public boolean task()
  {
    ArrayList localArrayList = new ArrayList();
    for (;;)
    {
      try
      {
        bool1 = c();
        if (!bool1) {
          return false;
        }
        j = false;
        onProgress(processData);
        if (a.a) {
          break label649;
        }
        localf = (f)getDecision(f.class, new Object[0]);
        if (a == null)
        {
          setTaskResult(1, null);
          return false;
        }
        new ah(this).start();
        if ((a.b) && (!a.a))
        {
          k = 0;
          if (k < a.d.size())
          {
            com.estrongs.fs.util.a.a.remove(am.bE(((h)a.d.get(k)).getAbsolutePath()));
            k += 1;
            continue;
          }
          a.c.clear();
        }
        k = 0;
        bool1 = false;
      }
      catch (Exception localException1)
      {
        f localf;
        int k;
        boolean bool1 = false;
        localException1.printStackTrace();
        Object localObject4 = localException1.toString();
        Object localObject3 = localObject4;
        if (((String)localObject4).contains("ftruncate failed"))
        {
          localObject3 = localObject4;
          if (((String)localObject4).contains("Invalid argument")) {
            localObject3 = FexApplication.a().getResources().getString(2131428504);
          }
        }
        setTaskResult(10000, new q((String)localObject3, localException1));
        return bool1;
      }
      finally
      {
        j = true;
        com.estrongs.fs.a.b.a().a(localArrayList);
      }
      try
      {
        if (k < a.d.size())
        {
          boolean bool2 = taskStopped();
          if (bool2)
          {
            j = true;
            com.estrongs.fs.a.b.a().a(localArrayList);
            return false;
          }
          localObject4 = (h)a.d.get(k);
          processData.a = ((h)localObject4).getName();
          onProgress(processData);
          if (!a.a)
          {
            localObject3 = new c((h)localObject4, a, b);
            bool2 = ((c)localObject3).a();
            bool1 = bool2;
            if (!bool1)
            {
              j = true;
              com.estrongs.fs.a.b.a().a(localArrayList);
              return false;
            }
          }
          else
          {
            localObject3 = (com.estrongs.fs.util.b)a.c.get(am.bE(((h)localObject4).getAbsolutePath()));
            localObject3 = new c((h)localObject4, a, b, c);
            continue;
          }
        }
      }
      catch (Exception localException2)
      {
        continue;
      }
      try
      {
        if (am.bl(((h)localObject4).getAbsolutePath()))
        {
          int m = i;
          i = (cd.a(new File(((h)localObject4).getAbsolutePath()), d, e, f, g) | m);
          h.add(((c)localObject3).b());
        }
        localArrayList.add(((c)localObject3).b());
        processData.d = (k + 1);
        k += 1;
      }
      catch (Exception localException3)
      {
        continue;
      }
      setTaskResult(0, null);
      j = true;
      com.estrongs.fs.a.b.a().a(localArrayList);
      return bool1;
      label649:
      Object localObject2 = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.b.ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */