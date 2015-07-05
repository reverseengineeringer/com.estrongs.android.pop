package org.simpleframework.xml.strategy;

import java.util.Map;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.NodeMap;
import org.simpleframework.xml.stream.OutputNode;

public class VisitorStrategy
  implements Strategy
{
  private final Strategy strategy;
  private final Visitor visitor;
  
  public VisitorStrategy(Visitor paramVisitor)
  {
    this(paramVisitor, new TreeStrategy());
  }
  
  public VisitorStrategy(Visitor paramVisitor, Strategy paramStrategy)
  {
    strategy = paramStrategy;
    visitor = paramVisitor;
  }
  
  public Value read(Type paramType, NodeMap<InputNode> paramNodeMap, Map paramMap)
  {
    if (visitor != null) {
      visitor.read(paramType, paramNodeMap);
    }
    return strategy.read(paramType, paramNodeMap, paramMap);
  }
  
  public boolean write(Type paramType, Object paramObject, NodeMap<OutputNode> paramNodeMap, Map paramMap)
  {
    boolean bool = strategy.write(paramType, paramObject, paramNodeMap, paramMap);
    if (visitor != null) {
      visitor.write(paramType, paramNodeMap);
    }
    return bool;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.strategy.VisitorStrategy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */