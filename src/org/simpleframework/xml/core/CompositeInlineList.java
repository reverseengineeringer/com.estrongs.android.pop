package org.simpleframework.xml.core;

import java.util.Collection;
import java.util.Iterator;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;

class CompositeInlineList
  implements Repeater
{
  private final Type entry;
  private final CollectionFactory factory;
  private final String name;
  private final Traverser root;
  private final Type type;
  
  public CompositeInlineList(Context paramContext, Type paramType1, Type paramType2, String paramString)
  {
    factory = new CollectionFactory(paramContext, paramType1);
    root = new Traverser(paramContext);
    entry = paramType2;
    type = paramType1;
    name = paramString;
  }
  
  private Object read(InputNode paramInputNode, Class paramClass)
  {
    paramInputNode = root.read(paramInputNode, paramClass);
    paramClass = paramInputNode.getClass();
    if (!entry.getType().isAssignableFrom(paramClass)) {
      throw new PersistenceException("Entry %s does not match %s for %s", new Object[] { paramClass, entry, type });
    }
    return paramInputNode;
  }
  
  private Object read(InputNode paramInputNode, Collection paramCollection)
  {
    InputNode localInputNode = paramInputNode.getParent();
    String str = paramInputNode.getName();
    for (;;)
    {
      if (paramInputNode == null) {
        return paramCollection;
      }
      paramInputNode = read(paramInputNode, entry.getType());
      if (paramInputNode != null) {
        paramCollection.add(paramInputNode);
      }
      paramInputNode = localInputNode.getNext(str);
    }
  }
  
  public Object read(InputNode paramInputNode)
  {
    Collection localCollection = (Collection)factory.getInstance();
    if (localCollection != null) {
      return read(paramInputNode, localCollection);
    }
    return null;
  }
  
  public Object read(InputNode paramInputNode, Object paramObject)
  {
    paramObject = (Collection)paramObject;
    if (paramObject != null) {
      return read(paramInputNode, (Collection)paramObject);
    }
    return read(paramInputNode);
  }
  
  public boolean validate(InputNode paramInputNode)
  {
    InputNode localInputNode = paramInputNode.getParent();
    Class localClass = entry.getType();
    String str = paramInputNode.getName();
    for (;;)
    {
      if (paramInputNode == null) {
        return true;
      }
      if (!root.validate(paramInputNode, localClass)) {
        return false;
      }
      paramInputNode = localInputNode.getNext(str);
    }
  }
  
  public void write(OutputNode paramOutputNode, Object paramObject)
  {
    paramObject = (Collection)paramObject;
    OutputNode localOutputNode = paramOutputNode.getParent();
    if (!paramOutputNode.isCommitted()) {
      paramOutputNode.remove();
    }
    write(localOutputNode, (Collection)paramObject);
  }
  
  public void write(OutputNode paramOutputNode, Collection paramCollection)
  {
    paramCollection = paramCollection.iterator();
    for (;;)
    {
      if (!paramCollection.hasNext()) {
        return;
      }
      Object localObject = paramCollection.next();
      if (localObject != null)
      {
        Class localClass1 = entry.getType();
        Class localClass2 = localObject.getClass();
        if (!localClass1.isAssignableFrom(localClass2)) {
          throw new PersistenceException("Entry %s does not match %s for %s", new Object[] { localClass2, localClass1, type });
        }
        root.write(paramOutputNode, localObject, localClass1, name);
      }
    }
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.CompositeInlineList
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */