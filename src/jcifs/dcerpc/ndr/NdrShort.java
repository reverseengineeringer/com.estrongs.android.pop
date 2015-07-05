package jcifs.dcerpc.ndr;

public class NdrShort
  extends NdrObject
{
  public int value;
  
  public NdrShort(int paramInt)
  {
    value = (paramInt & 0xFF);
  }
  
  public void decode(NdrBuffer paramNdrBuffer)
  {
    value = paramNdrBuffer.dec_ndr_short();
  }
  
  public void encode(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.enc_ndr_short(value);
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.ndr.NdrShort
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */