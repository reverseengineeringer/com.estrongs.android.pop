package org.simpleframework.xml.util;

import java.util.Iterator;
import java.util.LinkedList;

class Resolver$Stack
  extends LinkedList<M>
{
  private Resolver$Stack(Resolver paramResolver) {}
  
  public void purge(int paramInt)
  {
    Resolver.access$1(this$0).clear();
    remove(paramInt);
  }
  
  public void push(M paramM)
  {
    Resolver.access$1(this$0).clear();
    addFirst(paramM);
  }
  
  public Iterator<M> sequence()
  {
    return new Resolver.Stack.Sequence(this);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.util.Resolver.Stack
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */