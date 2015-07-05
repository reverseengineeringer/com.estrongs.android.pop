package jcifs.dcerpc.msrpc;

import jcifs.dcerpc.ndr.NdrLong;
import jcifs.smb.FileEntry;
import jcifs.smb.SmbShareInfo;

public class MsrpcDfsRootEnum
  extends netdfs.NetrDfsEnumEx
{
  public MsrpcDfsRootEnum(String paramString)
  {
    super(paramString, 200, 65535, new netdfs.DfsEnumStruct(), new NdrLong(0));
    info.level = level;
    info.e = new netdfs.DfsEnumArray200();
    ptype = 0;
    flags = 3;
  }
  
  public FileEntry[] getEntries()
  {
    netdfs.DfsEnumArray200 localDfsEnumArray200 = (netdfs.DfsEnumArray200)info.e;
    SmbShareInfo[] arrayOfSmbShareInfo = new SmbShareInfo[count];
    int i = 0;
    while (i < count)
    {
      arrayOfSmbShareInfo[i] = new SmbShareInfo(s[i].dfs_name, 0, null);
      i += 1;
    }
    return arrayOfSmbShareInfo;
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.msrpc.MsrpcDfsRootEnum
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */