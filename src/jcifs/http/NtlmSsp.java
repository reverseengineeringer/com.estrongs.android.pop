package jcifs.http;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import jcifs.ntlmssp.NtlmFlags;
import jcifs.ntlmssp.Type1Message;
import jcifs.ntlmssp.Type2Message;
import jcifs.ntlmssp.Type3Message;
import jcifs.smb.NtlmPasswordAuthentication;
import jcifs.util.Base64;

public class NtlmSsp
  implements NtlmFlags
{
  public static NtlmPasswordAuthentication authenticate(HttpServletRequest paramHttpServletRequest, HttpServletResponse paramHttpServletResponse, byte[] paramArrayOfByte)
  {
    paramHttpServletRequest = paramHttpServletRequest.getHeader("Authorization");
    if ((paramHttpServletRequest != null) && (paramHttpServletRequest.startsWith("NTLM ")))
    {
      paramHttpServletRequest = Base64.decode(paramHttpServletRequest.substring(5));
      if (paramHttpServletRequest[8] == 1)
      {
        paramHttpServletRequest = Base64.encode(new Type2Message(new Type1Message(paramHttpServletRequest), paramArrayOfByte, null).toByteArray());
        paramHttpServletResponse.setHeader("WWW-Authenticate", "NTLM " + paramHttpServletRequest);
      }
    }
    for (;;)
    {
      paramHttpServletResponse.setStatus(401);
      paramHttpServletResponse.setContentLength(0);
      paramHttpServletResponse.flushBuffer();
      return null;
      if (paramHttpServletRequest[8] == 3)
      {
        Type3Message localType3Message = new Type3Message(paramHttpServletRequest);
        paramHttpServletResponse = localType3Message.getLMResponse();
        paramHttpServletRequest = paramHttpServletResponse;
        if (paramHttpServletResponse == null) {
          paramHttpServletRequest = new byte[0];
        }
        byte[] arrayOfByte = localType3Message.getNTResponse();
        paramHttpServletResponse = arrayOfByte;
        if (arrayOfByte == null) {
          paramHttpServletResponse = new byte[0];
        }
        return new NtlmPasswordAuthentication(localType3Message.getDomain(), localType3Message.getUser(), paramArrayOfByte, paramHttpServletRequest, paramHttpServletResponse);
        paramHttpServletResponse.setHeader("WWW-Authenticate", "NTLM");
      }
    }
  }
  
  public NtlmPasswordAuthentication doAuthentication(HttpServletRequest paramHttpServletRequest, HttpServletResponse paramHttpServletResponse, byte[] paramArrayOfByte)
  {
    return authenticate(paramHttpServletRequest, paramHttpServletResponse, paramArrayOfByte);
  }
}

/* Location:
 * Qualified Name:     jcifs.http.NtlmSsp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */