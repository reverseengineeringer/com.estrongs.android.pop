package jcifs.smb;

class SmbTransport$ServerData
{
  int capabilities;
  boolean encryptedPasswords;
  byte[] encryptionKey;
  int encryptionKeyLength;
  byte flags;
  int flags2;
  byte[] guid;
  int maxBufferSize;
  int maxMpxCount;
  int maxNumberVcs;
  int maxRawSize;
  String oemDomainName;
  int security;
  int securityMode;
  long serverTime;
  int serverTimeZone;
  int sessionKey;
  boolean signaturesEnabled;
  boolean signaturesRequired;
  
  SmbTransport$ServerData(SmbTransport paramSmbTransport) {}
}

/* Location:
 * Qualified Name:     jcifs.smb.SmbTransport.ServerData
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */