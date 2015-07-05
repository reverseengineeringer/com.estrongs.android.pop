package jcifs.dcerpc.msrpc;

import jcifs.dcerpc.ndr.NdrBuffer;
import jcifs.dcerpc.ndr.NdrObject;

public class srvsvc$ShareInfo0
  extends NdrObject
{
  public String netname;
  
  public void decode(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.align(4);
    if (paramNdrBuffer.dec_ndr_long() != 0) {
      netname = deferred.dec_ndr_string();
    }
  }
  
  public void encode(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.align(4);
    paramNdrBuffer.enc_ndr_referent(netname, 1);
    if (netname != null) {
      deferred.enc_ndr_string(netname);
    }
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.msrpc.srvsvc.ShareInfo0
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */