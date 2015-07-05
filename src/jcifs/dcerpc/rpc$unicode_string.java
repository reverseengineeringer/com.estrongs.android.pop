package jcifs.dcerpc;

import jcifs.dcerpc.ndr.NdrBuffer;
import jcifs.dcerpc.ndr.NdrException;
import jcifs.dcerpc.ndr.NdrObject;

public class rpc$unicode_string
  extends NdrObject
{
  public short[] buffer;
  public short length;
  public short maximum_length;
  
  public void decode(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.align(4);
    length = ((short)paramNdrBuffer.dec_ndr_short());
    maximum_length = ((short)paramNdrBuffer.dec_ndr_short());
    if (paramNdrBuffer.dec_ndr_long() != 0)
    {
      paramNdrBuffer = deferred;
      int i = paramNdrBuffer.dec_ndr_long();
      paramNdrBuffer.dec_ndr_long();
      int j = paramNdrBuffer.dec_ndr_long();
      int k = index;
      paramNdrBuffer.advance(j * 2);
      if (buffer == null)
      {
        if ((i < 0) || (i > 65535)) {
          throw new NdrException("invalid array conformance");
        }
        buffer = new short[i];
      }
      paramNdrBuffer = paramNdrBuffer.derive(k);
      i = 0;
      while (i < j)
      {
        buffer[i] = ((short)paramNdrBuffer.dec_ndr_short());
        i += 1;
      }
    }
  }
  
  public void encode(NdrBuffer paramNdrBuffer)
  {
    int i = 0;
    paramNdrBuffer.align(4);
    paramNdrBuffer.enc_ndr_short(length);
    paramNdrBuffer.enc_ndr_short(maximum_length);
    paramNdrBuffer.enc_ndr_referent(buffer, 1);
    if (buffer != null)
    {
      paramNdrBuffer = deferred;
      int j = length / 2;
      paramNdrBuffer.enc_ndr_long(maximum_length / 2);
      paramNdrBuffer.enc_ndr_long(0);
      paramNdrBuffer.enc_ndr_long(j);
      int k = index;
      paramNdrBuffer.advance(j * 2);
      paramNdrBuffer = paramNdrBuffer.derive(k);
      while (i < j)
      {
        paramNdrBuffer.enc_ndr_short(buffer[i]);
        i += 1;
      }
    }
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.rpc.unicode_string
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */