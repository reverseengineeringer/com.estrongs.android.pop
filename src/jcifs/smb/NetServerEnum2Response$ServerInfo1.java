package jcifs.smb;

import jcifs.util.Hexdump;

class NetServerEnum2Response$ServerInfo1
  implements FileEntry
{
  String commentOrMasterBrowser;
  String name;
  int type;
  int versionMajor;
  int versionMinor;
  
  NetServerEnum2Response$ServerInfo1(NetServerEnum2Response paramNetServerEnum2Response) {}
  
  public long createTime()
  {
    return 0L;
  }
  
  public int getAttributes()
  {
    return 17;
  }
  
  public String getName()
  {
    return name;
  }
  
  public int getType()
  {
    if ((type & 0x80000000) != 0) {
      return 2;
    }
    return 4;
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
    return new String("ServerInfo1[name=" + name + ",versionMajor=" + versionMajor + ",versionMinor=" + versionMinor + ",type=0x" + Hexdump.toHexString(type, 8) + ",commentOrMasterBrowser=" + commentOrMasterBrowser + "]");
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.NetServerEnum2Response.ServerInfo1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */