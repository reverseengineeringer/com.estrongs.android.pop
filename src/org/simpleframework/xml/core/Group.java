package org.simpleframework.xml.core;

abstract interface Group
{
  public abstract LabelMap getElements(Context paramContext);
  
  public abstract Label getLabel(Class paramClass);
  
  public abstract boolean isInline();
  
  public abstract String toString();
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.Group
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */