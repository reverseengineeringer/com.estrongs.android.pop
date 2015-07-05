package org.json.simple;

import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

public class ItemList
{
  List items = new ArrayList();
  private String sp = ",";
  
  public ItemList() {}
  
  public ItemList(String paramString)
  {
    split(paramString, sp, items);
  }
  
  public ItemList(String paramString1, String paramString2)
  {
    sp = paramString1;
    split(paramString1, paramString2, items);
  }
  
  public ItemList(String paramString1, String paramString2, boolean paramBoolean)
  {
    split(paramString1, paramString2, items, paramBoolean);
  }
  
  public void add(int paramInt, String paramString)
  {
    if (paramString == null) {
      return;
    }
    items.add(paramInt, paramString.trim());
  }
  
  public void add(String paramString)
  {
    if (paramString == null) {
      return;
    }
    items.add(paramString.trim());
  }
  
  public void addAll(String paramString)
  {
    split(paramString, sp, items);
  }
  
  public void addAll(String paramString1, String paramString2)
  {
    split(paramString1, paramString2, items);
  }
  
  public void addAll(String paramString1, String paramString2, boolean paramBoolean)
  {
    split(paramString1, paramString2, items, paramBoolean);
  }
  
  public void addAll(ItemList paramItemList)
  {
    items.addAll(items);
  }
  
  public void clear()
  {
    items.clear();
  }
  
  public String get(int paramInt)
  {
    return (String)items.get(paramInt);
  }
  
  public String[] getArray()
  {
    return (String[])items.toArray();
  }
  
  public List getItems()
  {
    return items;
  }
  
  public void reset()
  {
    sp = ",";
    items.clear();
  }
  
  public void setSP(String paramString)
  {
    sp = paramString;
  }
  
  public int size()
  {
    return items.size();
  }
  
  public void split(String paramString1, String paramString2, List paramList)
  {
    if ((paramString1 == null) || (paramString2 == null)) {
      return;
    }
    int j;
    for (int i = 0;; i = j)
    {
      j = paramString1.indexOf(paramString2, i);
      if (j == -1) {}
      do
      {
        paramList.add(paramString1.substring(i).trim());
        return;
        paramList.add(paramString1.substring(i, j).trim());
        j += paramString2.length();
      } while (j == -1);
    }
  }
  
  public void split(String paramString1, String paramString2, List paramList, boolean paramBoolean)
  {
    if ((paramString1 == null) || (paramString2 == null)) {}
    for (;;)
    {
      return;
      if (!paramBoolean) {
        break;
      }
      paramString1 = new StringTokenizer(paramString1, paramString2);
      while (paramString1.hasMoreTokens()) {
        paramList.add(paramString1.nextToken().trim());
      }
    }
    split(paramString1, paramString2, paramList);
  }
  
  public String toString()
  {
    return toString(sp);
  }
  
  public String toString(String paramString)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    int i = 0;
    if (i < items.size())
    {
      if (i == 0) {
        localStringBuffer.append(items.get(i));
      }
      for (;;)
      {
        i += 1;
        break;
        localStringBuffer.append(paramString);
        localStringBuffer.append(items.get(i));
      }
    }
    return localStringBuffer.toString();
  }
}

/* Location:
 * Qualified Name:     org.json.simple.ItemList
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */