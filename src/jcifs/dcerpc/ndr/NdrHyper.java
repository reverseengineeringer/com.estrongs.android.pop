package jcifs.dcerpc.ndr;

public class NdrHyper
  extends NdrObject
{
  public long value;
  
  public NdrHyper(long paramLong)
  {
    value = paramLong;
  }
  
  public void decode(NdrBuffer paramNdrBuffer)
  {
    value = paramNdrBuffer.dec_ndr_hyper();
  }
  
  public void encode(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.enc_ndr_hyper(value);
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.ndr.NdrHyper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */