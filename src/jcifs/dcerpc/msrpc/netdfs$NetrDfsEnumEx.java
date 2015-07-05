package jcifs.dcerpc.msrpc;

import jcifs.dcerpc.DcerpcMessage;
import jcifs.dcerpc.ndr.NdrBuffer;
import jcifs.dcerpc.ndr.NdrLong;

public class netdfs$NetrDfsEnumEx
  extends DcerpcMessage
{
  public String dfs_name;
  public netdfs.DfsEnumStruct info;
  public int level;
  public int prefmaxlen;
  public int retval;
  public NdrLong totalentries;
  
  public netdfs$NetrDfsEnumEx(String paramString, int paramInt1, int paramInt2, netdfs.DfsEnumStruct paramDfsEnumStruct, NdrLong paramNdrLong)
  {
    dfs_name = paramString;
    level = paramInt1;
    prefmaxlen = paramInt2;
    info = paramDfsEnumStruct;
    totalentries = paramNdrLong;
  }
  
  public void decode_out(NdrBuffer paramNdrBuffer)
  {
    if (paramNdrBuffer.dec_ndr_long() != 0)
    {
      if (info == null) {
        info = new netdfs.DfsEnumStruct();
      }
      info.decode(paramNdrBuffer);
    }
    if (paramNdrBuffer.dec_ndr_long() != 0) {
      totalentries.decode(paramNdrBuffer);
    }
    retval = paramNdrBuffer.dec_ndr_long();
  }
  
  public void encode_in(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.enc_ndr_string(dfs_name);
    paramNdrBuffer.enc_ndr_long(level);
    paramNdrBuffer.enc_ndr_long(prefmaxlen);
    paramNdrBuffer.enc_ndr_referent(info, 1);
    if (info != null) {
      info.encode(paramNdrBuffer);
    }
    paramNdrBuffer.enc_ndr_referent(totalentries, 1);
    if (totalentries != null) {
      totalentries.encode(paramNdrBuffer);
    }
  }
  
  public int getOpnum()
  {
    return 21;
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.msrpc.netdfs.NetrDfsEnumEx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */