package org.simpleframework.xml.core;

import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import org.simpleframework.xml.strategy.Type;

abstract class TemplateLabel
  implements Label
{
  public Type getDependent()
  {
    return null;
  }
  
  public String getEntry()
  {
    return null;
  }
  
  public Label getLabel(Class paramClass)
  {
    return this;
  }
  
  public Collection<String> getNames()
  {
    return Arrays.asList(new String[] { getPath(), getName() });
  }
  
  public Collection<String> getNames(Context paramContext)
  {
    return Arrays.asList(new String[] { getPath(paramContext), getName(paramContext) });
  }
  
  public Collection<String> getPaths()
  {
    return Collections.singleton(getPath());
  }
  
  public Collection<String> getPaths(Context paramContext)
  {
    return Collections.singleton(getPath(paramContext));
  }
  
  public Type getType(Class paramClass)
  {
    return getContact();
  }
  
  public boolean isAttribute()
  {
    return false;
  }
  
  public boolean isCollection()
  {
    return false;
  }
  
  public boolean isInline()
  {
    return false;
  }
  
  public boolean isText()
  {
    return false;
  }
  
  public boolean isUnion()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.TemplateLabel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */