package com.appsflyer;

import android.content.Context;
import java.util.concurrent.ExecutorService;

class AppsFlyerLib$DataCollector
  implements Runnable
{
  private Context a;
  private String b;
  private String c;
  private String d;
  private String e;
  private ExecutorService f;
  private boolean g;
  
  private AppsFlyerLib$DataCollector(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, boolean paramBoolean, ExecutorService paramExecutorService)
  {
    a = paramContext;
    b = paramString1;
    c = paramString2;
    d = paramString3;
    e = paramString4;
    g = paramBoolean;
    f = paramExecutorService;
  }
  
  public void run()
  {
    AppsFlyerLib.a(a, b, c, d, e, g);
    f.shutdown();
  }
}

/* Location:
 * Qualified Name:     com.appsflyer.AppsFlyerLib.DataCollector
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */