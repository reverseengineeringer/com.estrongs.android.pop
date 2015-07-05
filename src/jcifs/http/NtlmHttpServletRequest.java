package jcifs.http;

import java.security.Principal;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

class NtlmHttpServletRequest
  extends HttpServletRequestWrapper
{
  Principal principal;
  
  NtlmHttpServletRequest(HttpServletRequest paramHttpServletRequest, Principal paramPrincipal)
  {
    super(paramHttpServletRequest);
    principal = paramPrincipal;
  }
  
  public String getAuthType()
  {
    return "NTLM";
  }
  
  public String getRemoteUser()
  {
    return principal.getName();
  }
  
  public Principal getUserPrincipal()
  {
    return principal;
  }
}

/* Location:
 * Qualified Name:     jcifs.http.NtlmHttpServletRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */