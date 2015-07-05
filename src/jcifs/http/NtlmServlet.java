package jcifs.http;

import java.util.Enumeration;
import javax.servlet.ServletConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import jcifs.Config;
import jcifs.UniAddress;
import jcifs.netbios.NbtAddress;
import jcifs.smb.NtlmPasswordAuthentication;
import jcifs.smb.SmbAuthException;
import jcifs.smb.SmbSession;
import jcifs.util.Base64;

public abstract class NtlmServlet
  extends HttpServlet
{
  private String defaultDomain;
  private String domainController;
  private boolean enableBasic;
  private boolean insecureBasic;
  private boolean loadBalance;
  private String realm;
  
  public void init(ServletConfig paramServletConfig)
  {
    super.init(paramServletConfig);
    Config.setProperty("jcifs.smb.client.soTimeout", "300000");
    Config.setProperty("jcifs.netbios.cachePolicy", "600");
    Enumeration localEnumeration = paramServletConfig.getInitParameterNames();
    while (localEnumeration.hasMoreElements())
    {
      String str = (String)localEnumeration.nextElement();
      if (str.startsWith("jcifs.")) {
        Config.setProperty(str, paramServletConfig.getInitParameter(str));
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
  }
  
  protected void service(HttpServletRequest paramHttpServletRequest, HttpServletResponse paramHttpServletResponse)
  {
    int i;
    Object localObject1;
    if ((enableBasic) && ((insecureBasic) || (paramHttpServletRequest.isSecure())))
    {
      i = 1;
      localObject1 = paramHttpServletRequest.getHeader("Authorization");
      if ((localObject1 == null) || ((!((String)localObject1).startsWith("NTLM ")) && ((i == 0) || (!((String)localObject1).startsWith("Basic "))))) {
        break label438;
      }
      if (!loadBalance) {
        break label127;
      }
    }
    label127:
    for (Object localObject2 = new UniAddress(NbtAddress.getByName(domainController, 28, null));; localObject2 = UniAddress.getByName(domainController, true))
    {
      if (!((String)localObject1).startsWith("NTLM ")) {
        break label140;
      }
      localObject3 = NtlmSsp.authenticate(paramHttpServletRequest, paramHttpServletResponse, SmbSession.getChallenge((UniAddress)localObject2));
      localObject1 = localObject3;
      if (localObject3 != null) {
        break label275;
      }
      return;
      i = 0;
      break;
    }
    label140:
    Object localObject3 = new String(Base64.decode(((String)localObject1).substring(6)), "US-ASCII");
    int j = ((String)localObject3).indexOf(':');
    if (j != -1)
    {
      localObject1 = ((String)localObject3).substring(0, j);
      if (j == -1) {
        break label343;
      }
      localObject3 = ((String)localObject3).substring(j + 1);
      label203:
      j = ((String)localObject1).indexOf('\\');
      if (j != -1) {
        break label529;
      }
      j = ((String)localObject1).indexOf('/');
    }
    label243:
    label260:
    label275:
    label343:
    label359:
    label412:
    label438:
    label529:
    for (;;)
    {
      String str;
      if (j != -1)
      {
        str = ((String)localObject1).substring(0, j);
        if (j == -1) {
          break label359;
        }
        localObject1 = ((String)localObject1).substring(j + 1);
        localObject1 = new NtlmPasswordAuthentication(str, (String)localObject1, (String)localObject3);
      }
      do
      {
        try
        {
          SmbSession.logon((UniAddress)localObject2, (NtlmPasswordAuthentication)localObject1);
          localObject2 = paramHttpServletRequest.getSession();
          ((HttpSession)localObject2).setAttribute("NtlmHttpAuth", localObject1);
          ((HttpSession)localObject2).setAttribute("ntlmdomain", ((NtlmPasswordAuthentication)localObject1).getDomain());
          ((HttpSession)localObject2).setAttribute("ntlmuser", ((NtlmPasswordAuthentication)localObject1).getUsername());
          super.service(paramHttpServletRequest, paramHttpServletResponse);
          return;
        }
        catch (SmbAuthException paramHttpServletRequest)
        {
          paramHttpServletResponse.setHeader("WWW-Authenticate", "NTLM");
          if (i == 0) {
            break label412;
          }
          paramHttpServletResponse.addHeader("WWW-Authenticate", "Basic realm=\"" + realm + "\"");
          paramHttpServletResponse.setHeader("Connection", "close");
          paramHttpServletResponse.setStatus(401);
          paramHttpServletResponse.flushBuffer();
          return;
        }
        localObject1 = localObject3;
        break;
        localObject3 = "";
        break label203;
        str = defaultDomain;
        break label243;
        break label260;
        localObject1 = paramHttpServletRequest.getSession(false);
      } while ((localObject1 != null) && (((HttpSession)localObject1).getAttribute("NtlmHttpAuth") != null));
      paramHttpServletResponse.setHeader("WWW-Authenticate", "NTLM");
      if (i != 0) {
        paramHttpServletResponse.addHeader("WWW-Authenticate", "Basic realm=\"" + realm + "\"");
      }
      paramHttpServletResponse.setStatus(401);
      paramHttpServletResponse.flushBuffer();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     jcifs.http.NtlmServlet
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */