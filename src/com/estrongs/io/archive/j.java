package com.estrongs.io.archive;

import com.estrongs.a.b.o;
import com.estrongs.a.b.s;
import com.estrongs.android.pop.FexApplication;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class j
{
  private Map<String, String> a = new HashMap();
  protected String c;
  protected com.estrongs.io.a.d d;
  protected long e = 0L;
  
  public j(String paramString, com.estrongs.io.a.d paramd, Map<String, String> paramMap)
  {
    c = paramString;
    if (paramd == null) {}
    for (d = com.estrongs.io.a.d.b;; d = paramd)
    {
      if (paramMap != null) {
        a = paramMap;
      }
      return;
    }
  }
  
  public String a()
  {
    return c;
  }
  
  protected void a(File paramFile, String paramString, f paramf)
  {
    if (!com.estrongs.fs.impl.local.i.a(paramFile.getPath())) {}
    while (d.b()) {
      return;
    }
    if ((paramString == null) || (paramString.length() < 1)) {}
    for (paramString = paramFile.getName();; paramString = paramString + "/" + paramFile.getName())
    {
      if (!com.estrongs.fs.impl.local.i.h(paramFile.getPath())) {
        break label163;
      }
      paramf.a(paramString + "/");
      paramFile = com.estrongs.fs.impl.local.i.a(paramFile.getPath(), com.estrongs.fs.i.c, o.a).iterator();
      while (paramFile.hasNext()) {
        a(new File(((com.estrongs.fs.h)paramFile.next()).getAbsolutePath()), paramString, paramf);
      }
      break;
    }
    label163:
    d.a(paramFile.getName(), com.estrongs.fs.impl.local.i.e(paramFile.getPath()));
    paramf.a(paramString);
    byte[] arrayOfByte = new byte[1048576];
    try
    {
      paramString = new BufferedInputStream(com.estrongs.fs.impl.local.i.a(FexApplication.a(), paramFile.getPath()), 1048576);
      try
      {
        for (;;)
        {
          int i = paramString.read(arrayOfByte, 0, 1048576);
          if (i != -1)
          {
            boolean bool = d.b();
            if (!bool) {}
          }
          else
          {
            if (paramString != null) {
              paramString.close();
            }
            paramf.a();
            return;
          }
          paramf.a(arrayOfByte, 0, i);
          long l = e;
          e = (i + l);
          d.a(e);
        }
        if (paramString == null) {
          break label316;
        }
      }
      finally {}
    }
    finally
    {
      paramString = null;
    }
    paramString.close();
    label316:
    paramf.a();
    throw paramFile;
  }
  
  public void a(List<String> paramList)
  {
    e = 0L;
    Object localObject1 = new File(a());
    if (!com.estrongs.fs.impl.local.i.a(((File)localObject1).getParentFile().getAbsolutePath()))
    {
      if (com.estrongs.fs.d.a() == null) {
        break label109;
      }
      com.estrongs.fs.d.a().g(((File)localObject1).getParentFile().getAbsolutePath());
    }
    Object localObject2;
    for (;;)
    {
      localObject1 = new h(d);
      localObject2 = paramList.iterator();
      while (((Iterator)localObject2).hasNext()) {
        ((h)localObject1).a(new File((String)((Iterator)localObject2).next()));
      }
      label109:
      com.estrongs.fs.impl.local.i.g(((File)localObject1).getParentFile().getAbsolutePath());
    }
    if (d.b()) {}
    do
    {
      return;
      localObject2 = d;
      String str = new File(c).getName();
      long l = ((h)localObject1).a();
      int i = ((h)localObject1).b();
      ((com.estrongs.io.a.d)localObject2).a(str, l, ((h)localObject1).c() + i);
      localObject1 = g.a(c);
      a.put("archive_type", localObject1);
      localObject1 = c + ".tmp";
      localObject2 = d.a((String)localObject1, a);
      try
      {
        paramList = paramList.iterator();
        while (paramList.hasNext()) {
          a(new File((String)paramList.next()), "", (f)localObject2);
        }
        ((f)localObject2).b();
      }
      catch (Throwable paramList)
      {
        paramList.printStackTrace();
        if (!(paramList instanceof IOException)) {
          break label455;
        }
        throw ((IOException)paramList);
      }
      finally
      {
        ((f)localObject2).b();
        localObject1 = new File((String)localObject1);
        if (!d.b()) {}
        com.estrongs.fs.d.a().a(((File)localObject1).getCanonicalPath(), s.b);
      }
      paramList = new File((String)localObject1);
      if (d.b()) {
        break;
      }
      if (com.estrongs.fs.impl.local.i.a(c)) {
        com.estrongs.fs.d.a().a(c, s.b);
      }
    } while ((paramList == null) || (!paramList.exists()));
    com.estrongs.fs.d.a().a(com.estrongs.fs.d.a().j(paramList.getAbsolutePath()), c);
    return;
    com.estrongs.fs.d.a().a(paramList.getCanonicalPath(), s.b);
    return;
    label455:
    throw new IOException(paramList.getMessage());
  }
}

/* Location:
 * Qualified Name:     com.estrongs.io.archive.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */