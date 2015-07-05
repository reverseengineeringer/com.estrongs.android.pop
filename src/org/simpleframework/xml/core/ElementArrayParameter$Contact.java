package org.simpleframework.xml.core;

import java.lang.reflect.Constructor;
import org.simpleframework.xml.ElementArray;

class ElementArrayParameter$Contact
  extends ParameterContact<ElementArray>
{
  public ElementArrayParameter$Contact(ElementArray paramElementArray, Constructor paramConstructor, int paramInt)
  {
    super(paramElementArray, paramConstructor, paramInt);
  }
  
  public String getName()
  {
    return ((ElementArray)label).name();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.ElementArrayParameter.Contact
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */