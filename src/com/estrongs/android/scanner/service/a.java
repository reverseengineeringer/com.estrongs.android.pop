package com.estrongs.android.scanner.service;

import com.estrongs.android.scanner.ae;
import com.estrongs.android.util.l;
import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.Stack;

class a
{
  private final ae a = new ae();
  private final b b;
  private final Map<String, c> c;
  
  public a(b paramb)
  {
    b = paramb;
    c = new HashMap();
  }
  
  public void a()
  {
    a.a();
  }
  
  public void a(String paramString)
  {
    if (paramString == null) {}
    Object localObject1;
    Object localObject2;
    do
    {
      return;
      while (paramString.isEmpty())
      {
        do
        {
          localObject1 = paramString;
          if (!paramString.endsWith("/")) {
            localObject1 = paramString + "/";
          }
        } while (a.a((String)localObject1));
        paramString = new Stack();
        paramString.push(localObject1);
      }
      localObject1 = (String)paramString.pop();
      localObject2 = new c(this, (String)localObject1);
      ((c)localObject2).startWatching();
      c.put(localObject1, localObject2);
      localObject1 = new File((String)localObject1).listFiles();
    } while (localObject1 == null);
    int j = localObject1.length;
    int i = 0;
    label137:
    if (i < j)
    {
      localObject2 = localObject1[i];
      if (!a.c(((File)localObject2).getName())) {
        break label170;
      }
    }
    for (;;)
    {
      i += 1;
      break label137;
      break;
      label170:
      if (((File)localObject2).isDirectory())
      {
        localObject2 = ((File)localObject2).getPath() + "/";
        if (!a.a((String)localObject2)) {
          paramString.push(localObject2);
        }
      }
    }
  }
  
  public void b()
  {
    l.e("SingleFileObserver", "stopWatching all paths");
    if (c.isEmpty()) {
      return;
    }
    Iterator localIterator = c.entrySet().iterator();
    while (localIterator.hasNext()) {
      ((c)((Map.Entry)localIterator.next()).getValue()).stopWatching();
    }
    c.clear();
  }
  
  public void b(String paramString)
  {
    if ((c.isEmpty()) || (paramString == null)) {}
    c localc;
    do
    {
      return;
      localc = (c)c.remove(paramString);
    } while (localc == null);
    l.e("SingleFileObserver", "stopWatching: " + paramString);
    localc.stopWatching();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.service.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */