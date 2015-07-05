package jcifs.dcerpc.msrpc;

import jcifs.dcerpc.ndr.NdrBuffer;
import jcifs.dcerpc.ndr.NdrObject;

public class netdfs$DfsStorageInfo
  extends NdrObject
{
  public String server_name;
  public String share_name;
  public int state;
  
  public void decode(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.align(4);
    state = paramNdrBuffer.dec_ndr_long();
    int i = paramNdrBuffer.dec_ndr_long();
    int j = paramNdrBuffer.dec_ndr_long();
    NdrBuffer localNdrBuffer = paramNdrBuffer;
    if (i != 0)
    {
      localNdrBuffer = deferred;
      server_name = localNdrBuffer.dec_ndr_string();
    }
    if (j != 0) {
      share_name = deferred.dec_ndr_string();
    }
  }
  
  public void encode(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.align(4);
    paramNdrBuffer.enc_ndr_long(state);
    paramNdrBuffer.enc_ndr_referent(server_name, 1);
    paramNdrBuffer.enc_ndr_referent(share_name, 1);
    NdrBuffer localNdrBuffer = paramNdrBuffer;
    if (server_name != null)
    {
      localNdrBuffer = deferred;
      localNdrBuffer.enc_ndr_string(server_name);
    }
    if (share_name != null) {
      deferred.enc_ndr_string(share_name);
    }
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.msrpc.netdfs.DfsStorageInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */