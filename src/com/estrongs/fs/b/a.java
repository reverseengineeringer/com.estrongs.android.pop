package com.estrongs.fs.b;

import com.estrongs.a.a.m;
import com.estrongs.a.q;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bg;
import com.estrongs.android.util.l;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class a
  extends com.estrongs.a.a
{
  private static final String l = a.class.getSimpleName();
  protected com.estrongs.fs.d a = null;
  protected int b = 0;
  protected int c = 0;
  protected boolean d = false;
  protected boolean e = true;
  e f = new e();
  public final com.estrongs.fs.h g;
  protected boolean h = false;
  protected List<com.estrongs.fs.h> i = new ArrayList();
  protected List<com.estrongs.fs.h> j = new ArrayList();
  Long k = Long.valueOf(0L);
  private ci m = null;
  private byte[] n = null;
  private boolean o = false;
  private boolean p = false;
  
  public a(List<com.estrongs.fs.h> paramList, com.estrongs.fs.h paramh, boolean paramBoolean)
  {
    g = paramh;
    b = paramList.size();
    i.addAll(paramList);
    j.addAll(paramList);
    o = paramBoolean;
    LinkedList localLinkedList = new LinkedList();
    localLinkedList.addAll(paramList);
    int i2 = localLinkedList.size();
    StringBuilder localStringBuilder = new StringBuilder();
    int i1 = 0;
    if (i1 < i2)
    {
      paramh = ((com.estrongs.fs.h)localLinkedList.get(i1)).getName();
      paramList = paramh;
      if (paramh == null) {
        paramList = ap.d(((com.estrongs.fs.h)localLinkedList.get(i1)).getAbsolutePath());
      }
      localStringBuilder.append(paramList);
      if (i1 + 1 != i2)
      {
        localStringBuilder.append(" , ");
        if (i1 >= 4) {
          localStringBuilder.append("...");
        }
      }
    }
    else
    {
      processData.j = localStringBuilder.toString();
      processData.n = false;
      canRestart = true;
      task_type = 25;
      paramList = "";
      i2 = localLinkedList.size();
      i1 = 0;
    }
    for (;;)
    {
      if ((i1 >= 3) || (i1 == i2))
      {
        paramh = paramList;
        if (paramList.endsWith(",")) {
          paramh = paramList.substring(0, paramList.length() - 1);
        }
        recordSummary("title", paramh);
        recordSummary("items_ori_count", Integer.valueOf(i2));
        a();
        return;
        i1 += 1;
        break;
      }
      paramList = paramList + ((com.estrongs.fs.h)localLinkedList.get(i1)).getName() + ",";
      i1 += 1;
    }
  }
  
  private void a()
  {
    com.estrongs.fs.h localh = (com.estrongs.fs.h)i.get(0);
    if (startTime == -1L) {
      startTime = System.currentTimeMillis();
    }
    recordSummary("task_id", Long.valueOf(getTaskId()));
    recordSummary("start_time", Long.valueOf(startTime));
    recordSummary("task_type", Integer.valueOf(task_type));
    recordSummary("restartable", Boolean.valueOf(false));
    recordSummary("file_type", Integer.valueOf(bg.b(localh.getName())));
    recordSummary("items_selected_count", Integer.valueOf(j.size()));
    recordSummary("source", ap.F(ap.bB(localh.getPath())));
    recordSummary("target", ap.F(g.getPath()));
    recordSummary("status", Integer.valueOf(1));
  }
  
  private void b()
  {
    Iterator localIterator = i.iterator();
    while (localIterator.hasNext())
    {
      com.estrongs.fs.h localh = (com.estrongs.fs.h)localIterator.next();
      m localm = processData;
      e += localh.length();
    }
  }
  
  public void a(ci paramci)
  {
    m = paramci;
  }
  
  public boolean canHide()
  {
    return true;
  }
  
  public boolean canPause()
  {
    return false;
  }
  
  public void handleMessage(int paramInt, Object... paramVarArgs)
  {
    m localm;
    switch (paramInt)
    {
    default: 
      super.handleMessage(paramInt, paramVarArgs);
    case 13: 
    case 1: 
    case 9: 
      do
      {
        return;
        localm = processData;
        d += ((Long)paramVarArgs[0]).longValue();
        processData.a = ((String)paramVarArgs[1]);
        return;
        processData.g = ((Long)paramVarArgs[0]).longValue();
        processData.h = ((Long)paramVarArgs[1]).longValue();
        l.b(l, "####TASK_MSG_SINGLE_FILE_SIZE  processData.current_file_size " + processData.g + " processData.current_file_copie " + processData.h);
      } while ((processData.g != processData.h) || (m == null));
      FileExplorerActivity.X().runOnUiThread(new d(this));
      processData.o = false;
      processData.n = false;
      onProgress(processData);
      return;
    case 2: 
      localm = processData;
      f += ((Long)paramVarArgs[0]).longValue();
      processData.a = ((String)paramVarArgs[1]);
      return;
    }
    c += 1;
    f.a = true;
  }
  
  public boolean task()
  {
    for (;;)
    {
      try
      {
        processData.o = true;
        p = false;
        b();
        processData.c = i.size();
        k = Long.valueOf(processData.f);
        new b(this).start();
        if (i.size() > 0)
        {
          processData.a = ((com.estrongs.fs.h)i.get(0)).getAbsolutePath();
          onProgress(processData);
        }
        processData.i = 2;
      }
      catch (Exception localException)
      {
        boolean bool;
        com.estrongs.fs.h localh;
        int i1;
        localException.printStackTrace();
        setTaskResult(10000, new q(localException.toString(), localException));
        return false;
        setTaskResult(10000, new q(FileExplorerActivity.X().getString(2131230969), null));
        return false;
        String str = g.getAbsolutePath() + "/" + localException.getName();
        com.estrongs.fs.a.b.a().a(str);
        continue;
      }
      finally
      {
        p = true;
      }
      if (j.size() <= 0) {
        break label428;
      }
      if (m != null) {
        FileExplorerActivity.X().runOnUiThread(new c(this));
      }
      bool = taskStopped();
      if (bool)
      {
        p = true;
        return false;
      }
      localh = (com.estrongs.fs.h)j.remove(0);
      if (!ap.e(localh.getAbsolutePath(), g.getAbsolutePath()))
      {
        processData.o = true;
        processData.n = true;
        onProgress(processData);
        i1 = com.estrongs.fs.impl.adb.c.a(localh.getAbsolutePath(), g.getAbsolutePath(), o);
        if (i1 == 0) {
          continue;
        }
        if (getDecisiongetNameg.getAbsolutePath(), new Integer(i1) }).g != 2) {
          continue;
        }
        c += 1;
      }
    }
    label428:
    if (processData.c > 0L) {
      processData.d = processData.c;
    }
    if (processData.e > 0L) {
      processData.f = processData.e;
    }
    onProgress(processData);
    if (((com.estrongs.a.a.h)getDecisionData(com.estrongs.a.a.h.class) != null) && (c == b)) {
      setTaskResult(3, null);
    }
    for (;;)
    {
      p = true;
      return true;
      setTaskResult(0, f);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */