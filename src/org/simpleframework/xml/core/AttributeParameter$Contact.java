package org.simpleframework.xml.core;

import java.lang.reflect.Constructor;
import org.simpleframework.xml.Attribute;

class AttributeParameter$Contact
  extends ParameterContact<Attribute>
{
  public AttributeParameter$Contact(Attribute paramAttribute, Constructor paramConstructor, int paramInt)
  {
    super(paramAttribute, paramConstructor, paramInt);
  }
  
  public String getName()
  {
    return ((Attribute)label).name();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.AttributeParameter.Contact
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */