package com.estrongs.fs.b;

import android.app.Activity;
import android.content.res.Resources;
import com.estrongs.a.a.e;
import com.estrongs.a.a.m;
import com.estrongs.a.p;
import com.estrongs.a.q;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.utils.cd;
import com.estrongs.android.util.bd;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.media.MediaStoreInsertException;
import com.estrongs.fs.util.EncryptException;
import java.util.ArrayList;
import java.util.List;

public class y
  extends com.estrongs.a.a
{
  aa a = null;
  private List<h> b;
  private Activity c;
  private List<String> d = new ArrayList();
  private List<String> e = new ArrayList();
  private List<String> f = new ArrayList();
  private List<String> g = new ArrayList();
  private List<String> h = new ArrayList();
  private int i = 1;
  private String j = null;
  private boolean k = false;
  
  public y(Activity paramActivity, List<h> paramList)
  {
    c = paramActivity;
    b = paramList;
    int n = b.size();
    paramActivity = new StringBuilder();
    int m = 0;
    for (;;)
    {
      if (m < n)
      {
        paramActivity.append(((h)b.get(m)).getName());
        if (m + 1 != n)
        {
          paramActivity.append(" , ");
          if (m >= 4) {
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
      m += 1;
    }
  }
  
  private boolean d()
  {
    a = new aa(b, com.estrongs.fs.d.a(c));
    a.addProgressListeners(getProgressListeners());
    a.execute(false);
    Object localObject;
    if (a.getTaskStatus() != 4)
    {
      localObject = a.getTaskResult();
      setTaskResult(a, b);
      return false;
    }
    if (a.a.size() == 0)
    {
      localObject = new Exception(FexApplication.a().getResources().getString(2131428489));
      setTaskResult(10000, new q(((Exception)localObject).getMessage(), (Exception)localObject));
      return false;
    }
    processData.e = a.a.size();
    processData.c = a.a.size();
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
      if (d.size() > 0) {
        com.estrongs.fs.impl.k.b.c().a(d);
      }
      if (e.size() > 0) {
        com.estrongs.fs.impl.i.b.c().a(e);
      }
      if (f.size() > 0)
      {
        com.estrongs.fs.impl.q.b.c().a(f);
        return;
      }
    }
    catch (MediaStoreInsertException localMediaStoreInsertException)
    {
      localMediaStoreInsertException.printStackTrace();
      cd.b();
    }
  }
  
  public String b()
  {
    return j;
  }
  
  public List<h> c()
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
    Object localObject1 = new ArrayList();
    try
    {
      boolean bool1 = d();
      if (!bool1) {
        return false;
      }
      k = false;
      onProgress(processData);
      e locale = (e)getDecision(e.class, new Object[0]);
      if (a == null)
      {
        setTaskResult(1, null);
        return false;
      }
      new z(this).start();
      int m = 0;
      bool1 = false;
      boolean bool2;
      boolean bool3;
      h localh;
      com.estrongs.fs.util.a locala;
      for (;;)
      {
        bool2 = bool1;
      }
    }
    catch (Exception localException1)
    {
      localException1 = localException1;
      bool2 = false;
      localException1.printStackTrace();
      setTaskResult(10000, new q(localException1.getMessage(), localException1));
      return bool2;
    }
    finally
    {
      k = true;
      com.estrongs.fs.a.b.a().a(localArrayList);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.b.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */