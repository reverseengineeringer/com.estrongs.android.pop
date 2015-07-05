package jcifs.dcerpc.msrpc;

import jcifs.dcerpc.ndr.NdrBuffer;
import jcifs.dcerpc.ndr.NdrException;
import jcifs.dcerpc.ndr.NdrObject;
import jcifs.dcerpc.rpc.unicode_string;

public class lsarpc$LsarTranslatedName
  extends NdrObject
{
  public rpc.unicode_string name;
  public int sid_index;
  public short sid_type;
  
  public void decode(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.align(4);
    sid_type = ((short)paramNdrBuffer.dec_ndr_short());
    paramNdrBuffer.align(4);
    if (name == null) {
      name = new rpc.unicode_string();
    }
    name.length = ((short)paramNdrBuffer.dec_ndr_short());
    name.maximum_length = ((short)paramNdrBuffer.dec_ndr_short());
    int i = paramNdrBuffer.dec_ndr_long();
    sid_index = paramNdrBuffer.dec_ndr_long();
    if (i != 0)
    {
      paramNdrBuffer = deferred;
      i = paramNdrBuffer.dec_ndr_long();
      paramNdrBuffer.dec_ndr_long();
      int j = paramNdrBuffer.dec_ndr_long();
      int k = index;
      paramNdrBuffer.advance(j * 2);
      if (name.buffer == null)
      {
        if ((i < 0) || (i > 65535)) {
          throw new NdrException("invalid array conformance");
        }
        name.buffer = new short[i];
      }
      paramNdrBuffer = paramNdrBuffer.derive(k);
      i = 0;
      while (i < j)
      {
        name.buffer[i] = ((short)paramNdrBuffer.dec_ndr_short());
        i += 1;
      }
    }
  }
  
  public void encode(NdrBuffer paramNdrBuffer)
  {
    int i = 0;
    paramNdrBuffer.align(4);
    paramNdrBuffer.enc_ndr_short(sid_type);
    paramNdrBuffer.enc_ndr_short(name.length);
    paramNdrBuffer.enc_ndr_short(name.maximum_length);
    paramNdrBuffer.enc_ndr_referent(name.buffer, 1);
    paramNdrBuffer.enc_ndr_long(sid_index);
    if (name.buffer != null)
    {
      paramNdrBuffer = deferred;
      int j = name.length / 2;
      paramNdrBuffer.enc_ndr_long(name.maximum_length / 2);
      paramNdrBuffer.enc_ndr_long(0);
      paramNdrBuffer.enc_ndr_long(j);
      int k = index;
      paramNdrBuffer.advance(j * 2);
      paramNdrBuffer = paramNdrBuffer.derive(k);
      while (i < j)
      {
        paramNdrBuffer.enc_ndr_short(name.buffer[i]);
        i += 1;
      }
    }
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.msrpc.lsarpc.LsarTranslatedName
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */