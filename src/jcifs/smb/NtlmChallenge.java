package jcifs.smb;

import java.io.Serializable;
import jcifs.UniAddress;
import jcifs.util.Hexdump;

public final class NtlmChallenge
  implements Serializable
{
  public byte[] challenge;
  public UniAddress dc;
  
  NtlmChallenge(byte[] paramArrayOfByte, UniAddress paramUniAddress)
  {
    challenge = paramArrayOfByte;
    dc = paramUniAddress;
  }
  
  public String toString()
  {
    return "NtlmChallenge[challenge=0x" + Hexdump.toHexString(challenge, 0, challenge.length * 2) + ",dc=" + dc.toString() + "]";
  }
}

/* Location:
 * Qualified Name:     jcifs.smb.NtlmChallenge
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */