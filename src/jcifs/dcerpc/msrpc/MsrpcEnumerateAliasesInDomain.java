package jcifs.dcerpc.msrpc;

public class MsrpcEnumerateAliasesInDomain
  extends samr.SamrEnumerateAliasesInDomain
{
  public MsrpcEnumerateAliasesInDomain(SamrDomainHandle paramSamrDomainHandle, int paramInt, samr.SamrSamArray paramSamrSamArray)
  {
    super(paramSamrDomainHandle, 0, paramInt, null, 0);
    sam = paramSamrSamArray;
    ptype = 0;
    flags = 3;
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.msrpc.MsrpcEnumerateAliasesInDomain
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */