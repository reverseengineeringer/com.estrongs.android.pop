package jcifs.http;

import java.io.IOException;
import java.util.Enumeration;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import jcifs.Config;
import jcifs.UniAddress;
import jcifs.smb.NtlmChallenge;
import jcifs.smb.NtlmPasswordAuthentication;
import jcifs.smb.SmbAuthException;
import jcifs.smb.SmbSession;
import jcifs.util.Base64;
import jcifs.util.Hexdump;
import jcifs.util.LogStream;

public class NtlmHttpFilter
  implements Filter
{
  private static LogStream log = ;
  private String defaultDomain;
  private String domainController;
  private boolean enableBasic;
  private boolean insecureBasic;
  private boolean loadBalance;
  private String realm;
  
  public void destroy() {}
  
  public void doFilter(ServletRequest paramServletRequest, ServletResponse paramServletResponse, FilterChain paramFilterChain)
  {
    paramServletRequest = (HttpServletRequest)paramServletRequest;
    NtlmPasswordAuthentication localNtlmPasswordAuthentication = negotiate(paramServletRequest, (HttpServletResponse)paramServletResponse, false);
    if (localNtlmPasswordAuthentication == null) {
      return;
    }
    paramFilterChain.doFilter(new NtlmHttpServletRequest(paramServletRequest, localNtlmPasswordAuthentication), paramServletResponse);
  }
  
  public FilterConfig getFilterConfig()
  {
    return null;
  }
  
  public void init(FilterConfig paramFilterConfig)
  {
    Config.setProperty("jcifs.smb.client.soTimeout", "1800000");
    Config.setProperty("jcifs.netbios.cachePolicy", "1200");
    Config.setProperty("jcifs.smb.lmCompatibility", "0");
    Config.setProperty("jcifs.smb.client.useExtendedSecurity", "false");
    Enumeration localEnumeration = paramFilterConfig.getInitParameterNames();
    while (localEnumeration.hasMoreElements())
    {
      String str = (String)localEnumeration.nextElement();
      if (str.startsWith("jcifs.")) {
        Config.setProperty(str, paramFilterConfig.getInitParameter(str));
      }
    }
    defaultDomain = Config.getProperty("jcifs.smb.client.domain");
    domainController = Config.getProperty("jcifs.http.domainController");
    if (domainController == null)
    {
      domainController = defaultDomain;
      loadBalance = Config.getBoolean("jcifs.http.loadBalance", true);
    }
    enableBasic = Boolean.valueOf(Config.getProperty("jcifs.http.enableBasic")).booleanValue();
    insecureBasic = Boolean.valueOf(Config.getProperty("jcifs.http.insecureBasic")).booleanValue();
    realm = Config.getProperty("jcifs.http.basicRealm");
    if (realm == null) {
      realm = "jCIFS";
    }
    int i = Config.getInt("jcifs.util.loglevel", -1);
    if (i != -1) {
      LogStream.setLevel(i);
    }
    paramFilterConfig = log;
    if (LogStream.level > 2) {}
    try
    {
      Config.store(log, "JCIFS PROPERTIES");
      return;
    }
    catch (IOException paramFilterConfig) {}
  }
  
  protected NtlmPasswordAuthentication negotiate(HttpServletRequest paramHttpServletRequest, HttpServletResponse paramHttpServletResponse, boolean paramBoolean)
  {
    Object localObject1 = paramHttpServletRequest.getHeader("Authorization");
    int i;
    Object localObject4;
    Object localObject3;
    if ((enableBasic) && ((insecureBasic) || (paramHttpServletRequest.isSecure())))
    {
      i = 1;
      if ((localObject1 == null) || ((!((String)localObject1).startsWith("NTLM ")) && ((i == 0) || (!((String)localObject1).startsWith("Basic "))))) {
        break label646;
      }
      if (!((String)localObject1).startsWith("NTLM ")) {
        break label285;
      }
      localObject4 = paramHttpServletRequest.getSession();
      if (!loadBalance) {
        break label174;
      }
      localObject2 = (NtlmChallenge)((HttpSession)localObject4).getAttribute("NtlmHttpChal");
      localObject1 = localObject2;
      if (localObject2 == null)
      {
        localObject1 = SmbSession.getChallengeForDomain();
        ((HttpSession)localObject4).setAttribute("NtlmHttpChal", localObject1);
      }
      localObject2 = dc;
      localObject3 = challenge;
      localObject1 = localObject2;
    }
    for (Object localObject2 = localObject3;; localObject2 = SmbSession.getChallenge((UniAddress)localObject1))
    {
      localObject3 = NtlmSsp.authenticate(paramHttpServletRequest, paramHttpServletResponse, (byte[])localObject2);
      if (localObject3 != null) {
        break label194;
      }
      return null;
      i = 0;
      break;
      label174:
      localObject1 = UniAddress.getByName(domainController, true);
    }
    label194:
    ((HttpSession)localObject4).removeAttribute("NtlmHttpChal");
    localObject2 = localObject1;
    localObject1 = localObject3;
    try
    {
      SmbSession.logon((UniAddress)localObject2, (NtlmPasswordAuthentication)localObject1);
      localObject3 = log;
      if (LogStream.level > 2) {
        log.println("NtlmHttpFilter: " + localObject1 + " successfully authenticated against " + localObject2);
      }
      paramHttpServletRequest.getSession().setAttribute("NtlmHttpAuth", localObject1);
      label282:
      return (NtlmPasswordAuthentication)localObject1;
    }
    catch (SmbAuthException localSmbAuthException)
    {
      label285:
      int j;
      localObject3 = log;
      if (LogStream.level <= 1) {
        break label535;
      }
      log.println("NtlmHttpFilter: " + ((NtlmPasswordAuthentication)localObject1).getName() + ": 0x" + Hexdump.toHexString(localSmbAuthException.getNtStatus(), 8) + ": " + localSmbAuthException);
      if (localSmbAuthException.getNtStatus() != -1073741819) {
        break label567;
      }
      paramHttpServletRequest = paramHttpServletRequest.getSession(false);
      if (paramHttpServletRequest == null) {
        break label567;
      }
      paramHttpServletRequest.removeAttribute("NtlmHttpAuth");
      paramHttpServletResponse.setHeader("WWW-Authenticate", "NTLM");
      if (i == 0) {
        break label622;
      }
      paramHttpServletResponse.addHeader("WWW-Authenticate", "Basic realm=\"" + realm + "\"");
      paramHttpServletResponse.setStatus(401);
      paramHttpServletResponse.setContentLength(0);
      paramHttpServletResponse.flushBuffer();
      return null;
    }
    localObject2 = new String(Base64.decode(((String)localObject1).substring(6)), "US-ASCII");
    j = ((String)localObject2).indexOf(':');
    if (j != -1)
    {
      localObject1 = ((String)localObject2).substring(0, j);
      label332:
      if (j == -1) {
        break label445;
      }
      localObject2 = ((String)localObject2).substring(j + 1);
      label349:
      j = ((String)localObject1).indexOf('\\');
      if (j != -1) {
        break label767;
      }
      j = ((String)localObject1).indexOf('/');
    }
    label445:
    label535:
    label567:
    label622:
    label646:
    label767:
    for (;;)
    {
      if (j != -1) {}
      for (localObject3 = ((String)localObject1).substring(0, j);; localObject3 = defaultDomain)
      {
        localObject4 = localObject1;
        if (j != -1) {
          localObject4 = ((String)localObject1).substring(j + 1);
        }
        localObject1 = new NtlmPasswordAuthentication((String)localObject3, (String)localObject4, (String)localObject2);
        localObject2 = UniAddress.getByName(domainController, true);
        break;
        localObject1 = localObject2;
        break label332;
        localObject2 = "";
        break label349;
      }
      if (!paramBoolean)
      {
        paramHttpServletRequest = paramHttpServletRequest.getSession(false);
        if (paramHttpServletRequest != null)
        {
          paramHttpServletRequest = (NtlmPasswordAuthentication)paramHttpServletRequest.getAttribute("NtlmHttpAuth");
          localObject1 = paramHttpServletRequest;
          if (paramHttpServletRequest != null) {
            break label282;
          }
        }
        paramHttpServletResponse.setHeader("WWW-Authenticate", "NTLM");
        if (i != 0) {
          paramHttpServletResponse.addHeader("WWW-Authenticate", "Basic realm=\"" + realm + "\"");
        }
        paramHttpServletResponse.setStatus(401);
        paramHttpServletResponse.setContentLength(0);
        paramHttpServletResponse.flushBuffer();
        return null;
      }
      localObject1 = null;
      break label282;
    }
  }
  
  public void setFilterConfig(FilterConfig paramFilterConfig)
  {
    try
    {
      init(paramFilterConfig);
      return;
    }
    catch (Exception paramFilterConfig)
    {
      paramFilterConfig.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     jcifs.http.NtlmHttpFilter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */