package jcifs.dcerpc.msrpc;

import jcifs.dcerpc.ndr.NdrBuffer;
import jcifs.dcerpc.ndr.NdrObject;

public class srvsvc$ShareInfo1
  extends NdrObject
{
  public String netname;
  public String remark;
  public int type;
  
  public void decode(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.align(4);
    int i = paramNdrBuffer.dec_ndr_long();
    type = paramNdrBuffer.dec_ndr_long();
    int j = paramNdrBuffer.dec_ndr_long();
    NdrBuffer localNdrBuffer = paramNdrBuffer;
    if (i != 0)
    {
      localNdrBuffer = deferred;
      netname = localNdrBuffer.dec_ndr_string();
    }
    if (j != 0) {
      remark = deferred.dec_ndr_string();
    }
  }
  
  public void encode(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.align(4);
    paramNdrBuffer.enc_ndr_referent(netname, 1);
    paramNdrBuffer.enc_ndr_long(type);
    paramNdrBuffer.enc_ndr_referent(remark, 1);
    NdrBuffer localNdrBuffer = paramNdrBuffer;
    if (netname != null)
    {
      localNdrBuffer = deferred;
      localNdrBuffer.enc_ndr_string(netname);
    }
    if (remark != null) {
      deferred.enc_ndr_string(remark);
    }
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.msrpc.srvsvc.ShareInfo1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */