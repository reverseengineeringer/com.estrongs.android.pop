package com.flurry.sdk;

import android.content.Context;

public class mb
  implements kj, ll.a, Thread.UncaughtExceptionHandler
{
  private static final String a = mb.class.getSimpleName();
  private boolean b;
  
  public void a(Context paramContext)
  {
    paramContext = lk.a();
    b = ((Boolean)paramContext.a("CaptureUncaughtExceptions")).booleanValue();
    paramContext.a("CaptureUncaughtExceptions", this);
    kg.a(4, a, "initSettings, CrashReportingEnabled = " + b);
    mc.a().a(this);
  }
  
  public void a(String paramString, Object paramObject)
  {
    if (paramString.equals("CaptureUncaughtExceptions"))
    {
      b = ((Boolean)paramObject).booleanValue();
      kg.a(4, a, "onSettingUpdate, CrashReportingEnabled = " + b);
      return;
    }
    kg.a(6, a, "onSettingUpdate internal error!");
  }
  
  public void b()
  {
    mc.b();
    lk.a().b("CaptureUncaughtExceptions", this);
  }
  
  public void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    paramThrowable.printStackTrace();
    if (b)
    {
      paramThread = "";
      StackTraceElement[] arrayOfStackTraceElement = paramThrowable.getStackTrace();
      if ((arrayOfStackTraceElement == null) || (arrayOfStackTraceElement.length <= 0)) {
        break label103;
      }
      paramThread = new StringBuilder();
      if (paramThrowable.getMessage() != null) {
        paramThread.append(" (" + paramThrowable.getMessage() + ")\n");
      }
      paramThread = paramThread.toString();
    }
    for (;;)
    {
      hl.a().a("uncaught", paramThread, paramThrowable);
      lh.a().g();
      jj.a().d();
      return;
      label103:
      if (paramThrowable.getMessage() != null) {
        paramThread = paramThrowable.getMessage();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.mb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */