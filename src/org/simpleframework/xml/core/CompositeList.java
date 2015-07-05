package org.simpleframework.xml.core;

import java.util.Collection;
import java.util.Iterator;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;

class CompositeList
  implements Converter
{
  private final Type entry;
  private final CollectionFactory factory;
  private final String name;
  private final Traverser root;
  private final Type type;
  
  public CompositeList(Context paramContext, Type paramType1, Type paramType2, String paramString)
  {
    factory = new CollectionFactory(paramContext, paramType1);
    root = new Traverser(paramContext);
    entry = paramType2;
    type = paramType1;
    name = paramString;
  }
  
  private Object populate(InputNode paramInputNode, Object paramObject)
  {
    paramObject = (Collection)paramObject;
    for (;;)
    {
      InputNode localInputNode = paramInputNode.getNext();
      Class localClass = entry.getType();
      if (localInputNode == null) {
        return paramObject;
      }
      ((Collection)paramObject).add(root.read(localInputNode, localClass));
    }
  }
  
  private boolean validate(InputNode paramInputNode, Class paramClass)
  {
    for (;;)
    {
      paramClass = paramInputNode.getNext();
      Class localClass = entry.getType();
      if (paramClass == null) {
        return true;
      }
      root.validate(paramClass, localClass);
    }
  }
  
  public Object read(InputNode paramInputNode)
  {
    Instance localInstance = factory.getInstance(paramInputNode);
    Object localObject2 = localInstance.getInstance();
    Object localObject1 = localObject2;
    if (!localInstance.isReference()) {
      localObject1 = populate(paramInputNode, localObject2);
    }
    return localObject1;
  }
  
  public Object read(InputNode paramInputNode, Object paramObject)
  {
    Object localObject = factory.getInstance(paramInputNode);
    if (((Instance)localObject).isReference()) {
      localObject = ((Instance)localObject).getInstance();
    }
    do
    {
      return localObject;
      ((Instance)localObject).setInstance(paramObject);
      localObject = paramObject;
    } while (paramObject == null);
    return populate(paramInputNode, paramObject);
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
    paramObject = ((Collection)paramObject).iterator();
    for (;;)
    {
      if (!((Iterator)paramObject).hasNext()) {
        return;
      }
      Object localObject = ((Iterator)paramObject).next();
      if (localObject != null)
      {
        Class localClass1 = entry.getType();
        Class localClass2 = localObject.getClass();
        if (!localClass1.isAssignableFrom(localClass2)) {
          throw new PersistenceException("Entry %s does not match %s for %s", new Object[] { localClass2, entry, type });
        }
        root.write(paramOutputNode, localObject, localClass1, name);
      }
    }
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.CompositeList
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */