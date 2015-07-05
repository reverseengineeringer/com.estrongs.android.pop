package com.estrongs.io.a.a;

import com.estrongs.io.archive.d;

public class a
  extends b
  implements com.estrongs.io.a.b
{
  private boolean a = false;
  private boolean k = false;
  private String l;
  
  public a(d paramd, String paramString)
  {
    super(paramd);
    l = paramString;
  }
  
  public String a()
  {
    return null;
  }
  
  public void a(boolean paramBoolean)
  {
    a = paramBoolean;
  }
  
  public boolean a(String paramString)
  {
    if (!a) {
      e.sendMessage(e.obtainMessage(3, paramString));
    }
    for (;;)
    {
      try {}catch (InterruptedException paramString)
      {
        paramString.printStackTrace();
        continue;
      }
      try
      {
        wait();
        return k;
      }
      finally {}
    }
  }
  
  public void b(boolean paramBoolean)
  {
    k = paramBoolean;
  }
  
  public String c()
  {
    if (!l.endsWith("/")) {
      l += "/";
    }
    return l;
  }
  
  public int[] d()
  {
    return null;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.io.a.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */