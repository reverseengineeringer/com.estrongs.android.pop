package org.simpleframework.xml.core;

import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;

class Primitive
  implements Converter
{
  private final Context context;
  private final String empty;
  private final Class expect;
  private final PrimitiveFactory factory;
  private final Type type;
  
  public Primitive(Context paramContext, Type paramType)
  {
    this(paramContext, paramType, null);
  }
  
  public Primitive(Context paramContext, Type paramType, String paramString)
  {
    factory = new PrimitiveFactory(paramContext, paramType);
    expect = paramType.getType();
    context = paramContext;
    empty = paramString;
    type = paramType;
  }
  
  private Object readElement(InputNode paramInputNode)
  {
    Instance localInstance = factory.getInstance(paramInputNode);
    if (!localInstance.isReference()) {
      return readElement(paramInputNode, localInstance);
    }
    return localInstance.getInstance();
  }
  
  private Object readElement(InputNode paramInputNode, Instance paramInstance)
  {
    paramInputNode = read(paramInputNode, expect);
    if (paramInstance != null) {
      paramInstance.setInstance(paramInputNode);
    }
    return paramInputNode;
  }
  
  private Object readTemplate(String paramString, Class paramClass)
  {
    paramString = context.getProperty(paramString);
    if (paramString != null) {
      return factory.getInstance(paramString, paramClass);
    }
    return null;
  }
  
  private boolean validateElement(InputNode paramInputNode)
  {
    paramInputNode = factory.getInstance(paramInputNode);
    if (!paramInputNode.isReference()) {
      paramInputNode.setInstance(null);
    }
    return true;
  }
  
  public Object read(InputNode paramInputNode)
  {
    if (paramInputNode.isElement()) {
      return readElement(paramInputNode);
    }
    return read(paramInputNode, expect);
  }
  
  public Object read(InputNode paramInputNode, Class paramClass)
  {
    paramInputNode = paramInputNode.getValue();
    if (paramInputNode == null) {
      return null;
    }
    if ((empty != null) && (paramInputNode.equals(empty))) {
      return empty;
    }
    return readTemplate(paramInputNode, paramClass);
  }
  
  public Object read(InputNode paramInputNode, Object paramObject)
  {
    if (paramObject != null) {
      throw new PersistenceException("Can not read existing %s for %s", new Object[] { expect, type });
    }
    return read(paramInputNode);
  }
  
  public boolean validate(InputNode paramInputNode)
  {
    if (paramInputNode.isElement()) {
      validateElement(paramInputNode);
    }
    for (;;)
    {
      return true;
      paramInputNode.getValue();
    }
  }
  
  public void write(OutputNode paramOutputNode, Object paramObject)
  {
    paramObject = factory.getText(paramObject);
    if (paramObject != null) {
      paramOutputNode.setValue((String)paramObject);
    }
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.Primitive
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */