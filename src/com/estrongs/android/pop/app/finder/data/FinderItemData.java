package com.estrongs.android.pop.app.finder.data;

public class FinderItemData
  extends a
{
  private boolean c = false;
  private boolean d = false;
  private boolean e = true;
  private String f;
  private long g;
  private long h;
  private long i;
  private long j;
  private FinderItemData.AdditionalType k = null;
  private String l;
  
  public FinderItemData(int paramInt)
  {
    super(paramInt);
  }
  
  public FinderItemData(String paramString)
  {
    super(paramString);
  }
  
  public FinderItemData a(long paramLong)
  {
    g = paramLong;
    return this;
  }
  
  public FinderItemData a(FinderItemData.AdditionalType paramAdditionalType)
  {
    k = paramAdditionalType;
    return this;
  }
  
  public FinderItemData a(String paramString)
  {
    f = paramString;
    return this;
  }
  
  public FinderItemData a(boolean paramBoolean)
  {
    c = paramBoolean;
    return this;
  }
  
  public boolean a()
  {
    return c;
  }
  
  public FinderItemData b(long paramLong)
  {
    h = paramLong;
    return this;
  }
  
  public void b(boolean paramBoolean)
  {
    d = paramBoolean;
  }
  
  public boolean b()
  {
    return d;
  }
  
  public FinderItemData c(long paramLong)
  {
    i = paramLong;
    return this;
  }
  
  public FinderItemData c(boolean paramBoolean)
  {
    e = paramBoolean;
    return this;
  }
  
  public boolean c()
  {
    return e;
  }
  
  public FinderItemData.AdditionalType d()
  {
    return k;
  }
  
  public FinderItemData d(long paramLong)
  {
    j = paramLong;
    return this;
  }
  
  public String e()
  {
    return f;
  }
  
  public long f()
  {
    return g;
  }
  
  public long g()
  {
    return h;
  }
  
  public long h()
  {
    return i;
  }
  
  public long i()
  {
    return j;
  }
  
  public String j()
  {
    return l;
  }
  
  public Object k()
  {
    if (b != null) {
      return b;
    }
    return Integer.valueOf(a);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.finder.data.FinderItemData
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */