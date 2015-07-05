package org.simpleframework.xml.core;

import java.lang.reflect.Array;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;
import org.simpleframework.xml.stream.Position;

class PrimitiveArray
  implements Converter
{
  private final Type entry;
  private final ArrayFactory factory;
  private final String parent;
  private final Primitive root;
  private final Type type;
  
  public PrimitiveArray(Context paramContext, Type paramType1, Type paramType2, String paramString)
  {
    factory = new ArrayFactory(paramContext, paramType1);
    root = new Primitive(paramContext, paramType2);
    parent = paramString;
    entry = paramType2;
    type = paramType1;
  }
  
  private boolean isOverridden(OutputNode paramOutputNode, Object paramObject)
  {
    return factory.setOverride(entry, paramObject, paramOutputNode);
  }
  
  private boolean validate(InputNode paramInputNode, Class paramClass)
  {
    int i = 0;
    for (;;)
    {
      paramClass = paramInputNode.getNext();
      if (paramClass == null) {
        return true;
      }
      root.validate(paramClass);
      i += 1;
    }
  }
  
  private void write(OutputNode paramOutputNode, Object paramObject, int paramInt)
  {
    paramObject = Array.get(paramObject, paramInt);
    if ((paramObject != null) && (!isOverridden(paramOutputNode, paramObject))) {
      root.write(paramOutputNode, paramObject);
    }
  }
  
  public Object read(InputNode paramInputNode)
  {
    Instance localInstance = factory.getInstance(paramInputNode);
    Object localObject2 = localInstance.getInstance();
    Object localObject1 = localObject2;
    if (!localInstance.isReference()) {
      localObject1 = read(paramInputNode, localObject2);
    }
    return localObject1;
  }
  
  public Object read(InputNode paramInputNode, Object paramObject)
  {
    int j = Array.getLength(paramObject);
    int i = 0;
    for (;;)
    {
      Position localPosition = paramInputNode.getPosition();
      InputNode localInputNode = paramInputNode.getNext();
      if (localInputNode == null) {
        return paramObject;
      }
      if (i >= j) {
        throw new ElementException("Array length missing or incorrect for %s at %s", new Object[] { type, localPosition });
      }
      Array.set(paramObject, i, root.read(localInputNode));
      i += 1;
    }
  }
  
  public boolean validate(InputNode paramInputNode)
  {
    Instance localInstance = factory.getInstance(paramInputNode);
    if (!localInstance.isReference())
    {
      localInstance.setInstance(null);
      return validate(paramInputNode, localInstance.getType());
    }
    return true;
  }
  
  public void write(OutputNode paramOutputNode, Object paramObject)
  {
    int j = Array.getLength(paramObject);
    int i = 0;
    for (;;)
    {
      if (i >= j) {}
      OutputNode localOutputNode;
      do
      {
        return;
        localOutputNode = paramOutputNode.getChild(parent);
      } while (localOutputNode == null);
      write(localOutputNode, paramObject, i);
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.PrimitiveArray
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */