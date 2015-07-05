package jcifs.dcerpc.ndr;

public class NdrSmall
  extends NdrObject
{
  public int value;
  
  public NdrSmall(int paramInt)
  {
    value = (paramInt & 0xFF);
  }
  
  public void decode(NdrBuffer paramNdrBuffer)
  {
    value = paramNdrBuffer.dec_ndr_small();
  }
  
  public void encode(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.enc_ndr_small(value);
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.ndr.NdrSmall
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */