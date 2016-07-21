package com.estrongs.a.b;

import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.d;
import com.estrongs.fs.h;
import com.estrongs.fs.w;
import java.util.ArrayList;
import java.util.List;

class q
{
  r a = null;
  r b = null;
  private d c = d.a();
  
  public q(h paramh)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramh);
    a = new r(localArrayList);
    if (((h)a.a.get(0)).getFileType() == w.a)
    {
      b = a(a);
      return;
    }
    b = a;
  }
  
  private r a(r paramr)
  {
    int i = c;
    try
    {
      List localList = c.a(((h)a.get(i)).getAbsolutePath());
      r localr = paramr;
      if (localList != null)
      {
        localr = paramr;
        if (localList.size() > 0)
        {
          localr = new r(localList);
          r.a(paramr, localr);
          r.b(localr, paramr);
        }
      }
      return localr;
    }
    catch (FileSystemException localFileSystemException)
    {
      localFileSystemException.printStackTrace();
    }
    return paramr;
  }
  
  public h a()
  {
    if (a == null) {
      return null;
    }
    if (!a.b)
    {
      a.b = true;
      return (h)a.a.get(0);
    }
    while (r.a(b) != null)
    {
      int i = b.c;
      if (i >= b.a.size())
      {
        b = r.a(b);
        r.a(b, null);
      }
      else
      {
        if ((!b.b) && (((h)b.a.get(i)).getFileType() == w.a))
        {
          localh = (h)b.a.get(i);
          b.b = true;
          b = a(b);
          return localh;
        }
        boolean bool = b.b;
        h localh = (h)b.a.get(i);
        r localr = b;
        c += 1;
        b.b = false;
        if (!bool) {
          return localh;
        }
      }
    }
    a = null;
    return null;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.a.b.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */