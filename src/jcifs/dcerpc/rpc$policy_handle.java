package jcifs.dcerpc;

import jcifs.dcerpc.ndr.NdrBuffer;
import jcifs.dcerpc.ndr.NdrObject;

public class rpc$policy_handle
  extends NdrObject
{
  public int type;
  public rpc.uuid_t uuid;
  
  public void decode(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.align(4);
    type = paramNdrBuffer.dec_ndr_long();
    paramNdrBuffer.align(4);
    if (uuid == null) {
      uuid = new rpc.uuid_t();
    }
    uuid.time_low = paramNdrBuffer.dec_ndr_long();
    uuid.time_mid = ((short)paramNdrBuffer.dec_ndr_short());
    uuid.time_hi_and_version = ((short)paramNdrBuffer.dec_ndr_short());
    uuid.clock_seq_hi_and_reserved = ((byte)paramNdrBuffer.dec_ndr_small());
    uuid.clock_seq_low = ((byte)paramNdrBuffer.dec_ndr_small());
    int i = index;
    paramNdrBuffer.advance(6);
    if (uuid.node == null) {
      uuid.node = new byte[6];
    }
    paramNdrBuffer = paramNdrBuffer.derive(i);
    i = 0;
    while (i < 6)
    {
      uuid.node[i] = ((byte)paramNdrBuffer.dec_ndr_small());
      i += 1;
    }
  }
  
  public void encode(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.align(4);
    paramNdrBuffer.enc_ndr_long(type);
    paramNdrBuffer.enc_ndr_long(uuid.time_low);
    paramNdrBuffer.enc_ndr_short(uuid.time_mid);
    paramNdrBuffer.enc_ndr_short(uuid.time_hi_and_version);
    paramNdrBuffer.enc_ndr_small(uuid.clock_seq_hi_and_reserved);
    paramNdrBuffer.enc_ndr_small(uuid.clock_seq_low);
    int i = index;
    paramNdrBuffer.advance(6);
    paramNdrBuffer = paramNdrBuffer.derive(i);
    i = 0;
    while (i < 6)
    {
      paramNdrBuffer.enc_ndr_small(uuid.node[i]);
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.rpc.policy_handle
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */