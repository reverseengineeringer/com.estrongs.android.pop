package jcifs.smb;

public abstract interface FileEntry
{
  public abstract long createTime();
  
  public abstract int getAttributes();
  
  public abstract String getName();
  
  public abstract int getType();
  
  public abstract long lastModified();
  
  public abstract long length();
}

/* Location:
 * Qualified Name:     jcifs.smb.FileEntry
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */