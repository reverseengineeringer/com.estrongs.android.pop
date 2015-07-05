package jcifs.dcerpc;

import jcifs.dcerpc.ndr.NdrBuffer;
import jcifs.dcerpc.ndr.NdrException;
import jcifs.dcerpc.ndr.NdrObject;

public class rpc$sid_t
  extends NdrObject
{
  public byte[] identifier_authority;
  public byte revision;
  public int[] sub_authority;
  public byte sub_authority_count;
  
  public void decode(NdrBuffer paramNdrBuffer)
  {
    int j = 0;
    paramNdrBuffer.align(4);
    int k = paramNdrBuffer.dec_ndr_long();
    revision = ((byte)paramNdrBuffer.dec_ndr_small());
    sub_authority_count = ((byte)paramNdrBuffer.dec_ndr_small());
    int i = index;
    paramNdrBuffer.advance(6);
    int m = index;
    paramNdrBuffer.advance(k * 4);
    if (identifier_authority == null) {
      identifier_authority = new byte[6];
    }
    paramNdrBuffer = paramNdrBuffer.derive(i);
    i = 0;
    while (i < 6)
    {
      identifier_authority[i] = ((byte)paramNdrBuffer.dec_ndr_small());
      i += 1;
    }
    if (sub_authority == null)
    {
      if ((k < 0) || (k > 65535)) {
        throw new NdrException("invalid array conformance");
      }
      sub_authority = new int[k];
    }
    paramNdrBuffer = paramNdrBuffer.derive(m);
    i = j;
    while (i < k)
    {
      sub_authority[i] = paramNdrBuffer.dec_ndr_long();
      i += 1;
    }
  }
  
  public void encode(NdrBuffer paramNdrBuffer)
  {
    int j = 0;
    paramNdrBuffer.align(4);
    int k = sub_authority_count;
    paramNdrBuffer.enc_ndr_long(k);
    paramNdrBuffer.enc_ndr_small(revision);
    paramNdrBuffer.enc_ndr_small(sub_authority_count);
    int i = index;
    paramNdrBuffer.advance(6);
    int m = index;
    paramNdrBuffer.advance(k * 4);
    paramNdrBuffer = paramNdrBuffer.derive(i);
    i = 0;
    while (i < 6)
    {
      paramNdrBuffer.enc_ndr_small(identifier_authority[i]);
      i += 1;
    }
    paramNdrBuffer = paramNdrBuffer.derive(m);
    i = j;
    while (i < k)
    {
      paramNdrBuffer.enc_ndr_long(sub_authority[i]);
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.rpc.sid_t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */