package jcifs.dcerpc.msrpc;

import jcifs.smb.FileEntry;

public class MsrpcShareEnum
  extends srvsvc.ShareEnumAll
{
  public MsrpcShareEnum(String paramString)
  {
    super("\\\\" + paramString, 1, new srvsvc.ShareInfoCtr1(), -1, 0, 0);
    ptype = 0;
    flags = 3;
  }
  
  public FileEntry[] getEntries()
  {
    srvsvc.ShareInfoCtr1 localShareInfoCtr1 = (srvsvc.ShareInfoCtr1)info;
    MsrpcShareEnum.MsrpcShareInfo1[] arrayOfMsrpcShareInfo1 = new MsrpcShareEnum.MsrpcShareInfo1[count];
    int i = 0;
    while (i < count)
    {
      arrayOfMsrpcShareInfo1[i] = new MsrpcShareEnum.MsrpcShareInfo1(this, array[i]);
      i += 1;
    }
    return arrayOfMsrpcShareInfo1;
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.msrpc.MsrpcShareEnum
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */