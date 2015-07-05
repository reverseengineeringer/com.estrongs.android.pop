package org.simpleframework.xml.stream;

class InputPosition
  implements Position
{
  private EventNode source;
  
  public InputPosition(EventNode paramEventNode)
  {
    source = paramEventNode;
  }
  
  public int getLine()
  {
    return source.getLine();
  }
  
  public String toString()
  {
    return String.format("line %s", new Object[] { Integer.valueOf(getLine()) });
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.InputPosition
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */