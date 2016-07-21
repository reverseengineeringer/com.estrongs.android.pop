package com.estrongs.android.a.b;

import com.estrongs.fs.x;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

public class g
  extends x
{
  private final int a;
  private final int b;
  private final long c;
  private final int d;
  private final long e;
  private final List<q> f;
  private Comparator<q> g = new h(this);
  
  public g(i parami)
  {
    super(parami.e_());
    a = parami.b();
    b = parami.c();
    c = parami.d();
    f = parami.g();
    d = parami.e();
    e = parami.f();
  }
  
  public final int a()
  {
    return a;
  }
  
  public final int b()
  {
    return b;
  }
  
  public final List<com.estrongs.fs.h> c()
  {
    Object localObject = new ArrayList(f);
    Collections.sort((List)localObject, g);
    ArrayList localArrayList = new ArrayList(f.size());
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      q localq = (q)((Iterator)localObject).next();
      if (localq.h()) {
        localArrayList.add(localq.a());
      }
    }
    return localArrayList;
  }
  
  public boolean exists()
  {
    return new File(getAbsolutePath()).exists();
  }
  
  public final long length()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.a.b.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */