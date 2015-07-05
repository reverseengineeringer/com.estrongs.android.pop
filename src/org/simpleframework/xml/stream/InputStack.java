package org.simpleframework.xml.stream;

class InputStack
  extends Stack<InputNode>
{
  public InputStack()
  {
    super(6);
  }
  
  public boolean isRelevant(InputNode paramInputNode)
  {
    return (contains(paramInputNode)) || (isEmpty());
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.InputStack
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */