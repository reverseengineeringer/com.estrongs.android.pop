package com.estrongs.io.archive.sevenzip;

import android.content.res.Resources;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.io.a.b;
import com.estrongs.io.archive.h;
import com.estrongs.io.archive.i;
import com.estrongs.io.model.ArchiveEntryFile;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public class r
  extends i
{
  private static String i = "SevenZipInArchive";
  List<d> h;
  private boolean j = l.d();
  private String k;
  private c l = new c(paramString1, c, new s(this));
  
  public r(String paramString1, String paramString2)
  {
    super(paramString1, paramString2);
    g = l.e();
  }
  
  public InputStream a(String paramString)
  {
    return null;
  }
  
  public void a(b paramb)
  {
    Object localObject1;
    Object localObject2;
    try
    {
      if ((j) && (k == null))
      {
        k = paramb.a();
        localObject1 = k;
        if (localObject1 == null) {
          return;
        }
      }
      localObject1 = new h();
      b();
      localObject2 = i();
      while (((Iterator)localObject2).hasNext()) {
        ((h)localObject1).a((ArchiveEntryFile)((Iterator)localObject2).next());
      }
      localObject2 = new File(b).getName();
    }
    catch (IOException paramb)
    {
      if ((paramb.getMessage() != null) && (paramb.getMessage().contains(FexApplication.a().getResources().getString(2131231784)))) {
        k = null;
      }
      throw paramb;
    }
    finally
    {
      c();
    }
    long l1 = ((h)localObject1).a();
    int m = ((h)localObject1).b();
    paramb.a((String)localObject2, l1, ((h)localObject1).c() + m);
    l = new c(b, c, new t(this, paramb));
    l.a(paramb.c(), k);
    c();
  }
  
  public void a(ArchiveEntryFile paramArchiveEntryFile, b paramb)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramArchiveEntryFile.getPath());
    a(localArrayList, paramb);
  }
  
  public void a(List<String> paramList, b paramb)
  {
    if ((j) && (k == null))
    {
      k = paramb.a();
      if (k == null) {
        return;
      }
    }
    a = 0L;
    h localh = new h();
    LinkedList localLinkedList = new LinkedList();
    Object localObject1 = paramList;
    if (paramList == null) {
      localObject1 = new ArrayList();
    }
    if (((List)localObject1).size() == 0) {
      ((List)localObject1).add("/");
    }
    try
    {
      paramList = ((List)localObject1).iterator();
      while (paramList.hasNext())
      {
        Object localObject2 = (String)paramList.next();
        localObject2 = (ArchiveEntryFile)e.get(localObject2);
        localLinkedList.add(localObject2);
        localh.a((File)localObject2);
      }
      paramList = new File(b).getName();
    }
    catch (IOException paramList)
    {
      if ((paramList.getMessage() != null) && (paramList.getMessage().contains(FexApplication.a().getResources().getString(2131231784)))) {
        k = null;
      }
      throw paramList;
    }
    finally
    {
      c();
    }
    long l1 = localh.a();
    int m = localh.b();
    paramb.a(paramList, l1, localh.c() + m);
    l = new c(b, c, new v(this, paramb));
    l.a(paramb.c(), (List)localObject1, k);
    c();
  }
  
  public boolean a()
  {
    return h != null;
  }
  
  public void b()
  {
    c localc = new c(b, c, new u(this));
    try
    {
      h = localc.b(k);
      return;
    }
    catch (Exception localException)
    {
      throw new IOException(localException.getMessage());
    }
  }
  
  public void c()
  {
    h = null;
  }
  
  public File d(ArchiveEntryFile paramArchiveEntryFile, b paramb)
  {
    String str = paramb.c();
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramArchiveEntryFile.getPath());
    a(localArrayList, paramb);
    if ((j) && (k == null)) {
      return null;
    }
    return new File(str, paramArchiveEntryFile.getPath());
  }
  
  public void d()
  {
    super.d();
    if (l != null) {
      l.a();
    }
  }
  
  public boolean e(String paramString)
  {
    return l.c(paramString);
  }
  
  public void f(String paramString)
  {
    k = paramString;
  }
  
  protected Iterator<ArchiveEntryFile> i()
  {
    return new w(this, h.iterator());
  }
}

/* Location:
 * Qualified Name:     com.estrongs.io.archive.sevenzip.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */