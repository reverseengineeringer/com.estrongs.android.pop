package com.estrongs.android.a;

import com.estrongs.android.a.b.e;
import com.estrongs.android.a.b.g;
import com.estrongs.android.a.b.l;
import com.estrongs.android.a.b.o;
import com.estrongs.android.a.b.p;
import com.estrongs.android.a.b.w;
import com.estrongs.fs.h;
import com.estrongs.fs.x;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class i
  implements Runnable
{
  i(b paramb, List paramList, k paramk) {}
  
  public void run()
  {
    ArrayList localArrayList = new ArrayList(a.size());
    Iterator localIterator = a.iterator();
    if (localIterator.hasNext())
    {
      h localh = (h)localIterator.next();
      Object localObject = localh.getAbsolutePath();
      if ((localh instanceof g)) {
        localObject = new l((String)localObject, localh.length());
      }
      for (;;)
      {
        localArrayList.add(localObject);
        break;
        if ((localh instanceof com.estrongs.fs.impl.n.a))
        {
          localObject = new p((String)localObject, localh.length(), localh.lastModified());
        }
        else if ((localh instanceof com.estrongs.fs.impl.p.a))
        {
          localObject = new o((String)localObject, localh.length(), localh.lastModified());
        }
        else if ((localh instanceof com.estrongs.fs.impl.v.a))
        {
          localObject = new w((String)localObject, localh.length(), localh.lastModified());
        }
        else if ((localh instanceof com.estrongs.fs.impl.f.a))
        {
          localObject = new e((String)localObject, localh.length(), localh.lastModified());
        }
        else if ((localh instanceof x))
        {
          l locall = new l(((String)localObject).substring(0, ((String)localObject).length() - 1));
          localObject = locall;
          if (b.j(c))
          {
            localObject = locall;
            if (b.g(c) != null)
            {
              b.g(c).a(localh);
              localObject = locall;
            }
          }
        }
        else
        {
          localObject = new com.estrongs.android.a.b.k((String)localObject, localh.length(), localh.lastModified());
        }
      }
    }
    if ((b.j(c)) && (b.g(c) != null)) {
      b.g(c).a(localArrayList);
    }
    for (;;)
    {
      if (b != null) {
        b.a();
      }
      return;
      if ((b.e(c)) && (b.c(c) != null)) {
        b.c(c).b(localArrayList);
      }
      if ((b.a(c)) && (b.f(c) != null)) {
        b.f(c).a(localArrayList);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.a.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */