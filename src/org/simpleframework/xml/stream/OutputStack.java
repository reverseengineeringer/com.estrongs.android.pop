package org.simpleframework.xml.stream;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;

class OutputStack
  extends ArrayList<OutputNode>
{
  private final Set active;
  
  public OutputStack(Set paramSet)
  {
    active = paramSet;
  }
  
  public OutputNode bottom()
  {
    if (size() <= 0) {
      return null;
    }
    return (OutputNode)get(0);
  }
  
  public Iterator<OutputNode> iterator()
  {
    return new OutputStack.Sequence(this);
  }
  
  public OutputNode pop()
  {
    int i = size();
    if (i <= 0) {
      return null;
    }
    return purge(i - 1);
  }
  
  public OutputNode purge(int paramInt)
  {
    OutputNode localOutputNode = (OutputNode)remove(paramInt);
    if (localOutputNode != null) {
      active.remove(localOutputNode);
    }
    return localOutputNode;
  }
  
  public OutputNode push(OutputNode paramOutputNode)
  {
    active.add(paramOutputNode);
    add(paramOutputNode);
    return paramOutputNode;
  }
  
  public OutputNode top()
  {
    int i = size();
    if (i <= 0) {
      return null;
    }
    return (OutputNode)get(i - 1);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.OutputStack
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */