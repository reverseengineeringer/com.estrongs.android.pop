package com.estrongs.io.archive.sevenzip;

import com.estrongs.a.b.s;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.impl.local.h;
import com.estrongs.io.archive.g;
import com.estrongs.io.archive.i;
import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class x
  extends i
{
  private String a;
  private b b;
  
  public x(String paramString1, com.estrongs.io.a.d paramd, String paramString2)
  {
    super(paramString1, paramd, new HashMap());
    a = paramString2;
  }
  
  public void a(List<String> paramList)
  {
    e = 0L;
    Object localObject1 = new File(a());
    if (!h.a(((File)localObject1).getParentFile().getAbsolutePath()))
    {
      if (com.estrongs.fs.d.a() == null) {
        break label101;
      }
      com.estrongs.fs.d.a().g(((File)localObject1).getParentFile().getAbsolutePath());
    }
    Object localObject2;
    for (;;)
    {
      localObject1 = new g(d);
      localObject2 = paramList.iterator();
      while (((Iterator)localObject2).hasNext()) {
        ((g)localObject1).a(new File((String)((Iterator)localObject2).next()));
      }
      label101:
      h.g(((File)localObject1).getParentFile().getAbsolutePath());
    }
    if (d.b()) {}
    for (;;)
    {
      return;
      d.a(new File(c).getName(), ((g)localObject1).a(), ((g)localObject1).b());
      localObject2 = c + ".tmp";
      localObject1 = new File((String)localObject2);
      try
      {
        b = new b(paramList, new y(this));
        if (b.a(((File)localObject1).getParent(), (String)localObject2, a))
        {
          if (h.a(c)) {
            com.estrongs.fs.d.a().a(c, s.b);
          }
          if ((localObject1 != null) && (((File)localObject1).exists())) {
            com.estrongs.fs.d.a().a(com.estrongs.fs.d.a().j(((File)localObject1).getAbsolutePath()), c);
          }
        }
        return;
      }
      catch (Exception paramList)
      {
        paramList.printStackTrace();
        throw new FileSystemException(paramList);
      }
      finally
      {
        if (d.b()) {
          com.estrongs.fs.d.a().a(((File)localObject1).getCanonicalPath(), s.b);
        }
      }
    }
  }
  
  public void b()
  {
    if (b != null) {
      b.a();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.io.archive.sevenzip.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */