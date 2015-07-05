package jcifs.smb;

class Trans2GetDfsReferralResponse
  extends SmbComTransactionResponse
{
  int flags;
  int numReferrals;
  int pathConsumed;
  Trans2GetDfsReferralResponse.Referral[] referrals;
  
  Trans2GetDfsReferralResponse()
  {
    subCommand = 16;
  }
  
  int readDataWireFormat(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    pathConsumed = readInt2(paramArrayOfByte, paramInt1);
    int i = paramInt1 + 2;
    if ((flags2 & 0x8000) != 0) {
      pathConsumed /= 2;
    }
    numReferrals = readInt2(paramArrayOfByte, i);
    i += 2;
    flags = readInt2(paramArrayOfByte, i);
    int j = i + 4;
    referrals = new Trans2GetDfsReferralResponse.Referral[numReferrals];
    i = 0;
    while (i < numReferrals)
    {
      referrals[i] = new Trans2GetDfsReferralResponse.Referral(this);
      j += referrals[i].readWireFormat(paramArrayOfByte, j, paramInt2);
      i += 1;
    }
    return j - paramInt1;
  }
  
  int readParametersWireFormat(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return 0;
  }
  
  int readSetupWireFormat(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return 0;
  }
  
  public String toString()
  {
    return new String("Trans2GetDfsReferralResponse[" + super.toString() + ",pathConsumed=" + pathConsumed + ",numReferrals=" + numReferrals + ",flags=" + flags + "]");
  }
  
  int writeDataWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
  
  int writeParametersWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
  
  int writeSetupWireFormat(byte[] paramArrayOfByte, int paramInt)
  {
    return 0;
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.Trans2GetDfsReferralResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */