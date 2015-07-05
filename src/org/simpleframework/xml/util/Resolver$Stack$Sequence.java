package org.simpleframework.xml.util;

import java.util.Iterator;

class Resolver$Stack$Sequence
  implements Iterator<M>
{
  private int cursor;
  
  public Resolver$Stack$Sequence(Resolver.Stack paramStack)
  {
    cursor = paramStack.size();
  }
  
  public boolean hasNext()
  {
    return cursor > 0;
  }
  
  public M next()
  {
    if (hasNext())
    {
      Resolver.Stack localStack = this$1;
      int i = cursor - 1;
      cursor = i;
      return (Match)localStack.get(i);
    }
    return null;
  }
  
  public void remove()
  {
    this$1.purge(cursor);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.util.Resolver.Stack.Sequence
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */