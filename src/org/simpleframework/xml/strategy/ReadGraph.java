package org.simpleframework.xml.strategy;

import java.util.HashMap;
import org.simpleframework.xml.stream.Node;
import org.simpleframework.xml.stream.NodeMap;

class ReadGraph
  extends HashMap
{
  private final String label;
  private final String length;
  private final Loader loader;
  private final String mark;
  private final String refer;
  
  public ReadGraph(Contract paramContract, Loader paramLoader)
  {
    refer = paramContract.getReference();
    mark = paramContract.getIdentity();
    length = paramContract.getLength();
    label = paramContract.getLabel();
    loader = paramLoader;
  }
  
  private Value readArray(Type paramType, Class paramClass, NodeMap paramNodeMap)
  {
    paramType = paramNodeMap.remove(length);
    int i = 0;
    if (paramType != null) {
      i = Integer.parseInt(paramType.getValue());
    }
    return new ArrayValue(paramClass, i);
  }
  
  private Value readInstance(Type paramType, Class paramClass, NodeMap paramNodeMap)
  {
    Object localObject = paramNodeMap.remove(mark);
    if (localObject == null) {
      return readReference(paramType, paramClass, paramNodeMap);
    }
    localObject = ((Node)localObject).getValue();
    if (containsKey(localObject)) {
      throw new CycleException("Element '%s' already exists", new Object[] { localObject });
    }
    return readValue(paramType, paramClass, paramNodeMap, (String)localObject);
  }
  
  private Value readReference(Type paramType, Class paramClass, NodeMap paramNodeMap)
  {
    Node localNode = paramNodeMap.remove(refer);
    if (localNode == null) {
      return readValue(paramType, paramClass, paramNodeMap);
    }
    paramType = localNode.getValue();
    paramNodeMap = get(paramType);
    if (!containsKey(paramType)) {
      throw new CycleException("Invalid reference '%s' found", new Object[] { paramType });
    }
    return new Reference(paramNodeMap, paramClass);
  }
  
  private Value readValue(Type paramType, Class paramClass, NodeMap paramNodeMap)
  {
    if (paramType.getType().isArray()) {
      return readArray(paramType, paramClass, paramNodeMap);
    }
    return new ObjectValue(paramClass);
  }
  
  private Value readValue(Type paramType, Class paramClass, NodeMap paramNodeMap, String paramString)
  {
    paramType = readValue(paramType, paramClass, paramNodeMap);
    if (paramString != null) {
      return new Allocate(paramType, this, paramString);
    }
    return paramType;
  }
  
  public Value read(Type paramType, NodeMap paramNodeMap)
  {
    Node localNode = paramNodeMap.remove(label);
    Class localClass = paramType.getType();
    Object localObject = localClass;
    if (localClass.isArray()) {
      localObject = localClass.getComponentType();
    }
    if (localNode != null)
    {
      localObject = localNode.getValue();
      localObject = loader.load((String)localObject);
    }
    return readInstance(paramType, (Class)localObject, paramNodeMap);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.strategy.ReadGraph
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */