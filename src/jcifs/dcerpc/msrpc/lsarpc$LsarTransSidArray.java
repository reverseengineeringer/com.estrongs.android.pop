package jcifs.dcerpc.msrpc;

import jcifs.dcerpc.ndr.NdrBuffer;
import jcifs.dcerpc.ndr.NdrException;
import jcifs.dcerpc.ndr.NdrObject;

public class lsarpc$LsarTransSidArray
  extends NdrObject
{
  public int count;
  public lsarpc.LsarTranslatedSid[] sids;
  
  public void decode(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.align(4);
    count = paramNdrBuffer.dec_ndr_long();
    if (paramNdrBuffer.dec_ndr_long() != 0)
    {
      paramNdrBuffer = deferred;
      int j = paramNdrBuffer.dec_ndr_long();
      int i = index;
      paramNdrBuffer.advance(j * 12);
      if (sids == null)
      {
        if ((j < 0) || (j > 65535)) {
          throw new NdrException("invalid array conformance");
        }
        sids = new lsarpc.LsarTranslatedSid[j];
      }
      paramNdrBuffer = paramNdrBuffer.derive(i);
      i = 0;
      while (i < j)
      {
        if (sids[i] == null) {
          sids[i] = new lsarpc.LsarTranslatedSid();
        }
        sids[i].decode(paramNdrBuffer);
        i += 1;
      }
    }
  }
  
  public void encode(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.align(4);
    paramNdrBuffer.enc_ndr_long(count);
    paramNdrBuffer.enc_ndr_referent(sids, 1);
    if (sids != null)
    {
      paramNdrBuffer = deferred;
      int j = count;
      paramNdrBuffer.enc_ndr_long(j);
      int i = index;
      paramNdrBuffer.advance(j * 12);
      paramNdrBuffer = paramNdrBuffer.derive(i);
      i = 0;
      while (i < j)
      {
        sids[i].encode(paramNdrBuffer);
        i += 1;
      }
    }
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.msrpc.lsarpc.LsarTransSidArray
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */