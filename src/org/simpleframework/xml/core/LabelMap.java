package org.simpleframework.xml.core;

import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Set;

class LabelMap
  extends LinkedHashMap<String, Label>
  implements Iterable<Label>
{
  private final Policy policy;
  
  public LabelMap()
  {
    this(null);
  }
  
  public LabelMap(Policy paramPolicy)
  {
    policy = paramPolicy;
  }
  
  public Set<String> getKeys()
  {
    HashSet localHashSet = new HashSet();
    Iterator localIterator = iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return localHashSet;
      }
      Object localObject = (Label)localIterator.next();
      if (localObject != null)
      {
        String str = ((Label)localObject).getPath();
        localObject = ((Label)localObject).getName();
        localHashSet.add(str);
        localHashSet.add(localObject);
      }
    }
  }
  
  public Set<String> getKeys(Context paramContext)
  {
    HashSet localHashSet = new HashSet();
    Iterator localIterator = iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return localHashSet;
      }
      Object localObject = (Label)localIterator.next();
      if (localObject != null)
      {
        String str = ((Label)localObject).getPath(paramContext);
        localObject = ((Label)localObject).getName(paramContext);
        localHashSet.add(str);
        localHashSet.add(localObject);
      }
    }
  }
  
  public Label getLabel(String paramString)
  {
    return (Label)remove(paramString);
  }
  
  public LabelMap getLabels(Context paramContext)
  {
    LabelMap localLabelMap = new LabelMap(policy);
    Iterator localIterator = iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return localLabelMap;
      }
      Label localLabel = (Label)localIterator.next();
      if (localLabel != null) {
        localLabelMap.put(localLabel.getPath(paramContext), localLabel);
      }
    }
  }
  
  public Set<String> getPaths()
  {
    HashSet localHashSet = new HashSet();
    Iterator localIterator = iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return localHashSet;
      }
      Label localLabel = (Label)localIterator.next();
      if (localLabel != null) {
        localHashSet.add(localLabel.getPath());
      }
    }
  }
  
  public Set<String> getPaths(Context paramContext)
  {
    HashSet localHashSet = new HashSet();
    Iterator localIterator = iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return localHashSet;
      }
      Label localLabel = (Label)localIterator.next();
      if (localLabel != null) {
        localHashSet.add(localLabel.getPath(paramContext));
      }
    }
  }
  
  public boolean isStrict(Context paramContext)
  {
    if (policy == null) {
      return paramContext.isStrict();
    }
    return (paramContext.isStrict()) && (policy.isStrict());
  }
  
  public Iterator<Label> iterator()
  {
    return values().iterator();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.LabelMap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */