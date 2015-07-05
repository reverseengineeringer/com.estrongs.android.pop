package de.aflx.sardine.model;

public class Activelock
{
  protected String depth;
  protected Lockscope lockscope;
  protected Locktoken locktoken;
  protected Locktype locktype;
  protected Owner owner;
  protected String timeout;
  
  public String getDepth()
  {
    return depth;
  }
  
  public Lockscope getLockscope()
  {
    return lockscope;
  }
  
  public Locktoken getLocktoken()
  {
    return locktoken;
  }
  
  public Locktype getLocktype()
  {
    return locktype;
  }
  
  public Owner getOwner()
  {
    return owner;
  }
  
  public String getTimeout()
  {
    return timeout;
  }
  
  public void setDepth(String paramString)
  {
    depth = paramString;
  }
  
  public void setLockscope(Lockscope paramLockscope)
  {
    lockscope = paramLockscope;
  }
  
  public void setLocktoken(Locktoken paramLocktoken)
  {
    locktoken = paramLocktoken;
  }
  
  public void setLocktype(Locktype paramLocktype)
  {
    locktype = paramLocktype;
  }
  
  public void setOwner(Owner paramOwner)
  {
    owner = paramOwner;
  }
  
  public void setTimeout(String paramString)
  {
    timeout = paramString;
  }
}

/* Location:
 * Qualified Name:     de.aflx.sardine.model.Activelock
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */