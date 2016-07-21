package com.estrongs.android.k;

import android.database.Cursor;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class h
{
  private static h a = null;
  private final a b = a.a();
  private String[] c;
  private List<d> d = new ArrayList();
  
  private h()
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = "locked";
    c = new String[arrayOfString.length];
    System.arraycopy(arrayOfString, 0, c, 0, arrayOfString.length);
  }
  
  public static h a()
  {
    try
    {
      if (a == null) {
        a = new h();
      }
      h localh = a;
      return localh;
    }
    finally {}
  }
  
  private d c(d paramd)
  {
    Object localObject = paramd.g();
    b.b();
    localObject = "lockname = \"" + (String)localObject + "\"";
    localObject = b.a("lock", c, (String)localObject);
    if ((((Cursor)localObject).getCount() != 0) && (((Cursor)localObject).moveToFirst())) {
      if (((Cursor)localObject).getInt(((Cursor)localObject).getColumnIndex("locked")) != 1) {
        break label121;
      }
    }
    label121:
    for (boolean bool = true;; bool = false)
    {
      paramd.b(bool, false);
      if (((Cursor)localObject).moveToNext()) {
        break;
      }
      ((Cursor)localObject).close();
      b.close();
      return paramd;
    }
  }
  
  public d a(String paramString)
  {
    Iterator localIterator = d.iterator();
    while (localIterator.hasNext())
    {
      d locald = (d)localIterator.next();
      if (locald.g().equals(paramString)) {
        return locald;
      }
    }
    return null;
  }
  
  public void a(d paramd)
  {
    paramd = c(paramd);
    d.add(paramd);
  }
  
  public List<d> b()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = d.iterator();
    while (localIterator.hasNext())
    {
      d locald1 = (d)localIterator.next();
      if ((locald1.f()) && (locald1.e())) {
        if ("lock_nomedia".equals(locald1.g()))
        {
          d locald2 = a("lock_realtimemonitor");
          if ((locald2 != null) && (locald2.f()) && (!locald2.e())) {
            localArrayList.add(locald1);
          }
        }
        else
        {
          localArrayList.add(locald1);
        }
      }
    }
    return localArrayList;
  }
  
  public void b(d paramd)
  {
    b.b();
    b.a(paramd);
    b.close();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.k.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */