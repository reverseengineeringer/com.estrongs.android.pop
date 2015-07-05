package org.simpleframework.xml.stream;

abstract class EventAttribute
  implements Attribute
{
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
  
  public boolean isReserved()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.EventAttribute
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */