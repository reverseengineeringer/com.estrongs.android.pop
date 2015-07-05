package org.simpleframework.xml.core;

import org.simpleframework.xml.stream.Style;

abstract class TemplateParameter
  implements Parameter
{
  public String getName(Context paramContext)
  {
    return paramContext.getStyle().getElement(getName());
  }
  
  public String getPath(Context paramContext)
  {
    return getExpression().getElement(getName(paramContext));
  }
  
  public boolean isAttribute()
  {
    return false;
  }
  
  public boolean isText()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.TemplateParameter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */