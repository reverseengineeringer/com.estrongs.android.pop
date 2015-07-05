package org.simpleframework.xml.core;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;

class Signature
  extends LinkedHashMap<String, Parameter>
{
  private final Class type;
  
  public Signature(Class paramClass)
  {
    type = paramClass;
  }
  
  public Parameter getParameter(int paramInt)
  {
    return (Parameter)getParameters().get(paramInt);
  }
  
  public Parameter getParameter(String paramString)
  {
    return (Parameter)get(paramString);
  }
  
  public List<Parameter> getParameters()
  {
    return new ArrayList(values());
  }
  
  public Signature getSignature(Context paramContext)
  {
    Signature localSignature = new Signature(type);
    Iterator localIterator = values().iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return localSignature;
      }
      Parameter localParameter = (Parameter)localIterator.next();
      localSignature.put(localParameter.getPath(paramContext), localParameter);
    }
  }
  
  public Class getType()
  {
    return type;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.Signature
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */