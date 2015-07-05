package org.simpleframework.xml.convert;

import java.util.Map;
import org.simpleframework.xml.strategy.Strategy;
import org.simpleframework.xml.strategy.TreeStrategy;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.strategy.Value;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.NodeMap;
import org.simpleframework.xml.stream.OutputNode;

public class RegistryStrategy
  implements Strategy
{
  private final Registry registry;
  private final Strategy strategy;
  
  public RegistryStrategy(Registry paramRegistry)
  {
    this(paramRegistry, new TreeStrategy());
  }
  
  public RegistryStrategy(Registry paramRegistry, Strategy paramStrategy)
  {
    registry = paramRegistry;
    strategy = paramStrategy;
  }
  
  private boolean isReference(Value paramValue)
  {
    return (paramValue != null) && (paramValue.isReference());
  }
  
  private Converter lookup(Type paramType, Object paramObject)
  {
    paramType = paramType.getType();
    if (paramObject != null) {
      paramType = paramObject.getClass();
    }
    return registry.lookup(paramType);
  }
  
  private Converter lookup(Type paramType, Value paramValue)
  {
    paramType = paramType.getType();
    if (paramValue != null) {
      paramType = paramValue.getType();
    }
    return registry.lookup(paramType);
  }
  
  private Value read(Type paramType, NodeMap<InputNode> paramNodeMap, Value paramValue)
  {
    Converter localConverter = lookup(paramType, paramValue);
    paramNodeMap = (InputNode)paramNodeMap.getNode();
    paramType = paramValue;
    if (localConverter != null)
    {
      paramType = localConverter.read(paramNodeMap);
      if (paramValue != null) {
        paramValue.setValue(paramType);
      }
      paramType = new Reference(paramValue, paramType);
    }
    return paramType;
  }
  
  private boolean write(Type paramType, Object paramObject, NodeMap<OutputNode> paramNodeMap)
  {
    paramType = lookup(paramType, paramObject);
    paramNodeMap = (OutputNode)paramNodeMap.getNode();
    if (paramType != null)
    {
      paramType.write(paramNodeMap, paramObject);
      return true;
    }
    return false;
  }
  
  public Value read(Type paramType, NodeMap<InputNode> paramNodeMap, Map paramMap)
  {
    paramMap = strategy.read(paramType, paramNodeMap, paramMap);
    if (isReference(paramMap)) {
      return paramMap;
    }
    return read(paramType, paramNodeMap, paramMap);
  }
  
  public boolean write(Type paramType, Object paramObject, NodeMap<OutputNode> paramNodeMap, Map paramMap)
  {
    boolean bool2 = strategy.write(paramType, paramObject, paramNodeMap, paramMap);
    boolean bool1 = bool2;
    if (!bool2) {
      bool1 = write(paramType, paramObject, paramNodeMap);
    }
    return bool1;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.convert.RegistryStrategy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */