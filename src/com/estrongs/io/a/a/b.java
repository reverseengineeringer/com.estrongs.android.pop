package com.estrongs.io.a.a;

import android.os.Bundle;

public class b
  implements com.estrongs.io.a.d
{
  int c = 0;
  Bundle d = new Bundle();
  protected com.estrongs.io.archive.d e;
  boolean f = false;
  boolean g = false;
  boolean h = false;
  Object i = new Object();
  int j = 0;
  
  public b(com.estrongs.io.archive.d paramd)
  {
    e = paramd;
  }
  
  public void a(long paramLong)
  {
    if ((h) || (g)) {
      return;
    }
    e.f = paramLong;
    e.sendEmptyMessage(6);
  }
  
  public void a(String paramString, long paramLong)
  {
    if ((h) || (g)) {
      return;
    }
    e.e = paramString;
    paramString = e;
    int k = j + 1;
    j = k;
    g = k;
    e.sendEmptyMessage(5);
  }
  
  public void a(String paramString, long paramLong, int paramInt)
  {
    if ((h) || (g)) {
      return;
    }
    e.b = paramString;
    e.c = paramLong;
    e.d = paramInt;
    e.sendEmptyMessage(4);
  }
  
  public boolean b()
  {
    return g;
  }
  
  public void c(boolean paramBoolean)
  {
    h = paramBoolean;
  }
  
  public void e()
  {
    g = true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.io.a.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */