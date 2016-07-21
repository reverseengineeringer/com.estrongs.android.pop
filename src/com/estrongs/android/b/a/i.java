package com.estrongs.android.b.a;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.Random;
import java.util.Set;

class i
{
  String a;
  boolean b;
  String c;
  HashMap<String, a> d;
  
  public i(String paramString, boolean paramBoolean)
  {
    a = paramString;
    b = paramBoolean;
  }
  
  void a(a parama)
  {
    if (d == null) {
      d = new HashMap();
    }
    String str = parama.m();
    d.put(str, parama);
  }
  
  void a(String paramString, List<a> paramList, HashSet<String> paramHashSet)
  {
    if (paramString != null)
    {
      if (d != null)
      {
        paramString = (a)d.get(paramString);
        if (paramString != null) {
          paramList.add(paramString);
        }
      }
      return;
    }
    if (!b)
    {
      paramList.add(new p(a));
      return;
    }
    paramString = new ArrayList(d.size());
    Iterator localIterator1 = d.entrySet().iterator();
    label91:
    label245:
    for (;;)
    {
      a locala1;
      if (localIterator1.hasNext())
      {
        locala1 = (a)((Map.Entry)localIterator1.next()).getValue();
        Iterator localIterator2 = paramList.iterator();
        a locala2;
        do
        {
          if (!localIterator2.hasNext()) {
            break;
          }
          locala2 = (a)localIterator2.next();
        } while ((!paramHashSet.contains(locala1.toString())) && (!locala1.toString().equals(locala2.toString())));
      }
      for (int i = 1;; i = 0)
      {
        if (i != 0) {
          break label245;
        }
        paramString.add(locala1);
        break label91;
        if (paramString.isEmpty()) {
          break;
        }
        paramList.add((a)paramString.get(new Random().nextInt(paramString.size())));
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.b.a.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */