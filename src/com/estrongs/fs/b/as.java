package com.estrongs.fs.b;

import android.app.Activity;
import com.estrongs.a.a.l;
import com.estrongs.a.p;
import com.estrongs.android.pop.utils.cd;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bd;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.local.f;
import com.estrongs.fs.impl.media.MediaStoreInsertException;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class as
  extends com.estrongs.a.a
{
  protected List<h> a = new ArrayList();
  protected List<h> b;
  com.estrongs.fs.d c;
  Activity d;
  ao e;
  Object f = new Object();
  long g = 0L;
  private List<String> h = new ArrayList();
  private List<String> i = new ArrayList();
  private List<String> j = new ArrayList();
  private List<String> k = new ArrayList();
  
  public as(Activity paramActivity, com.estrongs.fs.d paramd, List<h> paramList)
  {
    c = paramd;
    b = paramList;
    canRestart = false;
    d = paramActivity;
    task_type = 24;
  }
  
  private String a(h paramh)
  {
    paramh = paramh.getAbsolutePath();
    if (paramh.indexOf("/.estrongs/recycle/") == -1) {}
    int m;
    do
    {
      return null;
      m = paramh.indexOf("/es_recycle_content/");
    } while (m == -1);
    return paramh.substring(0, m + "/es_recycle_content/".length() - 1);
  }
  
  public void handleMessage(int paramInt, Object... paramVarArgs)
  {
    switch (paramInt)
    {
    default: 
      super.handleMessage(paramInt, paramVarArgs);
      return;
    }
    com.estrongs.a.a.m localm = processData;
    d += ((Long)paramVarArgs[0]).longValue();
    processData.a = ((String)paramVarArgs[1]);
    onProgress(processData);
  }
  
  protected void postTask()
  {
    super.postTask();
    try
    {
      if (bd.f())
      {
        if (k.size() > 0) {
          com.estrongs.fs.impl.media.d.a(k, null);
        }
      }
      else
      {
        if (h.size() > 0) {
          com.estrongs.fs.impl.k.b.c().a(h);
        }
        if (i.size() > 0) {
          com.estrongs.fs.impl.i.b.c().a(i);
        }
        if (j.size() > 0)
        {
          com.estrongs.fs.impl.q.b.c().a(j);
          return;
        }
      }
    }
    catch (MediaStoreInsertException localMediaStoreInsertException)
    {
      localMediaStoreInsertException.printStackTrace();
      cd.b();
    }
  }
  
  public void requestStop()
  {
    synchronized (f)
    {
      ao localao = e;
      if (localao == null) {}
    }
    try
    {
      e.requestStop();
      super.requestStop();
      return;
      localObject2 = finally;
      throw ((Throwable)localObject2);
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
  
  public boolean task()
  {
    Object localObject1 = new StringBuilder();
    int n = b.size();
    int m = 0;
    Object localObject6;
    Object localObject10;
    for (;;)
    {
      if (m < n)
      {
        ((StringBuilder)localObject1).append(((h)b.get(m)).getName());
        if (m + 1 != n)
        {
          ((StringBuilder)localObject1).append(" , ");
          if (m >= 4) {
            ((StringBuilder)localObject1).append("...");
          }
        }
      }
      else
      {
        processData.j = ((StringBuilder)localObject1).toString();
        processData.c = b.size();
        processData.m = false;
        processData.l = false;
        processData.k = false;
        processData.n = false;
        processData.o = true;
        localObject6 = new HashSet();
        localObject7 = new HashMap();
        ??? = b.iterator();
        while (((Iterator)???).hasNext())
        {
          ??? = (h)((Iterator)???).next();
          localObject1 = am.bS(((h)???).getAbsolutePath());
          if (localObject1 != null)
          {
            localObject10 = ((String)localObject1).substring(0, ((String)localObject1).lastIndexOf("/"));
            localObject5 = (ArrayList)((Map)localObject7).get(localObject10);
            localObject1 = localObject5;
            if (localObject5 == null)
            {
              localObject1 = new ArrayList();
              ((Map)localObject7).put(localObject10, localObject1);
            }
            ((ArrayList)localObject1).add(???);
            localObject1 = a((h)???);
            if (localObject1 != null) {
              ((Set)localObject6).add(localObject1);
            }
          }
        }
      }
      m += 1;
    }
    localObject1 = new at(this);
    Object localObject5 = new com.estrongs.android.pop.m(d);
    Object localObject7 = ((Map)localObject7).entrySet().iterator();
    if (((Iterator)localObject7).hasNext()) {
      ??? = (Map.Entry)((Iterator)localObject7).next();
    }
    for (;;)
    {
      synchronized (f)
      {
        if ((taskStopped()) && ((e == null) || (e.taskStopped())))
        {
          if ((e != null) && (e.getTaskStatus() != 4))
          {
            localObject1 = e.getTaskResult();
            setTaskResult(a, b);
          }
          localObject6 = ((Set)localObject6).iterator();
          if (!((Iterator)localObject6).hasNext()) {
            break label776;
          }
          localObject1 = new File((String)((Iterator)localObject6).next());
          if ((localObject1 != null) && (((File)localObject1).isDirectory()))
          {
            localObject5 = ((File)localObject1).list();
            if ((localObject5 != null) && (localObject5.length != 0)) {
              break label771;
            }
            localObject5 = ((File)localObject1).getParentFile();
            ((File)localObject1).delete();
            if ((localObject5 == null) || (((File)localObject5).getAbsolutePath().endsWith("/.estrongs/recycle"))) {
              break label766;
            }
            localObject1 = localObject5;
            continue;
          }
          continue;
        }
        ??? = (ArrayList)((Map.Entry)???).getValue();
        localObject10 = new f(new File((String)((Map.Entry)???).getKey()));
        g = 0L;
      }
      synchronized (f)
      {
        e = new ao(c, (List)???, (h)localObject10);
        e.a(this);
        e.g(false);
        e.processData.i = 3;
        e.processData.k = false;
        e.addProgressListeners(getProgressListeners());
        e.addProgressListener((l)localObject1);
        e.setTaskDecisionListener((com.estrongs.a.a.a)localObject5);
        e.execute(false);
        h.addAll(e.j());
        i.addAll(e.k());
        j.addAll(e.l());
        k.addAll(e.m());
        break;
        localObject2 = finally;
        throw ((Throwable)localObject2);
      }
      label766:
      Object localObject4 = null;
      continue;
      label771:
      localObject4 = null;
    }
    label776:
    if (!taskStopped()) {
      setTaskStatus(4);
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.b.as
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */