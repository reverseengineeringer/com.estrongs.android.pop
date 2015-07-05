package jcifs.dcerpc.msrpc;

import jcifs.dcerpc.ndr.NdrBuffer;
import jcifs.dcerpc.ndr.NdrException;
import jcifs.dcerpc.ndr.NdrObject;
import jcifs.dcerpc.rpc.sid_t;
import jcifs.dcerpc.rpc.unicode_string;

public class lsarpc$LsarTrustInformation
  extends NdrObject
{
  public rpc.unicode_string name;
  public rpc.sid_t sid;
  
  public void decode(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.align(4);
    paramNdrBuffer.align(4);
    if (name == null) {
      name = new rpc.unicode_string();
    }
    name.length = ((short)paramNdrBuffer.dec_ndr_short());
    name.maximum_length = ((short)paramNdrBuffer.dec_ndr_short());
    int i = paramNdrBuffer.dec_ndr_long();
    int j = paramNdrBuffer.dec_ndr_long();
    NdrBuffer localNdrBuffer = paramNdrBuffer;
    if (i != 0)
    {
      paramNdrBuffer = deferred;
      i = paramNdrBuffer.dec_ndr_long();
      paramNdrBuffer.dec_ndr_long();
      int k = paramNdrBuffer.dec_ndr_long();
      int m = index;
      paramNdrBuffer.advance(k * 2);
      if (name.buffer == null)
      {
        if ((i < 0) || (i > 65535)) {
          throw new NdrException("invalid array conformance");
        }
        name.buffer = new short[i];
      }
      paramNdrBuffer = paramNdrBuffer.derive(m);
      i = 0;
      for (;;)
      {
        localNdrBuffer = paramNdrBuffer;
        if (i >= k) {
          break;
        }
        name.buffer[i] = ((short)paramNdrBuffer.dec_ndr_short());
        i += 1;
      }
    }
    if (j != 0)
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
    int i = 0;
    paramNdrBuffer.align(4);
    paramNdrBuffer.enc_ndr_short(name.length);
    paramNdrBuffer.enc_ndr_short(name.maximum_length);
    paramNdrBuffer.enc_ndr_referent(name.buffer, 1);
    paramNdrBuffer.enc_ndr_referent(sid, 1);
    NdrBuffer localNdrBuffer = paramNdrBuffer;
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
      for (;;)
      {
        localNdrBuffer = paramNdrBuffer;
        if (i >= j) {
          break;
        }
        paramNdrBuffer.enc_ndr_short(name.buffer[i]);
        i += 1;
      }
    }
    if (sid != null)
    {
      paramNdrBuffer = deferred;
      sid.encode(paramNdrBuffer);
    }
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.msrpc.lsarpc.LsarTrustInformation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */