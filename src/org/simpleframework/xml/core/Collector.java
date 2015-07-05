package org.simpleframework.xml.core;

import java.util.Collection;
import java.util.Iterator;

class Collector
  implements Criteria
{
  private final Collector.Registry alias = new Collector.Registry(this, null);
  private final Context context;
  private final Collector.Registry registry = new Collector.Registry(this, null);
  
  public Collector(Context paramContext)
  {
    context = paramContext;
  }
  
  public void commit(Object paramObject)
  {
    Iterator localIterator = registry.values().iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      Variable localVariable = (Variable)localIterator.next();
      localVariable.getContact().set(paramObject, localVariable.getValue());
    }
  }
  
  public Variable get(String paramString)
  {
    return (Variable)registry.get(paramString);
  }
  
  public Iterator<String> iterator()
  {
    return registry.iterator();
  }
  
  public Variable remove(String paramString)
  {
    paramString = (Variable)alias.remove(paramString);
    Object localObject;
    String str1;
    if (paramString != null)
    {
      localObject = paramString.getNames(context);
      str1 = paramString.getPath(context);
      localObject = ((Collection)localObject).iterator();
    }
    for (;;)
    {
      if (!((Iterator)localObject).hasNext())
      {
        registry.remove(str1);
        return paramString;
      }
      String str2 = (String)((Iterator)localObject).next();
      alias.remove(str2);
    }
  }
  
  public Variable resolve(String paramString)
  {
    return (Variable)alias.get(paramString);
  }
  
  public void set(Label paramLabel, Object paramObject)
  {
    paramObject = new Variable(paramLabel, paramObject);
    Object localObject;
    if (paramLabel != null)
    {
      localObject = paramLabel.getNames(context);
      paramLabel = paramLabel.getPath(context);
      if (!registry.containsKey(paramLabel)) {
        registry.put(paramLabel, paramObject);
      }
      paramLabel = ((Collection)localObject).iterator();
    }
    for (;;)
    {
      if (!paramLabel.hasNext()) {
        return;
      }
      localObject = (String)paramLabel.next();
      alias.put(localObject, paramObject);
    }
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.Collector
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */