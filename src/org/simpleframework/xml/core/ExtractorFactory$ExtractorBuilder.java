package org.simpleframework.xml.core;

import java.lang.reflect.Constructor;

class ExtractorFactory$ExtractorBuilder
{
  private final Class label;
  private final Class type;
  
  public ExtractorFactory$ExtractorBuilder(Class paramClass1, Class paramClass2)
  {
    label = paramClass1;
    type = paramClass2;
  }
  
  private Constructor getConstructor()
  {
    return type.getConstructor(new Class[] { Contact.class, label });
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.ExtractorFactory.ExtractorBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */