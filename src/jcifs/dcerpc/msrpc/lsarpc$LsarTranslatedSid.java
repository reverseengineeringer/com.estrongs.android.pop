package jcifs.dcerpc.msrpc;

import jcifs.dcerpc.ndr.NdrBuffer;
import jcifs.dcerpc.ndr.NdrObject;

public class lsarpc$LsarTranslatedSid
  extends NdrObject
{
  public int rid;
  public int sid_index;
  public int sid_type;
  
  public void decode(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.align(4);
    sid_type = paramNdrBuffer.dec_ndr_short();
    rid = paramNdrBuffer.dec_ndr_long();
    sid_index = paramNdrBuffer.dec_ndr_long();
  }
  
  public void encode(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.align(4);
    paramNdrBuffer.enc_ndr_short(sid_type);
    paramNdrBuffer.enc_ndr_long(rid);
    paramNdrBuffer.enc_ndr_long(sid_index);
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.msrpc.lsarpc.LsarTranslatedSid
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */