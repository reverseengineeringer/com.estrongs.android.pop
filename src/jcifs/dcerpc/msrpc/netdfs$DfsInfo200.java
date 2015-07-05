package jcifs.dcerpc.msrpc;

import jcifs.dcerpc.ndr.NdrBuffer;
import jcifs.dcerpc.ndr.NdrObject;

public class netdfs$DfsInfo200
  extends NdrObject
{
  public String dfs_name;
  
  public void decode(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.align(4);
    if (paramNdrBuffer.dec_ndr_long() != 0) {
      dfs_name = deferred.dec_ndr_string();
    }
  }
  
  public void encode(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.align(4);
    paramNdrBuffer.enc_ndr_referent(dfs_name, 1);
    if (dfs_name != null) {
      deferred.enc_ndr_string(dfs_name);
    }
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.msrpc.netdfs.DfsInfo200
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */