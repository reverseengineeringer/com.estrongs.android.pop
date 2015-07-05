package com.estrongs.fs.b;

import android.util.Log;
import com.estrongs.a.a.m;
import com.estrongs.a.q;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bc;
import com.estrongs.fs.a.b;
import com.estrongs.fs.impl.adb.c;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

public class g
  extends com.estrongs.a.a
{
  private static final String h = a.class.getSimpleName();
  protected int a = 0;
  protected int b = 0;
  protected boolean c = false;
  h d = new h();
  protected boolean e = false;
  protected List<com.estrongs.fs.h> f = new ArrayList();
  Long g = Long.valueOf(0L);
  private byte[] i = null;
  
  public g(List<com.estrongs.fs.h> paramList)
  {
    a = paramList.size();
    f.addAll(paramList);
    LinkedList localLinkedList = new LinkedList();
    localLinkedList.addAll(paramList);
    int k = localLinkedList.size();
    StringBuilder localStringBuilder = new StringBuilder();
    int j = 0;
    Object localObject;
    if (j < k)
    {
      localObject = ((com.estrongs.fs.h)localLinkedList.get(j)).getName();
      paramList = (List<com.estrongs.fs.h>)localObject;
      if (localObject == null) {
        paramList = am.d(((com.estrongs.fs.h)localLinkedList.get(j)).getAbsolutePath());
      }
      localStringBuilder.append(paramList);
      if (j + 1 != k)
      {
        localStringBuilder.append(" , ");
        if (j >= 4) {
          localStringBuilder.append("...");
        }
      }
    }
    else
    {
      processData.j = localStringBuilder.toString();
      processData.l = true;
      processData.m = false;
      processData.n = false;
      if (f.size() == 1) {
        processData.o = false;
      }
      canRestart = true;
      task_type = 26;
      paramList = "";
      k = localLinkedList.size();
      j = 0;
    }
    for (;;)
    {
      if ((j >= 3) || (j == k))
      {
        localObject = paramList;
        if (paramList.endsWith(",")) {
          localObject = paramList.substring(0, paramList.length() - 1);
        }
        recordSummary("title", localObject);
        recordSummary("items_ori_count", Integer.valueOf(k));
        a();
        return;
        j += 1;
        break;
      }
      paramList = paramList + ((com.estrongs.fs.h)localLinkedList.get(j)).getName() + ",";
      j += 1;
    }
  }
  
  private void a()
  {
    com.estrongs.fs.h localh = (com.estrongs.fs.h)f.get(0);
    if (startTime == -1L) {
      startTime = System.currentTimeMillis();
    }
    recordSummary("task_id", Long.valueOf(getTaskId()));
    recordSummary("start_time", Long.valueOf(startTime));
    recordSummary("task_type", Integer.valueOf(task_type));
    recordSummary("restartable", Boolean.valueOf(false));
    recordSummary("file_type", Integer.valueOf(bc.b(localh.getName())));
    recordSummary("items_selected_count", Integer.valueOf(f.size()));
    recordSummary("source", am.D(am.bk(localh.getPath())));
    recordSummary("status", Integer.valueOf(1));
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
      return;
    case 1: 
      localm = processData;
      d += ((Long)paramVarArgs[0]).longValue();
      processData.a = ((String)paramVarArgs[1]);
      return;
    case 9: 
      processData.g = ((Long)paramVarArgs[0]).longValue();
      processData.h = ((Long)paramVarArgs[1]).longValue();
      return;
    case 2: 
      localm = processData;
      f += ((Long)paramVarArgs[0]).longValue();
      processData.a = ((String)paramVarArgs[1]);
      onProgress(processData);
      return;
    case 8: 
      b += 1;
      d.a = true;
      return;
    }
    processData.g = 100L;
    processData.h = 100L;
    processData.a = ((String)paramVarArgs[0]);
    onProgress(processData);
  }
  
  public boolean task()
  {
    for (;;)
    {
      try
      {
        processData.c = f.size();
        g = Long.valueOf(processData.f);
        if (f.size() > 0)
        {
          processData.a = ((com.estrongs.fs.h)f.get(0)).getAbsolutePath();
          onProgress(processData);
        }
        processData.i = 3;
      }
      catch (Exception localException)
      {
        com.estrongs.fs.h localh;
        localException = localException;
        localException.printStackTrace();
        setTaskResult(10000, new q(localException.toString(), localException));
        return false;
        com.estrongs.fs.impl.adb.a locala = (com.estrongs.fs.impl.adb.a)localException;
        processData.g = 1L;
        processData.h = 100L;
        processData.a = locala.getAbsolutePath();
        onProgress(processData);
        if (c.a(locala.getAbsolutePath(), locala.a())) {
          continue;
        }
        return false;
        b.a().b(locala);
        continue;
      }
      finally {}
      if (f.size() <= 0) {
        break label246;
      }
      if (taskStopped()) {
        return false;
      }
      localh = (com.estrongs.fs.h)f.remove(0);
      if ((localh instanceof com.estrongs.fs.impl.adb.a)) {
        continue;
      }
      Log.e(h, "task error invalid  AdbAppFileObject");
      sendMessage(8, new Object[0]);
    }
    label246:
    if (processData.c > 0L) {
      processData.d = processData.c;
    }
    onProgress(processData);
    if (((com.estrongs.a.a.h)getDecisionData(com.estrongs.a.a.h.class) != null) && (b == a)) {
      setTaskResult(3, null);
    } else {
      setTaskResult(0, d);
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.b.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */