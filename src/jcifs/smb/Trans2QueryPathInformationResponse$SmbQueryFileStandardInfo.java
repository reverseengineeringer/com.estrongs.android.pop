package jcifs.smb;

class Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo
  implements Info
{
  long allocationSize;
  boolean deletePending;
  boolean directory;
  long endOfFile;
  int numberOfLinks;
  
  Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo(Trans2QueryPathInformationResponse paramTrans2QueryPathInformationResponse) {}
  
  public int getAttributes()
  {
    return 0;
  }
  
  public long getCreateTime()
  {
    return 0L;
  }
  
  public long getLastWriteTime()
  {
    return 0L;
  }
  
  public long getSize()
  {
    return endOfFile;
  }
  
  public String toString()
  {
    return new String("SmbQueryInfoStandard[allocationSize=" + allocationSize + ",endOfFile=" + endOfFile + ",numberOfLinks=" + numberOfLinks + ",deletePending=" + deletePending + ",directory=" + directory + "]");
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.Trans2QueryPathInformationResponse.SmbQueryFileStandardInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */