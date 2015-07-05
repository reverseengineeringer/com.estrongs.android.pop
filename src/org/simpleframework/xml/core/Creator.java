package org.simpleframework.xml.core;

import java.util.List;

abstract interface Creator
{
  public abstract List<Initializer> getInitializers();
  
  public abstract Object getInstance(Context paramContext);
  
  public abstract Object getInstance(Context paramContext, Criteria paramCriteria);
  
  public abstract Parameter getParameter(String paramString);
  
  public abstract List<Parameter> getParameters();
  
  public abstract boolean isDefault();
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.Creator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */