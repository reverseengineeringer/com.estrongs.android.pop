package com.estrongs.fs.b;

import com.estrongs.a.a;
import com.estrongs.a.a.m;
import com.estrongs.a.q;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.util.bc;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.adb.c;

public class f
  extends a
{
  private static final String a = f.class.getSimpleName();
  private h b = null;
  
  public f(h paramh)
  {
    b = paramh;
    recordSummary("title", paramh.getName());
    a();
  }
  
  private void a()
  {
    if (startTime == -1L) {
      startTime = System.currentTimeMillis();
    }
    recordSummary("task_id", Long.valueOf(getTaskId()));
    recordSummary("start_time", Long.valueOf(startTime));
    recordSummary("task_type", Integer.valueOf(task_type));
    recordSummary("restartable", Boolean.valueOf(false));
    recordSummary("file_type", Integer.valueOf(bc.b(b.getName())));
    recordSummary("status", Integer.valueOf(1));
  }
  
  public boolean canPause()
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
    case 1: 
      localm = processData;
      d += ((Long)paramVarArgs[0]).longValue();
      processData.a = ((String)paramVarArgs[1]);
      return;
    }
    m localm = processData;
    f += ((Long)paramVarArgs[0]).longValue();
    processData.a = ((String)paramVarArgs[1]);
  }
  
  public boolean task()
  {
    boolean bool = c.a(b);
    if (!bool) {
      setTaskResult(10000, new q(FexApplication.a().getString(2131427766), null));
    }
    return bool;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.b.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */