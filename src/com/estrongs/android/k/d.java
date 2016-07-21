package com.estrongs.android.k;

import android.content.ContentValues;
import java.util.HashMap;

public class d
  extends e
{
  private f a;
  private g b;
  
  public d(String paramString)
  {
    this(paramString, null);
  }
  
  public d(String paramString, HashMap<String, String> paramHashMap)
  {
    super(paramString, -1L, false, true);
    a = new f(paramHashMap);
  }
  
  public ContentValues a()
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("lockname", g());
    if (e()) {}
    for (int i = 1;; i = 0)
    {
      localContentValues.put("locked", Integer.valueOf(i));
      return localContentValues;
    }
  }
  
  public void a(long paramLong)
  {
    a(paramLong, true);
  }
  
  public void a(long paramLong, boolean paramBoolean)
  {
    super.a(paramLong);
  }
  
  public void a(f paramf, boolean paramBoolean)
  {
    a = paramf;
  }
  
  public void a(g paramg)
  {
    b = paramg;
  }
  
  public void a(boolean paramBoolean)
  {
    a(paramBoolean, true);
  }
  
  public void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    super.a(paramBoolean1);
  }
  
  public f b()
  {
    return a;
  }
  
  public void b(boolean paramBoolean)
  {
    b(paramBoolean, true);
  }
  
  public void b(boolean paramBoolean1, boolean paramBoolean2)
  {
    super.b(paramBoolean1);
    if (paramBoolean2) {
      d();
    }
  }
  
  public g c()
  {
    return b;
  }
  
  public void d()
  {
    h.a().b(this);
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == null) {}
    while (!(paramObject instanceof d)) {
      return false;
    }
    paramObject = (d)paramObject;
    return g().equals(((d)paramObject).g());
  }
  
  public String toString()
  {
    return g();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.k.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */