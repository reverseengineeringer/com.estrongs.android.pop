package org.simpleframework.xml.strategy;

import java.util.Map;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.NodeMap;
import org.simpleframework.xml.stream.OutputNode;

public abstract interface Strategy
{
  public abstract Value read(Type paramType, NodeMap<InputNode> paramNodeMap, Map paramMap);
  
  public abstract boolean write(Type paramType, Object paramObject, NodeMap<OutputNode> paramNodeMap, Map paramMap);
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.strategy.Strategy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */