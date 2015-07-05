package org.simpleframework.xml.core;

import java.util.Collection;
import java.util.Iterator;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.Mode;
import org.simpleframework.xml.stream.OutputNode;

class PrimitiveInlineList
  implements Repeater
{
  private final Type entry;
  private final CollectionFactory factory;
  private final String parent;
  private final Primitive root;
  
  public PrimitiveInlineList(Context paramContext, Type paramType1, Type paramType2, String paramString)
  {
    factory = new CollectionFactory(paramContext, paramType1);
    root = new Primitive(paramContext, paramType2);
    parent = paramString;
    entry = paramType2;
  }
  
  private boolean isOverridden(OutputNode paramOutputNode, Object paramObject)
  {
    return factory.setOverride(entry, paramObject, paramOutputNode);
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
      paramInputNode = root.read(paramInputNode);
      if (paramInputNode != null) {
        paramCollection.add(paramInputNode);
      }
      paramInputNode = localInputNode.getNext(str);
    }
  }
  
  private void write(OutputNode paramOutputNode, Object paramObject, Mode paramMode)
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
        OutputNode localOutputNode = paramOutputNode.getChild(parent);
        if (!isOverridden(localOutputNode, localObject))
        {
          localOutputNode.setMode(paramMode);
          root.write(localOutputNode, localObject);
        }
      }
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
    String str = paramInputNode.getName();
    for (;;)
    {
      if (paramInputNode == null) {
        return true;
      }
      if (!root.validate(paramInputNode)) {
        return false;
      }
      paramInputNode = localInputNode.getNext(str);
    }
  }
  
  public void write(OutputNode paramOutputNode, Object paramObject)
  {
    OutputNode localOutputNode = paramOutputNode.getParent();
    Mode localMode = paramOutputNode.getMode();
    if (!paramOutputNode.isCommitted()) {
      paramOutputNode.remove();
    }
    write(localOutputNode, paramObject, localMode);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.PrimitiveInlineList
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */