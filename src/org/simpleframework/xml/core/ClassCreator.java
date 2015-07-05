package org.simpleframework.xml.core;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class ClassCreator
  implements Creator
{
  private final List<Initializer> list;
  private final Initializer primary;
  private final Signature registry;
  private final Class type;
  
  public ClassCreator(List<Initializer> paramList, Signature paramSignature, Initializer paramInitializer)
  {
    type = paramSignature.getType();
    registry = paramSignature;
    primary = paramInitializer;
    list = paramList;
  }
  
  private Initializer getInitializer(Context paramContext, Criteria paramCriteria)
  {
    Object localObject = primary;
    Iterator localIterator = list.iterator();
    double d1 = 0.0D;
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return (Initializer)localObject;
      }
      Initializer localInitializer = (Initializer)localIterator.next();
      double d2 = localInitializer.getScore(paramContext, paramCriteria);
      if (d2 > d1)
      {
        d1 = d2;
        localObject = localInitializer;
      }
    }
  }
  
  public List<Initializer> getInitializers()
  {
    return new ArrayList(list);
  }
  
  public Object getInstance(Context paramContext)
  {
    return primary.getInstance(paramContext);
  }
  
  public Object getInstance(Context paramContext, Criteria paramCriteria)
  {
    Initializer localInitializer = getInitializer(paramContext, paramCriteria);
    if (localInitializer == null) {
      throw new PersistenceException("Constructor not matched for %s", new Object[] { type });
    }
    return localInitializer.getInstance(paramContext, paramCriteria);
  }
  
  public Parameter getParameter(String paramString)
  {
    return (Parameter)registry.get(paramString);
  }
  
  public List<Parameter> getParameters()
  {
    return registry.getParameters();
  }
  
  public boolean isDefault()
  {
    return primary != null;
  }
  
  public String toString()
  {
    return String.format("creator for %s", new Object[] { type });
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.ClassCreator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */