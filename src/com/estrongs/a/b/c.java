package com.estrongs.a.b;

import com.estrongs.fs.h;
import java.util.List;

public class c
{
  private int a = 0;
  private q[] b;
  
  public c(h paramh)
  {
    b = new q[1];
    b[0] = new q(paramh);
  }
  
  public c(List<h> paramList)
  {
    b = new q[paramList.size()];
    int i = 0;
    while (i < paramList.size())
    {
      b[i] = new q((h)paramList.get(i));
      i += 1;
    }
  }
  
  public h a()
  {
    for (;;)
    {
      Object localObject;
      if (a >= b.length) {
        localObject = null;
      }
      h localh;
      do
      {
        return (h)localObject;
        localh = b[a].a();
        localObject = localh;
      } while (localh != null);
      a += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.a.b.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */