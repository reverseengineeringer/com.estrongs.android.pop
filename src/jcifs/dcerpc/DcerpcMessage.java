package jcifs.dcerpc;

import jcifs.dcerpc.ndr.NdrBuffer;
import jcifs.dcerpc.ndr.NdrException;
import jcifs.dcerpc.ndr.NdrObject;

public abstract class DcerpcMessage
  extends NdrObject
  implements DcerpcConstants
{
  protected int alloc_hint = 0;
  protected int call_id = 0;
  protected int flags = 0;
  protected int length = 0;
  protected int ptype = -1;
  protected int result = 0;
  
  public void decode(NdrBuffer paramNdrBuffer)
  {
    decode_header(paramNdrBuffer);
    if ((ptype != 12) && (ptype != 2) && (ptype != 3) && (ptype != 13)) {
      throw new NdrException("Unexpected ptype: " + ptype);
    }
    if ((ptype == 2) || (ptype == 3))
    {
      alloc_hint = paramNdrBuffer.dec_ndr_long();
      paramNdrBuffer.dec_ndr_short();
      paramNdrBuffer.dec_ndr_short();
    }
    if ((ptype == 3) || (ptype == 13))
    {
      result = paramNdrBuffer.dec_ndr_long();
      return;
    }
    decode_out(paramNdrBuffer);
  }
  
  void decode_header(NdrBuffer paramNdrBuffer)
  {
    if ((paramNdrBuffer.dec_ndr_small() != 5) || (paramNdrBuffer.dec_ndr_small() != 0)) {
      throw new NdrException("DCERPC version not supported");
    }
    ptype = paramNdrBuffer.dec_ndr_small();
    flags = paramNdrBuffer.dec_ndr_small();
    if (paramNdrBuffer.dec_ndr_long() != 16) {
      throw new NdrException("Data representation not supported");
    }
    length = paramNdrBuffer.dec_ndr_short();
    if (paramNdrBuffer.dec_ndr_short() != 0) {
      throw new NdrException("DCERPC authentication not supported");
    }
    call_id = paramNdrBuffer.dec_ndr_long();
  }
  
  public abstract void decode_out(NdrBuffer paramNdrBuffer);
  
  public void encode(NdrBuffer paramNdrBuffer)
  {
    int j = paramNdrBuffer.getIndex();
    paramNdrBuffer.advance(16);
    int i;
    if (ptype == 0)
    {
      i = paramNdrBuffer.getIndex();
      paramNdrBuffer.enc_ndr_long(0);
      paramNdrBuffer.enc_ndr_short(0);
      paramNdrBuffer.enc_ndr_short(getOpnum());
    }
    for (;;)
    {
      encode_in(paramNdrBuffer);
      length = (paramNdrBuffer.getIndex() - j);
      if (ptype == 0)
      {
        paramNdrBuffer.setIndex(i);
        alloc_hint = (length - i);
        paramNdrBuffer.enc_ndr_long(alloc_hint);
      }
      paramNdrBuffer.setIndex(j);
      encode_header(paramNdrBuffer);
      paramNdrBuffer.setIndex(length + j);
      return;
      i = 0;
    }
  }
  
  void encode_header(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.enc_ndr_small(5);
    paramNdrBuffer.enc_ndr_small(0);
    paramNdrBuffer.enc_ndr_small(ptype);
    paramNdrBuffer.enc_ndr_small(flags);
    paramNdrBuffer.enc_ndr_long(16);
    paramNdrBuffer.enc_ndr_short(length);
    paramNdrBuffer.enc_ndr_short(0);
    paramNdrBuffer.enc_ndr_long(call_id);
  }
  
  public abstract void encode_in(NdrBuffer paramNdrBuffer);
  
  public abstract int getOpnum();
  
  public DcerpcException getResult()
  {
    if (result != 0) {
      return new DcerpcException(result);
    }
    return null;
  }
  
  public boolean isFlagSet(int paramInt)
  {
    return (flags & paramInt) == paramInt;
  }
  
  public void setFlag(int paramInt)
  {
    flags |= paramInt;
  }
  
  public void unsetFlag(int paramInt)
  {
    flags &= (paramInt ^ 0xFFFFFFFF);
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.DcerpcMessage
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */