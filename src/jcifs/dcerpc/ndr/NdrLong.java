package jcifs.dcerpc.ndr;

public class NdrLong
  extends NdrObject
{
  public int value;
  
  public NdrLong(int paramInt)
  {
    value = paramInt;
  }
  
  public void decode(NdrBuffer paramNdrBuffer)
  {
    value = paramNdrBuffer.dec_ndr_long();
  }
  
  public void encode(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.enc_ndr_long(value);
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.ndr.NdrLong
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */