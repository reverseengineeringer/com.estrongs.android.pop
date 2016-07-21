package com.estrongs.android.g;

import java.io.IOException;
import jcifs.ntlmssp.Type1Message;
import jcifs.ntlmssp.Type2Message;
import jcifs.ntlmssp.Type3Message;
import jcifs.util.Base64;
import org.apache.http.impl.auth.NTLMEngine;
import org.apache.http.impl.auth.NTLMEngineException;

public final class e
  implements NTLMEngine
{
  public e(c paramc) {}
  
  public String generateType1Msg(String paramString1, String paramString2)
  {
    return Base64.encode(new Type1Message(-1610055676, paramString1, paramString2).toByteArray());
  }
  
  public String generateType3Msg(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    try
    {
      paramString5 = new Type2Message(Base64.decode(paramString5));
      return Base64.encode(new Type3Message(paramString5, paramString2, paramString3, paramString1, paramString4, paramString5.getFlags() & 0xFFFCFFFF).toByteArray());
    }
    catch (IOException paramString1)
    {
      throw new NTLMEngineException("Invalid NTLM type 2 message", paramString1);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.g.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */