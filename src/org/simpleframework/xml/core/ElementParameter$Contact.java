package org.simpleframework.xml.core;

import java.lang.reflect.Constructor;
import org.simpleframework.xml.Element;

class ElementParameter$Contact
  extends ParameterContact<Element>
{
  public ElementParameter$Contact(Element paramElement, Constructor paramConstructor, int paramInt)
  {
    super(paramElement, paramConstructor, paramInt);
  }
  
  public String getName()
  {
    return ((Element)label).name();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.ElementParameter.Contact
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */