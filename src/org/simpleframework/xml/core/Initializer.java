package org.simpleframework.xml.core;

import java.lang.reflect.Constructor;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

class Initializer
{
  private final Constructor factory;
  private final List<Parameter> list;
  private final Signature signature;
  
  public Initializer(Constructor paramConstructor, Signature paramSignature)
  {
    list = paramSignature.getParameters();
    signature = paramSignature;
    factory = paramConstructor;
  }
  
  private double getAdjustment(Context paramContext, double paramDouble)
  {
    double d = list.size() / 1000.0D;
    if (paramDouble > 0.0D) {
      return d + paramDouble / list.size();
    }
    return paramDouble / list.size();
  }
  
  private Object getInstance(Object[] paramArrayOfObject)
  {
    if (!factory.isAccessible()) {
      factory.setAccessible(true);
    }
    return factory.newInstance(paramArrayOfObject);
  }
  
  private double getPercentage(Context paramContext, Criteria paramCriteria)
  {
    Iterator localIterator = list.iterator();
    double d = 0.0D;
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return getAdjustment(paramContext, d);
      }
      Parameter localParameter = (Parameter)localIterator.next();
      if (paramCriteria.resolve(localParameter.getPath(paramContext)) == null)
      {
        if (localParameter.isRequired()) {
          return -1.0D;
        }
        if (localParameter.isPrimitive()) {
          return -1.0D;
        }
      }
      else
      {
        d = 1.0D + d;
      }
    }
  }
  
  private Object getVariable(Context paramContext, Criteria paramCriteria, int paramInt)
  {
    paramContext = paramCriteria.remove(((Parameter)list.get(paramInt)).getPath(paramContext));
    if (paramContext != null) {
      return paramContext.getValue();
    }
    return null;
  }
  
  public Object getInstance(Context paramContext)
  {
    if (!factory.isAccessible()) {
      factory.setAccessible(true);
    }
    return factory.newInstance(new Object[0]);
  }
  
  public Object getInstance(Context paramContext, Criteria paramCriteria)
  {
    Object[] arrayOfObject = list.toArray();
    int i = 0;
    for (;;)
    {
      if (i >= list.size()) {
        return getInstance(arrayOfObject);
      }
      arrayOfObject[i] = getVariable(paramContext, paramCriteria, i);
      i += 1;
    }
  }
  
  public Parameter getParameter(String paramString)
  {
    return (Parameter)signature.get(paramString);
  }
  
  public double getScore(Context paramContext, Criteria paramCriteria)
  {
    Signature localSignature = signature.getSignature(paramContext);
    Iterator localIterator = paramCriteria.iterator();
    label131:
    label160:
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return getPercentage(paramContext, paramCriteria);
      }
      Object localObject1 = (String)localIterator.next();
      Object localObject2 = paramCriteria.resolve((String)localObject1);
      if (localObject2 != null)
      {
        Parameter localParameter = localSignature.getParameter((String)localObject1);
        Contact localContact = ((Label)localObject2).getContact();
        localObject1 = localParameter;
        if (localParameter == null)
        {
          localObject2 = ((Label)localObject2).getNames(paramContext).iterator();
          localObject1 = localParameter;
          if (((Iterator)localObject2).hasNext()) {
            break label131;
          }
        }
        for (;;)
        {
          if ((!localContact.isReadOnly()) || (localObject1 != null)) {
            break label160;
          }
          return -1.0D;
          localParameter = localSignature.getParameter((String)((Iterator)localObject2).next());
          localObject1 = localParameter;
          if (localParameter == null) {
            break;
          }
          localObject1 = localParameter;
        }
      }
    }
  }
  
  public boolean isDefault()
  {
    return signature.size() == 0;
  }
  
  public String toString()
  {
    return factory.toString();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.Initializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */