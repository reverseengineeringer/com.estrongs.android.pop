package de.aflx.sardine.model;

public class Lockinfo
{
  protected Lockscope lockscope;
  protected Locktype locktype;
  protected Owner owner;
  
  public Lockscope getLockscope()
  {
    return lockscope;
  }
  
  public Locktype getLocktype()
  {
    return locktype;
  }
  
  public Owner getOwner()
  {
    return owner;
  }
  
  public void setLockscope(Lockscope paramLockscope)
  {
    lockscope = paramLockscope;
  }
  
  public void setLocktype(Locktype paramLocktype)
  {
    locktype = paramLocktype;
  }
  
  public void setOwner(Owner paramOwner)
  {
    owner = paramOwner;
  }
}

/* Location:
 * Qualified Name:     de.aflx.sardine.model.Lockinfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */