package com.estrongs.android.pop.app.finder.data;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class FinderGroupData
  extends a
{
  public int c = 1;
  public FinderGroupData.GroupType d;
  private Map<Object, FinderItemData> e;
  
  public FinderGroupData(int paramInt, FinderGroupData.GroupType paramGroupType)
  {
    super(paramInt);
    d = paramGroupType;
    e = new LinkedHashMap();
  }
  
  public static FinderGroupData a(FinderGroupData.GroupType paramGroupType)
  {
    int j = 2131231487;
    int i = j;
    switch (e.a[paramGroupType.ordinal()])
    {
    default: 
      i = j;
    }
    for (;;)
    {
      return new FinderGroupData(i, paramGroupType);
      i = 2131231497;
      continue;
      i = 2131231499;
      continue;
      i = 2131231500;
      continue;
      i = 2131231488;
    }
  }
  
  public FinderItemData a(int paramInt)
  {
    if (!e.containsKey(Integer.valueOf(paramInt)))
    {
      FinderItemData localFinderItemData = new FinderItemData(paramInt);
      e.put(Integer.valueOf(paramInt), localFinderItemData);
      return localFinderItemData;
    }
    return (FinderItemData)e.get(Integer.valueOf(paramInt));
  }
  
  public FinderItemData a(String paramString)
  {
    if (!e.containsKey(paramString))
    {
      FinderItemData localFinderItemData = new FinderItemData(paramString);
      e.put(paramString, localFinderItemData);
      return localFinderItemData;
    }
    return (FinderItemData)e.get(paramString);
  }
  
  public Collection<FinderItemData> a()
  {
    return e.values();
  }
  
  public void a(FinderItemData paramFinderItemData)
  {
    if (!paramFinderItemData.a()) {}
    for (boolean bool = true;; bool = false)
    {
      paramFinderItemData.a(bool);
      if ((!e.containsKey(paramFinderItemData.k())) || (!paramFinderItemData.a()) || ((d != FinderGroupData.GroupType.Size) && (d != FinderGroupData.GroupType.Time))) {
        break;
      }
      Iterator localIterator = e.values().iterator();
      while (localIterator.hasNext())
      {
        FinderItemData localFinderItemData = (FinderItemData)localIterator.next();
        if ((localFinderItemData != paramFinderItemData) && (localFinderItemData.a())) {
          localFinderItemData.a(false);
        }
      }
    }
  }
  
  public FinderItemData b(int paramInt)
  {
    if (!e.containsKey(Integer.valueOf(paramInt))) {
      return null;
    }
    return (FinderItemData)e.get(Integer.valueOf(paramInt));
  }
  
  public List<FinderItemData> b()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = e.values().iterator();
    while (localIterator.hasNext())
    {
      FinderItemData localFinderItemData = (FinderItemData)localIterator.next();
      if (localFinderItemData.b()) {
        localArrayList.add(localFinderItemData);
      }
    }
    return localArrayList;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.finder.data.FinderGroupData
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */