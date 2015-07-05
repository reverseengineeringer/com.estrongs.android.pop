package org.simpleframework.xml.core;

abstract interface Section
  extends Iterable<String>
{
  public abstract String getAttribute(String paramString);
  
  public abstract LabelMap getAttributes();
  
  public abstract Label getElement(String paramString);
  
  public abstract LabelMap getElements();
  
  public abstract String getName();
  
  public abstract String getPath(String paramString);
  
  public abstract String getPrefix();
  
  public abstract Section getSection(String paramString);
  
  public abstract Label getText();
  
  public abstract boolean isSection(String paramString);
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.Section
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */