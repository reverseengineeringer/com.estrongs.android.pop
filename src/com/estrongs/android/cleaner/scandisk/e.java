package com.estrongs.android.cleaner.scandisk;

import android.os.Environment;
import android.text.TextUtils;
import com.estrongs.android.cleaner.j;
import com.estrongs.android.pop.b;
import com.estrongs.android.util.ap;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class e
{
  private static e a;
  private List<String> b;
  private List<String> c;
  private Set<String> d;
  
  private e()
  {
    b();
  }
  
  public static final e a()
  {
    if (a == null) {}
    try
    {
      if (a == null) {
        a = new e();
      }
      return a;
    }
    finally {}
  }
  
  private void a(List<String> paramList) {}
  
  private void b()
  {
    Object localObject2 = b.b();
    Object localObject1 = b.b();
    Object localObject3 = ap.a();
    if ((((List)localObject3).remove(localObject1)) && ("mounted".equals(Environment.getExternalStorageState()))) {
      ((List)localObject3).add(0, localObject2);
    }
    localObject2 = j.a((List)localObject3);
    b = new ArrayList();
    c = new ArrayList();
    b.add((String)localObject1 + "/Android/data");
    c.add((String)localObject1 + "/Download");
    localObject1 = ((List)localObject2).iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject3 = (String)((Iterator)localObject1).next();
      b.add((String)localObject3 + "/Android/data");
      c.add((String)localObject3 + "/Download");
    }
    b = j.a(b);
    c = j.a(c);
    b(b);
    a((List)localObject2);
  }
  
  private void b(List<String> paramList)
  {
    d = new HashSet();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      String str1 = (String)paramList.next();
      String[] arrayOfString = new File(str1).list();
      if (arrayOfString != null)
      {
        int j = arrayOfString.length;
        int i = 0;
        while (i < j)
        {
          String str2 = arrayOfString[i];
          if (new File(str1 + "/" + str2).isDirectory()) {
            d.add(str2);
          }
          i += 1;
        }
      }
    }
  }
  
  public boolean a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return false;
    }
    String str = paramString;
    if (paramString.charAt(paramString.length() - 1) == '/') {
      str = paramString.substring(0, paramString.length() - 1);
    }
    paramString = b.iterator();
    while (paramString.hasNext()) {
      if (str.equals((String)paramString.next())) {
        return true;
      }
    }
    return false;
  }
  
  public String b(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (paramString.startsWith(str))
      {
        int i = paramString.indexOf("/", str.length() + 1);
        if (i == -1) {
          return null;
        }
        return paramString.substring(0, i);
      }
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.cleaner.scandisk.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */