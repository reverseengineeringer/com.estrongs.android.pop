package org.simpleframework.xml.stream;

import java.util.Iterator;

abstract class EventToken
  implements EventNode
{
  public int getLine()
  {
    return -1;
  }
  
  public String getName()
  {
    return null;
  }
  
  public String getPrefix()
  {
    return null;
  }
  
  public String getReference()
  {
    return null;
  }
  
  public Object getSource()
  {
    return null;
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
    return false;
  }
  
  public boolean isText()
  {
    return false;
  }
  
  public Iterator<Attribute> iterator()
  {
    return null;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.EventToken
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */