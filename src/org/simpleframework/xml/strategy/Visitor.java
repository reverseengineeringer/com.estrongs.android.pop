package org.simpleframework.xml.strategy;

import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.NodeMap;
import org.simpleframework.xml.stream.OutputNode;

public abstract interface Visitor
{
  public abstract void read(Type paramType, NodeMap<InputNode> paramNodeMap);
  
  public abstract void write(Type paramType, NodeMap<OutputNode> paramNodeMap);
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.strategy.Visitor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */