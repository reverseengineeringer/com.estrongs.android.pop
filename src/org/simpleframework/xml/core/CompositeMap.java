package org.simpleframework.xml.core;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;
import org.simpleframework.xml.stream.Style;

class CompositeMap
  implements Converter
{
  private final Entry entry;
  private final MapFactory factory;
  private final Converter key;
  private final Style style;
  private final Converter value;
  
  public CompositeMap(Context paramContext, Entry paramEntry, Type paramType)
  {
    factory = new MapFactory(paramContext, paramType);
    value = paramEntry.getValue(paramContext);
    key = paramEntry.getKey(paramContext);
    style = paramContext.getStyle();
    entry = paramEntry;
  }
  
  private Object populate(InputNode paramInputNode, Object paramObject)
  {
    paramObject = (Map)paramObject;
    for (;;)
    {
      InputNode localInputNode = paramInputNode.getNext();
      if (localInputNode == null) {
        return paramObject;
      }
      ((Map)paramObject).put(key.read(localInputNode), value.read(localInputNode));
    }
  }
  
  private boolean validate(InputNode paramInputNode, Class paramClass)
  {
    boolean bool2 = false;
    do
    {
      paramClass = paramInputNode.getNext();
      boolean bool1;
      if (paramClass == null) {
        bool1 = true;
      }
      do
      {
        return bool1;
        bool1 = bool2;
      } while (!key.validate(paramClass));
    } while (value.validate(paramClass));
    return false;
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
    paramObject = (Map)paramObject;
    Iterator localIterator = ((Map)paramObject).keySet().iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      Object localObject1 = localIterator.next();
      Object localObject2 = entry.getEntry();
      localObject2 = paramOutputNode.getChild(style.getElement((String)localObject2));
      Object localObject3 = ((Map)paramObject).get(localObject1);
      key.write((OutputNode)localObject2, localObject1);
      value.write((OutputNode)localObject2, localObject3);
    }
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.CompositeMap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */