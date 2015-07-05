package jcifs.dcerpc.msrpc;

import jcifs.dcerpc.ndr.NdrBuffer;
import jcifs.dcerpc.ndr.NdrObject;

public class samr$SamrRidWithAttribute
  extends NdrObject
{
  public int attributes;
  public int rid;
  
  public void decode(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.align(4);
    rid = paramNdrBuffer.dec_ndr_long();
    attributes = paramNdrBuffer.dec_ndr_long();
  }
  
  public void encode(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.align(4);
    paramNdrBuffer.enc_ndr_long(rid);
    paramNdrBuffer.enc_ndr_long(attributes);
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.msrpc.samr.SamrRidWithAttribute
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */