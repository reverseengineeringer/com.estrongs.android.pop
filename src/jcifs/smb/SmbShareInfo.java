package jcifs.smb;

import jcifs.util.Hexdump;

public class SmbShareInfo
  implements FileEntry
{
  protected String netName;
  protected String remark;
  protected int type;
  
  public SmbShareInfo() {}
  
  public SmbShareInfo(String paramString1, int paramInt, String paramString2)
  {
    netName = paramString1;
    type = paramInt;
    remark = paramString2;
  }
  
  public long createTime()
  {
    return 0L;
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof SmbShareInfo))
    {
      paramObject = (SmbShareInfo)paramObject;
      return netName.equals(netName);
    }
    return false;
  }
  
  public int getAttributes()
  {
    return 17;
  }
  
  public String getName()
  {
    return netName;
  }
  
  public int getType()
  {
    switch (type & 0xFFFF)
    {
    case 2: 
    default: 
      return 8;
    case 1: 
      return 32;
    }
    return 16;
  }
  
  public int hashCode()
  {
    return netName.hashCode();
  }
  
  public long lastModified()
  {
    return 0L;
  }
  
  public long length()
  {
    return 0L;
  }
  
  public String toString()
  {
    return new String("SmbShareInfo[netName=" + netName + ",type=0x" + Hexdump.toHexString(type, 8) + ",remark=" + remark + "]");
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.SmbShareInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */