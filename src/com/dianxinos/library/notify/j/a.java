package com.dianxinos.library.notify.j;

import java.util.Collection;
import java.util.Iterator;

public class a
{
  public static String a(Collection<String> paramCollection)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (paramCollection == null) {
      localStringBuilder.append("list is null");
    }
    for (;;)
    {
      return localStringBuilder.toString();
      if (paramCollection.isEmpty())
      {
        localStringBuilder.append("list is empty");
      }
      else
      {
        paramCollection = paramCollection.iterator();
        while (paramCollection.hasNext())
        {
          String str = (String)paramCollection.next();
          if (paramCollection.hasNext()) {
            localStringBuilder.append(str).append(", ");
          } else {
            localStringBuilder.append(str);
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.j.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */