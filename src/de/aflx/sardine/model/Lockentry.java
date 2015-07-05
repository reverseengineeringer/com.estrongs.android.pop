package de.aflx.sardine.model;

import org.simpleframework.xml.Element;

public class Lockentry
{
  @Element
  protected Lockscope lockscope;
  @Element
  protected Locktype locktype;
  
  public Lockscope getLockscope()
  {
    return lockscope;
  }
  
  public Locktype getLocktype()
  {
    return locktype;
  }
  
  public void setLockscope(Lockscope paramLockscope)
  {
    lockscope = paramLockscope;
  }
  
  public void setLocktype(Locktype paramLocktype)
  {
    locktype = paramLocktype;
  }
}

/* Location:
 * Qualified Name:     de.aflx.sardine.model.Lockentry
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */