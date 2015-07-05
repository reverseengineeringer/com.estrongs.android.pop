package jcifs.dcerpc.msrpc;

import jcifs.dcerpc.ndr.NdrBuffer;
import jcifs.dcerpc.ndr.NdrObject;
import jcifs.dcerpc.rpc.sid_t;

public class lsarpc$LsarSidPtr
  extends NdrObject
{
  public rpc.sid_t sid;
  
  public void decode(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.align(4);
    if (paramNdrBuffer.dec_ndr_long() != 0)
    {
      if (sid == null) {
        sid = new rpc.sid_t();
      }
      paramNdrBuffer = deferred;
      sid.decode(paramNdrBuffer);
    }
  }
  
  public void encode(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.align(4);
    paramNdrBuffer.enc_ndr_referent(sid, 1);
    if (sid != null)
    {
      paramNdrBuffer = deferred;
      sid.encode(paramNdrBuffer);
    }
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.msrpc.lsarpc.LsarSidPtr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */