package com.gmail.yuyang226.flickr.d;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

public class c
{
  public static final Pattern a = Pattern.compile("^is|^get");
  
  public static String a(Collection<String> paramCollection, String paramString)
  {
    return a(paramCollection, paramString, false);
  }
  
  public static String a(Collection<String> paramCollection, String paramString, boolean paramBoolean)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    paramCollection = paramCollection.iterator();
    label100:
    for (;;)
    {
      if (!paramCollection.hasNext()) {
        return localStringBuffer.toString();
      }
      if (paramBoolean) {
        localStringBuffer.append("\"" + (String)paramCollection.next() + "\"");
      }
      for (;;)
      {
        if (!paramCollection.hasNext()) {
          break label100;
        }
        localStringBuffer.append(paramString);
        break;
        localStringBuffer.append((String)paramCollection.next());
      }
    }
  }
  
  public static String[] a(String paramString1, String paramString2)
  {
    int j = paramString1.indexOf(paramString2);
    if (j == -1) {
      return new String[] { paramString1 };
    }
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    for (;;)
    {
      if (j == -1)
      {
        if (i != paramString1.length()) {
          localArrayList.add(paramString1.substring(i));
        }
        return (String[])localArrayList.toArray(new String[localArrayList.size()]);
      }
      localArrayList.add(paramString1.substring(i, j));
      i = paramString2.length() + j;
      j = paramString1.indexOf(paramString2, i);
    }
  }
}

/* Location:
 * Qualified Name:     com.gmail.yuyang226.flickr.d.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */