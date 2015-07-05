package jcifs.dcerpc.msrpc;

import jcifs.dcerpc.rpc.sid_t;

public class MsrpcSamrOpenDomain
  extends samr.SamrOpenDomain
{
  public MsrpcSamrOpenDomain(SamrPolicyHandle paramSamrPolicyHandle, int paramInt, rpc.sid_t paramsid_t, SamrDomainHandle paramSamrDomainHandle)
  {
    super(paramSamrPolicyHandle, paramInt, paramsid_t, paramSamrDomainHandle);
    ptype = 0;
    flags = 3;
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.msrpc.MsrpcSamrOpenDomain
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */