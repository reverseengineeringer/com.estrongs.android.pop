package jcifs.smb;

import java.util.Date;

class Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo
  implements FileEntry
{
  long allocationSize;
  long changeTime;
  long creationTime;
  int eaSize;
  long endOfFile;
  int extFileAttributes;
  int fileIndex;
  int fileNameLength;
  String filename;
  long lastAccessTime;
  long lastWriteTime;
  int nextEntryOffset;
  String shortName;
  int shortNameLength;
  
  Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo(Trans2FindFirst2Response paramTrans2FindFirst2Response) {}
  
  public long createTime()
  {
    return creationTime;
  }
  
  public int getAttributes()
  {
    return extFileAttributes;
  }
  
  public String getName()
  {
    return filename;
  }
  
  public int getType()
  {
    return 1;
  }
  
  public long lastModified()
  {
    return lastWriteTime;
  }
  
  public long length()
  {
    return endOfFile;
  }
  
  public String toString()
  {
    return new String("SmbFindFileBothDirectoryInfo[nextEntryOffset=" + nextEntryOffset + ",fileIndex=" + fileIndex + ",creationTime=" + new Date(creationTime) + ",lastAccessTime=" + new Date(lastAccessTime) + ",lastWriteTime=" + new Date(lastWriteTime) + ",changeTime=" + new Date(changeTime) + ",endOfFile=" + endOfFile + ",allocationSize=" + allocationSize + ",extFileAttributes=" + extFileAttributes + ",fileNameLength=" + fileNameLength + ",eaSize=" + eaSize + ",shortNameLength=" + shortNameLength + ",shortName=" + shortName + ",filename=" + filename + "]");
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.Trans2FindFirst2Response.SmbFindFileBothDirectoryInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */