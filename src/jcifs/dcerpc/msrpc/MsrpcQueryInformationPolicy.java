package jcifs.dcerpc.msrpc;

import jcifs.dcerpc.ndr.NdrObject;

public class MsrpcQueryInformationPolicy
  extends lsarpc.LsarQueryInformationPolicy
{
  public MsrpcQueryInformationPolicy(LsaPolicyHandle paramLsaPolicyHandle, short paramShort, NdrObject paramNdrObject)
  {
    super(paramLsaPolicyHandle, paramShort, paramNdrObject);
    ptype = 0;
    flags = 3;
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.msrpc.MsrpcQueryInformationPolicy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */