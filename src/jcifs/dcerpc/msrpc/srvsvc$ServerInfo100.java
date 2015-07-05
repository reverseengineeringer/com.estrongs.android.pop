package jcifs.dcerpc.msrpc;

import jcifs.dcerpc.ndr.NdrBuffer;
import jcifs.dcerpc.ndr.NdrObject;

public class srvsvc$ServerInfo100
  extends NdrObject
{
  public String name;
  public int platform_id;
  
  public void decode(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.align(4);
    platform_id = paramNdrBuffer.dec_ndr_long();
    if (paramNdrBuffer.dec_ndr_long() != 0) {
      name = deferred.dec_ndr_string();
    }
  }
  
  public void encode(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.align(4);
    paramNdrBuffer.enc_ndr_long(platform_id);
    paramNdrBuffer.enc_ndr_referent(name, 1);
    if (name != null) {
      deferred.enc_ndr_string(name);
    }
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.msrpc.srvsvc.ServerInfo100
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */