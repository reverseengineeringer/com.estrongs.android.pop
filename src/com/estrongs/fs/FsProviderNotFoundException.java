package com.estrongs.fs;

public class FsProviderNotFoundException
  extends FileSystemException
{
  private static final long serialVersionUID = 1L;
  private int flagInstallOrUpdate;
  
  public FsProviderNotFoundException(String paramString, int paramInt)
  {
    super("File system provider not found for " + paramString);
    flagInstallOrUpdate = paramInt;
  }
  
  public int getFlagInstallOrUpdate()
  {
    return flagInstallOrUpdate;
  }
  
  public void setFlagInstallOrUpdate(int paramInt)
  {
    flagInstallOrUpdate = paramInt;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.FsProviderNotFoundException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */