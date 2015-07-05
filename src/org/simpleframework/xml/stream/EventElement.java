package org.simpleframework.xml.stream;

import java.util.ArrayList;

abstract class EventElement
  extends ArrayList<Attribute>
  implements EventNode
{
  public int getLine()
  {
    return -1;
  }
  
  public String getValue()
  {
    return null;
  }
  
  public boolean isEnd()
  {
    return false;
  }
  
  public boolean isStart()
  {
    return true;
  }
  
  public boolean isText()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.EventElement
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */