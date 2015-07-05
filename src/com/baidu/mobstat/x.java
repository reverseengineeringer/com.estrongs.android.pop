package com.baidu.mobstat;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import java.util.HashMap;

class x
{
  private static HandlerThread c = new HandlerThread("EventHandleThread");
  private static Handler d;
  private static x e = new x();
  HashMap<String, ac> a = new HashMap();
  public final String b = "$|$";
  
  private x()
  {
    c.start();
    c.setPriority(10);
    d = new Handler(c.getLooper());
  }
  
  public static x a()
  {
    return e;
  }
  
  public String a(String paramString1, String paramString2)
  {
    return "__sdk_" + paramString1 + "$|$" + paramString2;
  }
  
  public void a(Context paramContext, String paramString1, String paramString2, int paramInt, long paramLong)
  {
    d.post(new y(this, paramString1, paramString2, paramInt, paramLong, paramContext));
  }
  
  public void a(Context paramContext, String paramString1, String paramString2, long paramLong)
  {
    d.post(new z(this, paramLong, paramString1, paramString2));
  }
  
  public void b(Context paramContext, String paramString1, String paramString2, long paramLong)
  {
    d.post(new aa(this, paramString1, paramString2, paramLong, paramContext));
  }
  
  public void c(Context paramContext, String paramString1, String paramString2, long paramLong)
  {
    d.post(new ab(this, paramLong, paramString1, paramString2, paramContext));
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */