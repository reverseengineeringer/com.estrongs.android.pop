package org.simpleframework.xml.core;

import java.lang.reflect.Constructor;
import org.simpleframework.xml.ElementMap;

class ElementMapParameter$Contact
  extends ParameterContact<ElementMap>
{
  public ElementMapParameter$Contact(ElementMap paramElementMap, Constructor paramConstructor, int paramInt)
  {
    super(paramElementMap, paramConstructor, paramInt);
  }
  
  public String getName()
  {
    return ((ElementMap)label).name();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.ElementMapParameter.Contact
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */