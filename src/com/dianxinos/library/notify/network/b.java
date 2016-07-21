package com.dianxinos.library.notify.network;

import com.dianxinos.library.dxbase.e;
import com.dianxinos.library.dxbase.j;
import java.util.concurrent.Future;

public abstract class b
  implements k
{
  public static final boolean c = false;
  
  static
  {
    if (e.b) {}
  }
  
  public void a(String paramString, long paramLong1, long paramLong2)
  {
    if (c) {
      j.a("transfered=" + paramLong1 + ", contentLength=" + paramLong2 + ", url=" + paramString + ", thread=" + Thread.currentThread().getId());
    }
  }
  
  public void a(Future<?> paramFuture)
  {
    if (c) {
      j.a("" + paramFuture);
    }
  }
  
  public boolean a(int paramInt)
  {
    if (c) {
      j.a("Retry: " + paramInt);
    }
    return false;
  }
  
  public boolean a(s params)
  {
    if (c) {
      j.a("Connected: " + d + ", " + a);
    }
    return false;
  }
  
  public boolean a(String paramString1, String paramString2, int paramInt)
  {
    if (c) {
      j.a("Redirected: " + paramString2);
    }
    return false;
  }
  
  public boolean b(s params)
  {
    if (c) {
      j.a("before connect " + a);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.network.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */