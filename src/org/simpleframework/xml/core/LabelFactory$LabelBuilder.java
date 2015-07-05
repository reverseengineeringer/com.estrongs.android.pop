package org.simpleframework.xml.core;

import java.lang.reflect.Constructor;

class LabelFactory$LabelBuilder
{
  public Class entry;
  public Class label;
  public Class type;
  
  public LabelFactory$LabelBuilder(Class paramClass1, Class paramClass2)
  {
    this(paramClass1, paramClass2, null);
  }
  
  public LabelFactory$LabelBuilder(Class paramClass1, Class paramClass2, Class paramClass3)
  {
    entry = paramClass3;
    label = paramClass2;
    type = paramClass1;
  }
  
  private Constructor getConstructor(Class paramClass)
  {
    return type.getConstructor(new Class[] { Contact.class, paramClass });
  }
  
  private Constructor getConstructor(Class paramClass1, Class paramClass2)
  {
    return type.getConstructor(new Class[] { Contact.class, paramClass1, paramClass2 });
  }
  
  public Constructor getConstructor()
  {
    if (entry != null) {
      return getConstructor(label, entry);
    }
    return getConstructor(label);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.LabelFactory.LabelBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */