package org.simpleframework.xml.strategy;

import java.lang.reflect.Array;
import java.util.IdentityHashMap;
import org.simpleframework.xml.stream.NodeMap;

class WriteGraph
  extends IdentityHashMap<Object, String>
{
  private final String label;
  private final String length;
  private final String mark;
  private final String refer;
  
  public WriteGraph(Contract paramContract)
  {
    refer = paramContract.getReference();
    mark = paramContract.getIdentity();
    length = paramContract.getLength();
    label = paramContract.getLabel();
  }
  
  private Class writeArray(Class paramClass, Object paramObject, NodeMap paramNodeMap)
  {
    int i = Array.getLength(paramObject);
    if (!containsKey(paramObject)) {
      paramNodeMap.put(length, String.valueOf(i));
    }
    return paramClass.getComponentType();
  }
  
  private boolean writeReference(Object paramObject, NodeMap paramNodeMap)
  {
    String str = (String)get(paramObject);
    int i = size();
    if (str != null)
    {
      paramNodeMap.put(refer, str);
      return true;
    }
    str = String.valueOf(i);
    paramNodeMap.put(mark, str);
    put(paramObject, str);
    return false;
  }
  
  public boolean write(Type paramType, Object paramObject, NodeMap paramNodeMap)
  {
    Class localClass1 = paramObject.getClass();
    Class localClass2 = paramType.getType();
    if (localClass1.isArray()) {}
    for (paramType = writeArray(localClass1, paramObject, paramNodeMap);; paramType = localClass1)
    {
      if (localClass1 != localClass2) {
        paramNodeMap.put(label, paramType.getName());
      }
      return writeReference(paramObject, paramNodeMap);
    }
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.strategy.WriteGraph
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */