package jcifs.smb;

abstract interface Info
{
  public abstract int getAttributes();
  
  public abstract long getCreateTime();
  
  public abstract long getLastWriteTime();
  
  public abstract long getSize();
}

/* Location:
 * Qualified Name:     jcifs.smb.Info
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */