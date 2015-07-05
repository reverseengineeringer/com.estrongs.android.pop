package jcifs.dcerpc.ndr;

public abstract class NdrObject
{
  public abstract void decode(NdrBuffer paramNdrBuffer);
  
  public abstract void encode(NdrBuffer paramNdrBuffer);
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.ndr.NdrObject
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */