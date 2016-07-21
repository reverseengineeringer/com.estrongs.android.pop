package com.estrongs.android.pop.app.ad;

import android.content.Context;
import android.content.IntentFilter;
import android.os.Build.VERSION;
import com.duapps.ad.base.DuAdNetwork;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ai;
import com.estrongs.android.pop.utils.cl;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONObject;

public class a
{
  private static a c = null;
  com.duapps.ad.f a = null;
  boolean b = false;
  private int d = 2;
  private ArrayList<j> e = new ArrayList();
  private boolean f = false;
  private boolean g = false;
  private i h;
  
  public static a a()
  {
    if (c == null) {}
    try
    {
      if (c == null) {
        c = new a();
      }
      return c;
    }
    finally {}
  }
  
  private boolean f()
  {
    if (Build.VERSION.SDK_INT < 14) {}
    while (cl.a()) {
      return false;
    }
    return true;
  }
  
  private void g()
  {
    try
    {
      ArrayList localArrayList1 = new ArrayList();
      Iterator localIterator = e.iterator();
      while (localIterator.hasNext())
      {
        j localj = (j)localIterator.next();
        if (localj.b()) {
          localArrayList1.add(localj);
        }
      }
      e = localArrayList2;
    }
    finally {}
  }
  
  private String h()
  {
    if (d == 0) {
      return "1012950322070324_1111107142254641";
    }
    if (d == 1) {
      return "1012950322070324_1111114858920536";
    }
    return "1012950322070324_1108637082501647";
  }
  
  private void i()
  {
    try
    {
      IntentFilter localIntentFilter = new IntentFilter();
      localIntentFilter.addAction("android.intent.action.BATTERY_CHANGED");
      FexApplication.a().registerReceiver(new f(this), localIntentFilter);
      localIntentFilter = new IntentFilter();
      localIntentFilter.addAction("android.intent.action.SCREEN_ON");
      FexApplication.a().registerReceiver(new g(this), localIntentFilter);
      return;
    }
    catch (Exception localException) {}
  }
  
  /* Error */
  public void a(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 36	com/estrongs/android/pop/app/ad/a:f	Z
    //   4: ifeq +4 -> 8
    //   7: return
    //   8: aload_0
    //   9: invokespecial 121	com/estrongs/android/pop/app/ad/a:f	()Z
    //   12: ifeq -5 -> 7
    //   15: aload_0
    //   16: invokevirtual 122	com/estrongs/android/pop/app/ad/a:b	()Z
    //   19: ifne -12 -> 7
    //   22: aload_0
    //   23: monitorenter
    //   24: aload_0
    //   25: iconst_1
    //   26: putfield 36	com/estrongs/android/pop/app/ad/a:f	Z
    //   29: aload_0
    //   30: getfield 34	com/estrongs/android/pop/app/ad/a:e	Ljava/util/ArrayList;
    //   33: invokevirtual 125	java/util/ArrayList:clear	()V
    //   36: aload_0
    //   37: monitorexit
    //   38: invokestatic 131	java/lang/System:currentTimeMillis	()J
    //   41: lstore_2
    //   42: invokestatic 104	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   45: invokestatic 136	com/estrongs/android/j/c:a	(Landroid/content/Context;)Lcom/estrongs/android/j/c;
    //   48: astore 4
    //   50: new 138	org/json/JSONObject
    //   53: dup
    //   54: invokespecial 139	org/json/JSONObject:<init>	()V
    //   57: astore 5
    //   59: aload 5
    //   61: ldc -115
    //   63: ldc -113
    //   65: invokevirtual 147	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   68: pop
    //   69: aload 4
    //   71: ldc -107
    //   73: aload 5
    //   75: invokevirtual 152	com/estrongs/android/j/c:b	(Ljava/lang/String;Lorg/json/JSONObject;)V
    //   78: new 154	com/duapps/ad/f
    //   81: dup
    //   82: invokestatic 104	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   85: sipush 10031
    //   88: iconst_1
    //   89: invokespecial 157	com/duapps/ad/f:<init>	(Landroid/content/Context;II)V
    //   92: astore 4
    //   94: aload 4
    //   96: invokevirtual 159	com/duapps/ad/f:a	()V
    //   99: aload 4
    //   101: new 161	com/estrongs/android/pop/app/ad/d
    //   104: dup
    //   105: aload_0
    //   106: lload_2
    //   107: aload 4
    //   109: invokespecial 164	com/estrongs/android/pop/app/ad/d:<init>	(Lcom/estrongs/android/pop/app/ad/a;JLcom/duapps/ad/f;)V
    //   112: invokevirtual 167	com/duapps/ad/f:a	(Lcom/duapps/ad/e;)V
    //   115: invokestatic 173	com/estrongs/android/util/bk:n	()Landroid/os/Handler;
    //   118: new 175	com/estrongs/android/pop/app/ad/e
    //   121: dup
    //   122: aload_0
    //   123: aload 4
    //   125: invokespecial 178	com/estrongs/android/pop/app/ad/e:<init>	(Lcom/estrongs/android/pop/app/ad/a;Lcom/duapps/ad/f;)V
    //   128: ldc2_w 179
    //   131: invokevirtual 186	android/os/Handler:postDelayed	(Ljava/lang/Runnable;J)Z
    //   134: pop
    //   135: return
    //   136: astore 4
    //   138: aload 4
    //   140: invokevirtual 189	java/lang/Exception:printStackTrace	()V
    //   143: return
    //   144: astore 4
    //   146: aload_0
    //   147: monitorexit
    //   148: aload 4
    //   150: athrow
    //   151: astore 4
    //   153: goto -75 -> 78
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	156	0	this	a
    //   0	156	1	paramInt	int
    //   41	66	2	l	long
    //   48	76	4	localObject1	Object
    //   136	3	4	localException1	Exception
    //   144	5	4	localObject2	Object
    //   151	1	4	localException2	Exception
    //   57	17	5	localJSONObject	JSONObject
    // Exception table:
    //   from	to	target	type
    //   8	24	136	java/lang/Exception
    //   38	42	136	java/lang/Exception
    //   78	135	136	java/lang/Exception
    //   148	151	136	java/lang/Exception
    //   24	38	144	finally
    //   146	148	144	finally
    //   42	78	151	java/lang/Exception
  }
  
  public void a(Context paramContext)
  {
    DuAdNetwork.a("prod");
    d = com.estrongs.android.i.a.a("facebook_request_policy", 2);
    DuAdNetwork.a(paramContext, "{\"native\":[{\"pid\":\"10031\",\"fbids\":[\"" + h() + "\"]" + ",\"amid\": \"ca-app-pub-5262205102114431/2857617507\"}," + "{\"pid\":\"" + 10845 + "\",\"fbids\":[\"1012950322070324_1204316696267018\"]}," + "{\"pid\":\"" + 10336 + "\",\"fbids\":[\"xxxxxxxxxxxxxxxx\"]}" + "],\"offerwall\": [],\"list\": [" + "{\"pid\":\"" + 11718 + "\",\"fbids\": \"\",\"defPri\":\"download\"}]}");
    i();
    new b(this).start();
  }
  
  public void a(i parami)
  {
    h = parami;
  }
  
  public void a(j paramj, boolean paramBoolean)
  {
    try
    {
      e.remove(paramj);
      return;
    }
    finally {}
  }
  
  public void a(String paramString)
  {
    if (!f()) {}
    for (;;)
    {
      try
      {
        com.estrongs.android.j.c.a(FexApplication.a());
        new JSONObject().put("cause", "ignore");
        return;
      }
      catch (Exception paramString) {}
      if (!g)
      {
        g = true;
        new c(this, paramString).start();
        return;
      }
    }
  }
  
  public boolean b()
  {
    long l = ai.b(FexApplication.a()).n();
    if (l == 0L) {
      return false;
    }
    int i = com.estrongs.android.i.a.a(com.estrongs.android.i.a.c, 5);
    if (System.currentTimeMillis() - l >= i * 60000)
    {
      ai.b(FexApplication.a()).d(0L);
      return false;
    }
    return true;
  }
  
  public ArrayList<j> c()
  {
    g();
    try
    {
      ArrayList localArrayList = e;
      return localArrayList;
    }
    finally {}
  }
  
  public boolean d()
  {
    g();
    try
    {
      return e.size() > 0;
    }
    finally {}
  }
  
  public j e()
  {
    if (b()) {
      return null;
    }
    g();
    try
    {
      if (e.size() == 0) {
        return null;
      }
    }
    finally {}
    j localj = (j)e.remove(0);
    e.add(localj);
    return localj;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ad.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */