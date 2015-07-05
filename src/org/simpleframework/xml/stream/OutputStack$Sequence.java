package org.simpleframework.xml.stream;

import java.util.Iterator;

class OutputStack$Sequence
  implements Iterator<OutputNode>
{
  private int cursor;
  
  public OutputStack$Sequence(OutputStack paramOutputStack)
  {
    cursor = paramOutputStack.size();
  }
  
  public boolean hasNext()
  {
    return cursor > 0;
  }
  
  public OutputNode next()
  {
    if (hasNext())
    {
      OutputStack localOutputStack = this$0;
      int i = cursor - 1;
      cursor = i;
      return (OutputNode)localOutputStack.get(i);
    }
    return null;
  }
  
  public void remove()
  {
    this$0.purge(cursor);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.OutputStack.Sequence
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */