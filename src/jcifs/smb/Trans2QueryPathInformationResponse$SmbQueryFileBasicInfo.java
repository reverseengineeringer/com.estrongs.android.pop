package jcifs.smb;

import java.util.Date;
import jcifs.util.Hexdump;

class Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo
  implements Info
{
  int attributes;
  long changeTime;
  long createTime;
  long lastAccessTime;
  long lastWriteTime;
  
  Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo(Trans2QueryPathInformationResponse paramTrans2QueryPathInformationResponse) {}
  
  public int getAttributes()
  {
    return attributes;
  }
  
  public long getCreateTime()
  {
    return createTime;
  }
  
  public long getLastWriteTime()
  {
    return lastWriteTime;
  }
  
  public long getSize()
  {
    return 0L;
  }
  
  public String toString()
  {
    return new String("SmbQueryFileBasicInfo[createTime=" + new Date(createTime) + ",lastAccessTime=" + new Date(lastAccessTime) + ",lastWriteTime=" + new Date(lastWriteTime) + ",changeTime=" + new Date(changeTime) + ",attributes=0x" + Hexdump.toHexString(attributes, 4) + "]");
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.Trans2QueryPathInformationResponse.SmbQueryFileBasicInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */