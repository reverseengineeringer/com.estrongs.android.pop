package jcifs.dcerpc.msrpc;

import jcifs.dcerpc.ndr.NdrBuffer;
import jcifs.dcerpc.ndr.NdrObject;

public class netdfs$DfsInfo1
  extends NdrObject
{
  public String entry_path;
  
  public void decode(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.align(4);
    if (paramNdrBuffer.dec_ndr_long() != 0) {
      entry_path = deferred.dec_ndr_string();
    }
  }
  
  public void encode(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.align(4);
    paramNdrBuffer.enc_ndr_referent(entry_path, 1);
    if (entry_path != null) {
      deferred.enc_ndr_string(entry_path);
    }
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.msrpc.netdfs.DfsInfo1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */