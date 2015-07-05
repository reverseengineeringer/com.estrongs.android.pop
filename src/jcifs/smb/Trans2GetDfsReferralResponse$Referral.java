package jcifs.smb;

class Trans2GetDfsReferralResponse$Referral
{
  private String altPath;
  private int altPathOffset;
  private int flags;
  String node = null;
  private int nodeOffset;
  String path = null;
  private int pathOffset;
  private int proximity;
  private int serverType;
  private int size;
  int ttl;
  private int version;
  
  Trans2GetDfsReferralResponse$Referral(Trans2GetDfsReferralResponse paramTrans2GetDfsReferralResponse) {}
  
  int readWireFormat(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    boolean bool1 = true;
    boolean bool2 = true;
    version = ServerMessageBlock.readInt2(paramArrayOfByte, paramInt1);
    if ((version != 3) && (version != 1)) {
      throw new RuntimeException("Version " + version + " referral not supported. Please report this to jcifs at samba dot org.");
    }
    int i = paramInt1 + 2;
    size = ServerMessageBlock.readInt2(paramArrayOfByte, i);
    i += 2;
    serverType = ServerMessageBlock.readInt2(paramArrayOfByte, i);
    i += 2;
    flags = ServerMessageBlock.readInt2(paramArrayOfByte, i);
    i += 2;
    if (version == 3)
    {
      proximity = ServerMessageBlock.readInt2(paramArrayOfByte, i);
      i += 2;
      ttl = ServerMessageBlock.readInt2(paramArrayOfByte, i);
      i += 2;
      pathOffset = ServerMessageBlock.readInt2(paramArrayOfByte, i);
      i += 2;
      altPathOffset = ServerMessageBlock.readInt2(paramArrayOfByte, i);
      i += 2;
      nodeOffset = ServerMessageBlock.readInt2(paramArrayOfByte, i);
      localTrans2GetDfsReferralResponse = this$0;
      i = pathOffset;
      if ((this$0.flags2 & 0x8000) != 0)
      {
        bool1 = true;
        path = localTrans2GetDfsReferralResponse.readString(paramArrayOfByte, paramInt1 + i, paramInt2, bool1);
        if (nodeOffset > 0)
        {
          localTrans2GetDfsReferralResponse = this$0;
          i = nodeOffset;
          if ((this$0.flags2 & 0x8000) == 0) {
            break label310;
          }
          bool1 = bool2;
          node = localTrans2GetDfsReferralResponse.readString(paramArrayOfByte, i + paramInt1, paramInt2, bool1);
        }
      }
    }
    label310:
    while (version != 1) {
      for (;;)
      {
        return size;
        bool1 = false;
        continue;
        bool1 = false;
      }
    }
    Trans2GetDfsReferralResponse localTrans2GetDfsReferralResponse = this$0;
    if ((this$0.flags2 & 0x8000) != 0) {}
    for (;;)
    {
      node = localTrans2GetDfsReferralResponse.readString(paramArrayOfByte, i, paramInt2, bool1);
      break;
      bool1 = false;
    }
  }
  
  public String toString()
  {
    return new String("Referral[version=" + version + ",size=" + size + ",serverType=" + serverType + ",flags=" + flags + ",proximity=" + proximity + ",ttl=" + ttl + ",pathOffset=" + pathOffset + ",altPathOffset=" + altPathOffset + ",nodeOffset=" + nodeOffset + ",path=" + path + ",altPath=" + altPath + ",node=" + node + "]");
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.Trans2GetDfsReferralResponse.Referral
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */