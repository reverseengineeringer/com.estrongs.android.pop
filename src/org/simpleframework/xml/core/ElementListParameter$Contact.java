package org.simpleframework.xml.core;

import java.lang.reflect.Constructor;
import org.simpleframework.xml.ElementList;

class ElementListParameter$Contact
  extends ParameterContact<ElementList>
{
  public ElementListParameter$Contact(ElementList paramElementList, Constructor paramConstructor, int paramInt)
  {
    super(paramElementList, paramConstructor, paramInt);
  }
  
  public String getName()
  {
    return ((ElementList)label).name();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.ElementListParameter.Contact
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */