package org.simpleframework.xml.core;

import java.lang.reflect.Array;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;
import org.simpleframework.xml.stream.Position;

class CompositeArray
  implements Converter
{
  private final Type entry;
  private final ArrayFactory factory;
  private final String parent;
  private final Traverser root;
  private final Type type;
  
  public CompositeArray(Context paramContext, Type paramType1, Type paramType2, String paramString)
  {
    factory = new ArrayFactory(paramContext, paramType1);
    root = new Traverser(paramContext);
    parent = paramString;
    entry = paramType2;
    type = paramType1;
  }
  
  private void read(InputNode paramInputNode, Object paramObject, int paramInt)
  {
    Class localClass = entry.getType();
    Object localObject = null;
    if (!paramInputNode.isEmpty()) {
      localObject = root.read(paramInputNode, localClass);
    }
    Array.set(paramObject, paramInt, localObject);
  }
  
  private boolean validate(InputNode paramInputNode, Class paramClass)
  {
    int i = 0;
    for (;;)
    {
      InputNode localInputNode = paramInputNode.getNext();
      if (localInputNode == null) {
        return true;
      }
      if (!localInputNode.isEmpty()) {
        root.validate(localInputNode, paramClass);
      }
      i += 1;
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
      read(localInputNode, paramObject, i);
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
      if (i >= j)
      {
        paramOutputNode.commit();
        return;
      }
      Object localObject = Array.get(paramObject, i);
      Class localClass = entry.getType();
      root.write(paramOutputNode, localObject, localClass, parent);
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.CompositeArray
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */