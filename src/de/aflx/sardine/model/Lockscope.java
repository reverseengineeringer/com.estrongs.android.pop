package de.aflx.sardine.model;

public class Lockscope
{
  protected Exclusive exclusive;
  protected Shared shared;
  
  public Exclusive getExclusive()
  {
    return exclusive;
  }
  
  public Shared getShared()
  {
    return shared;
  }
  
  public void setExclusive(Exclusive paramExclusive)
  {
    exclusive = paramExclusive;
  }
  
  public void setShared(Shared paramShared)
  {
    shared = paramShared;
  }
}

/* Location:
 * Qualified Name:     de.aflx.sardine.model.Lockscope
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */