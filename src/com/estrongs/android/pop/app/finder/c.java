package com.estrongs.android.pop.app.finder;

import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.app.f.s;
import com.estrongs.android.pop.app.f.w;
import com.estrongs.android.pop.app.finder.data.FinderItemData.AdditionalType;
import com.estrongs.fs.i;
import java.util.Iterator;
import java.util.List;

public class c
  extends com.estrongs.fs.b
{
  private List<String> a;
  private List<FinderItemData.AdditionalType> b;
  private List<String> d;
  private boolean e = ad.a(FexApplication.a()).q();
  
  public c()
  {
    this(null);
  }
  
  public c(i parami)
  {
    super(parami);
  }
  
  public List<String> a()
  {
    return a;
  }
  
  public void a(long paramLong1, long paramLong2)
  {
    if ((paramLong1 < 0L) && (paramLong2 < 0L)) {
      return;
    }
    a(new w(paramLong1, paramLong2));
  }
  
  public void a(List<String> paramList)
  {
    a = paramList;
  }
  
  public void a(boolean paramBoolean)
  {
    e = paramBoolean;
  }
  
  public void b(long paramLong1, long paramLong2)
  {
    if ((paramLong1 < 0L) && (paramLong2 < 0L)) {
      return;
    }
    a(new s(paramLong1, paramLong2));
  }
  
  public void b(List<FinderItemData.AdditionalType> paramList)
  {
    b = paramList;
    if (paramList == null) {}
    for (;;)
    {
      return;
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        FinderItemData.AdditionalType localAdditionalType = (FinderItemData.AdditionalType)paramList.next();
        if (localAdditionalType == FinderItemData.AdditionalType.Hidden_file) {
          a(true);
        } else if (localAdditionalType == FinderItemData.AdditionalType.System_file) {
          a(new com.estrongs.android.pop.app.finder.data.c());
        } else if (localAdditionalType == FinderItemData.AdditionalType.Media_file) {
          a(new com.estrongs.android.pop.app.finder.data.b());
        }
      }
    }
  }
  
  public boolean b()
  {
    return e;
  }
  
  public void c(List<String> paramList)
  {
    d = paramList;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.finder.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */