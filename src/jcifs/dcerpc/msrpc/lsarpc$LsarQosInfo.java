package jcifs.dcerpc.msrpc;

import jcifs.dcerpc.ndr.NdrBuffer;
import jcifs.dcerpc.ndr.NdrObject;

public class lsarpc$LsarQosInfo
  extends NdrObject
{
  public byte context_mode;
  public byte effective_only;
  public short impersonation_level;
  public int length;
  
  public void decode(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.align(4);
    length = paramNdrBuffer.dec_ndr_long();
    impersonation_level = ((short)paramNdrBuffer.dec_ndr_short());
    context_mode = ((byte)paramNdrBuffer.dec_ndr_small());
    effective_only = ((byte)paramNdrBuffer.dec_ndr_small());
  }
  
  public void encode(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.align(4);
    paramNdrBuffer.enc_ndr_long(length);
    paramNdrBuffer.enc_ndr_short(impersonation_level);
    paramNdrBuffer.enc_ndr_small(context_mode);
    paramNdrBuffer.enc_ndr_small(effective_only);
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.msrpc.lsarpc.LsarQosInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */