package jcifs.dcerpc;

import jcifs.dcerpc.ndr.NdrBuffer;
import jcifs.dcerpc.ndr.NdrObject;

public class rpc$uuid_t
  extends NdrObject
{
  public byte clock_seq_hi_and_reserved;
  public byte clock_seq_low;
  public byte[] node;
  public short time_hi_and_version;
  public int time_low;
  public short time_mid;
  
  public void decode(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.align(4);
    time_low = paramNdrBuffer.dec_ndr_long();
    time_mid = ((short)paramNdrBuffer.dec_ndr_short());
    time_hi_and_version = ((short)paramNdrBuffer.dec_ndr_short());
    clock_seq_hi_and_reserved = ((byte)paramNdrBuffer.dec_ndr_small());
    clock_seq_low = ((byte)paramNdrBuffer.dec_ndr_small());
    int i = index;
    paramNdrBuffer.advance(6);
    if (node == null) {
      node = new byte[6];
    }
    paramNdrBuffer = paramNdrBuffer.derive(i);
    i = 0;
    while (i < 6)
    {
      node[i] = ((byte)paramNdrBuffer.dec_ndr_small());
      i += 1;
    }
  }
  
  public void encode(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.align(4);
    paramNdrBuffer.enc_ndr_long(time_low);
    paramNdrBuffer.enc_ndr_short(time_mid);
    paramNdrBuffer.enc_ndr_short(time_hi_and_version);
    paramNdrBuffer.enc_ndr_small(clock_seq_hi_and_reserved);
    paramNdrBuffer.enc_ndr_small(clock_seq_low);
    int i = index;
    paramNdrBuffer.advance(6);
    paramNdrBuffer = paramNdrBuffer.derive(i);
    i = 0;
    while (i < 6)
    {
      paramNdrBuffer.enc_ndr_small(node[i]);
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.rpc.uuid_t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */