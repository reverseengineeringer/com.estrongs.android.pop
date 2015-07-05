package jcifs.dcerpc.msrpc;

import jcifs.dcerpc.ndr.NdrBuffer;
import jcifs.dcerpc.ndr.NdrException;
import jcifs.dcerpc.ndr.NdrObject;

public class samr$SamrRidWithAttributeArray
  extends NdrObject
{
  public int count;
  public samr.SamrRidWithAttribute[] rids;
  
  public void decode(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.align(4);
    count = paramNdrBuffer.dec_ndr_long();
    if (paramNdrBuffer.dec_ndr_long() != 0)
    {
      paramNdrBuffer = deferred;
      int j = paramNdrBuffer.dec_ndr_long();
      int i = index;
      paramNdrBuffer.advance(j * 8);
      if (rids == null)
      {
        if ((j < 0) || (j > 65535)) {
          throw new NdrException("invalid array conformance");
        }
        rids = new samr.SamrRidWithAttribute[j];
      }
      paramNdrBuffer = paramNdrBuffer.derive(i);
      i = 0;
      while (i < j)
      {
        if (rids[i] == null) {
          rids[i] = new samr.SamrRidWithAttribute();
        }
        rids[i].decode(paramNdrBuffer);
        i += 1;
      }
    }
  }
  
  public void encode(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.align(4);
    paramNdrBuffer.enc_ndr_long(count);
    paramNdrBuffer.enc_ndr_referent(rids, 1);
    if (rids != null)
    {
      paramNdrBuffer = deferred;
      int j = count;
      paramNdrBuffer.enc_ndr_long(j);
      int i = index;
      paramNdrBuffer.advance(j * 8);
      paramNdrBuffer = paramNdrBuffer.derive(i);
      i = 0;
      while (i < j)
      {
        rids[i].encode(paramNdrBuffer);
        i += 1;
      }
    }
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.msrpc.samr.SamrRidWithAttributeArray
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */