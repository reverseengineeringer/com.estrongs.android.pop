package com.baidu.mobstat;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import java.util.HashMap;

class bh
{
  private static HandlerThread b = new HandlerThread("EventHandleThread");
  private static Handler c;
  private static bh d = new bh();
  HashMap<String, bm> a = new HashMap();
  
  private bh()
  {
    b.start();
    b.setPriority(10);
    c = new Handler(b.getLooper());
  }
  
  public static bh a()
  {
    return d;
  }
  
  public String a(String paramString1, String paramString2)
  {
    return "__sdk_" + paramString1 + "$|$" + paramString2;
  }
  
  public void a(Context paramContext, String paramString1, String paramString2, int paramInt, long paramLong)
  {
    c.post(new bi(this, paramContext, paramString1, paramString2, paramInt, paramLong));
  }
  
  public void a(Context paramContext, String paramString1, String paramString2, int paramInt, long paramLong1, long paramLong2)
  {
    DataCore.instance().putEvent(paramString1, paramString2, paramInt, paramLong1, paramLong2);
    DataCore.instance().flush(paramContext);
  }
  
  public void a(Context paramContext, String paramString1, String paramString2, long paramLong)
  {
    c.post(new bj(this, paramLong, paramString1, paramString2));
  }
  
  public void b(Context paramContext, String paramString1, String paramString2, long paramLong)
  {
    c.post(new bk(this, paramString1, paramString2, paramLong, paramContext));
  }
  
  public void c(Context paramContext, String paramString1, String paramString2, long paramLong)
  {
    c.post(new bl(this, paramLong, paramContext, paramString1, paramString2));
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.bh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */