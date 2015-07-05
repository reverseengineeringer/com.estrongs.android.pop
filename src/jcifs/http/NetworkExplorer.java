package jcifs.http;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;
import java.util.GregorianCalendar;
import java.util.LinkedList;
import java.util.ListIterator;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import jcifs.Config;
import jcifs.UniAddress;
import jcifs.netbios.NbtAddress;
import jcifs.smb.DfsReferral;
import jcifs.smb.NtlmPasswordAuthentication;
import jcifs.smb.SmbAuthException;
import jcifs.smb.SmbException;
import jcifs.smb.SmbFile;
import jcifs.smb.SmbFileInputStream;
import jcifs.smb.SmbSession;
import jcifs.util.Base64;
import jcifs.util.LogStream;
import jcifs.util.MimeMap;

public class NetworkExplorer
  extends HttpServlet
{
  private static LogStream log = ;
  private boolean credentialsSupplied;
  private String defaultDomain;
  private boolean enableBasic;
  private boolean insecureBasic;
  private MimeMap mimeMap;
  private NtlmSsp ntlmSsp;
  private String realm;
  private String style;
  
  private String parseServerAndShare(String paramString)
  {
    char[] arrayOfChar = new char['Ā'];
    if (paramString == null) {}
    int i1;
    int k;
    do
    {
      return null;
      i1 = paramString.length();
      k = 0;
      while ((k < i1) && (paramString.charAt(k) == '/')) {
        k += 1;
      }
    } while (k == i1);
    int j = 0;
    int m;
    int i;
    for (;;)
    {
      m = k;
      if (k >= i1) {
        break;
      }
      i = paramString.charAt(k);
      m = k;
      if (i == 47) {
        break;
      }
      arrayOfChar[j] = i;
      k += 1;
      j += 1;
    }
    while ((m < i1) && (paramString.charAt(m) == '/')) {
      m += 1;
    }
    int n;
    if (m < i1)
    {
      n = j + 1;
      arrayOfChar[j] = '/';
      k = m;
      j = n;
      m = j + 1;
      n = k + 1;
      i = paramString.charAt(k);
      arrayOfChar[j] = i;
      j = m;
      if (n < i1)
      {
        if (i != 47) {
          break label210;
        }
        j = m;
      }
    }
    for (;;)
    {
      return new String(arrayOfChar, 0, j);
      label210:
      j = m;
      k = n;
      break;
    }
  }
  
  protected int compareDates(SmbFile paramSmbFile1, String paramString, SmbFile paramSmbFile2)
  {
    if (paramSmbFile1.isDirectory() != paramSmbFile2.isDirectory()) {
      if (!paramSmbFile1.isDirectory()) {}
    }
    do
    {
      return -1;
      return 1;
      if (paramSmbFile1.isDirectory()) {
        return paramString.compareToIgnoreCase(paramSmbFile2.getName());
      }
    } while (paramSmbFile1.lastModified() > paramSmbFile2.lastModified());
    return 1;
  }
  
  protected int compareNames(SmbFile paramSmbFile1, String paramString, SmbFile paramSmbFile2)
  {
    if (paramSmbFile1.isDirectory() != paramSmbFile2.isDirectory())
    {
      if (paramSmbFile1.isDirectory()) {
        return -1;
      }
      return 1;
    }
    return paramString.compareToIgnoreCase(paramSmbFile2.getName());
  }
  
  protected int compareSizes(SmbFile paramSmbFile1, String paramString, SmbFile paramSmbFile2)
  {
    if (paramSmbFile1.isDirectory() != paramSmbFile2.isDirectory()) {
      if (!paramSmbFile1.isDirectory()) {}
    }
    long l;
    do
    {
      return -1;
      return 1;
      if (paramSmbFile1.isDirectory()) {
        return paramString.compareToIgnoreCase(paramSmbFile2.getName());
      }
      l = paramSmbFile1.length() - paramSmbFile2.length();
      if (l == 0L) {
        return paramString.compareToIgnoreCase(paramSmbFile2.getName());
      }
    } while (l > 0L);
    return 1;
  }
  
  protected int compareTypes(SmbFile paramSmbFile1, String paramString, SmbFile paramSmbFile2)
  {
    int i = -1;
    if (paramSmbFile1.isDirectory() != paramSmbFile2.isDirectory())
    {
      if (paramSmbFile1.isDirectory()) {
        return i;
      }
      return 1;
    }
    String str = paramSmbFile2.getName();
    if (paramSmbFile1.isDirectory()) {
      return paramString.compareToIgnoreCase(str);
    }
    i = paramString.lastIndexOf('.');
    if (i == -1)
    {
      paramSmbFile1 = "";
      label63:
      i = str.lastIndexOf('.');
      if (i != -1) {
        break label116;
      }
    }
    label116:
    for (paramSmbFile2 = "";; paramSmbFile2 = str.substring(i + 1))
    {
      int j = paramSmbFile1.compareToIgnoreCase(paramSmbFile2);
      i = j;
      if (j != 0) {
        break;
      }
      return paramString.compareToIgnoreCase(str);
      paramSmbFile1 = paramString.substring(i + 1);
      break label63;
    }
  }
  
  protected void doDirectory(HttpServletRequest paramHttpServletRequest, HttpServletResponse paramHttpServletResponse, SmbFile paramSmbFile)
  {
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("MM/d/yy h:mm a");
    localSimpleDateFormat.setCalendar(new GregorianCalendar());
    SmbFile[] arrayOfSmbFile = paramSmbFile.listFiles();
    Object localObject1 = log;
    if (LogStream.level > 2) {
      log.println(arrayOfSmbFile.length + " items listed");
    }
    Object localObject2 = new LinkedList();
    localObject1 = paramHttpServletRequest.getParameter("fmt");
    if (localObject1 == null) {
      localObject1 = "col";
    }
    for (;;)
    {
      paramHttpServletRequest = paramHttpServletRequest.getParameter("sort");
      int i;
      if ((paramHttpServletRequest == null) || (paramHttpServletRequest.equals("name"))) {
        i = 0;
      }
      for (;;)
      {
        int k = 0;
        int i1 = 0;
        int j = 28;
        int m = 0;
        for (;;)
        {
          if (i1 < arrayOfSmbFile.length)
          {
            int n;
            try
            {
              n = arrayOfSmbFile[i1].getType();
              if (n != 16) {
                break label249;
              }
              n = j;
              j = k;
            }
            catch (SmbAuthException paramHttpServletRequest)
            {
              for (;;)
              {
                localObject3 = log;
                if (LogStream.level > 2) {
                  paramHttpServletRequest.printStackTrace(log);
                }
                if (!arrayOfSmbFile[i1].isDirectory()) {
                  break;
                }
                m += 1;
                n = k;
                paramHttpServletRequest = arrayOfSmbFile[i1].getName();
                localObject3 = log;
                if (LogStream.level > 3) {
                  log.println(i1 + ": " + paramHttpServletRequest);
                }
                i2 = paramHttpServletRequest.length();
                k = j;
                if (i2 > j) {
                  k = i2;
                }
                localObject3 = ((LinkedList)localObject2).listIterator();
                j = 0;
                if (((ListIterator)localObject3).hasNext())
                {
                  if (i != 0) {
                    break label453;
                  }
                  if (compareNames(arrayOfSmbFile[i1], paramHttpServletRequest, (SmbFile)((ListIterator)localObject3).next()) >= 0) {
                    break label482;
                  }
                }
                ((LinkedList)localObject2).add(j, arrayOfSmbFile[i1]);
                j = n;
                n = k;
              }
            }
            catch (SmbException paramHttpServletRequest)
            {
              do
              {
                localObject3 = log;
                if (LogStream.level > 2) {
                  paramHttpServletRequest.printStackTrace(log);
                }
              } while (paramHttpServletRequest.getNtStatus() == -1073741823);
              throw paramHttpServletRequest;
            }
            i1 += 1;
            k = j;
            j = n;
            continue;
            if (paramHttpServletRequest.equals("size"))
            {
              i = 1;
              break;
            }
            if (paramHttpServletRequest.equals("type"))
            {
              i = 2;
              break;
            }
            if (!paramHttpServletRequest.equals("date")) {
              break label1454;
            }
            i = 3;
            break;
            for (;;)
            {
              label249:
              int i2;
              label390:
              n = k + 1;
              continue;
              label453:
              if (i == 1)
              {
                if (compareSizes(arrayOfSmbFile[i1], paramHttpServletRequest, (SmbFile)((ListIterator)localObject3).next()) < 0) {}
              }
              else {
                label482:
                label523:
                do
                {
                  do
                  {
                    j += 1;
                    break;
                    if (i != 2) {
                      break label523;
                    }
                  } while (compareTypes(arrayOfSmbFile[i1], paramHttpServletRequest, (SmbFile)((ListIterator)localObject3).next()) >= 0);
                  break label390;
                } while ((i != 3) || (compareDates(arrayOfSmbFile[i1], paramHttpServletRequest, (SmbFile)((ListIterator)localObject3).next()) >= 0));
              }
            }
          }
        }
        i = j;
        if (j > 50) {
          i = 50;
        }
        i *= 9;
        Object localObject3 = paramHttpServletResponse.getWriter();
        paramHttpServletResponse.setContentType("text/html");
        ((PrintWriter)localObject3).println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
        ((PrintWriter)localObject3).println("<html><head><title>Network Explorer</title>");
        ((PrintWriter)localObject3).println("<meta HTTP-EQUIV=\"Pragma\" CONTENT=\"no-cache\">");
        ((PrintWriter)localObject3).println("<style TYPE=\"text/css\">");
        ((PrintWriter)localObject3).println(style);
        if (arrayOfSmbFile.length < 200)
        {
          ((PrintWriter)localObject3).println("    a:hover {");
          ((PrintWriter)localObject3).println("        background: #a2ff01;");
          ((PrintWriter)localObject3).println("    }");
        }
        ((PrintWriter)localObject3).println("</STYLE>");
        ((PrintWriter)localObject3).println("</head><body>");
        ((PrintWriter)localObject3).print("<a class=\"sort\" style=\"width: " + i + ";\" href=\"?fmt=detail&sort=name\">Name</a>");
        ((PrintWriter)localObject3).println("<a class=\"sort\" href=\"?fmt=detail&sort=size\">Size</a>");
        ((PrintWriter)localObject3).println("<a class=\"sort\" href=\"?fmt=detail&sort=type\">Type</a>");
        ((PrintWriter)localObject3).println("<a class=\"sort\" style=\"width: 180\" href=\"?fmt=detail&sort=date\">Modified</a><br clear='all'><p>");
        paramHttpServletRequest = paramSmbFile.getCanonicalPath();
        if (paramHttpServletRequest.length() < 7)
        {
          ((PrintWriter)localObject3).println("<b><big>smb://</big></b><br>");
          paramHttpServletRequest = ".";
          ((PrintWriter)localObject3).println(m + k + " objects (" + m + " directories, " + k + " files)<br>");
          ((PrintWriter)localObject3).println("<b><a class=\"plain\" href=\".\">normal</a> | <a class=\"plain\" href=\"?fmt=detail\">detailed</a></b>");
          ((PrintWriter)localObject3).println("<p><table border='0' cellspacing='0' cellpadding='0'><tr><td>");
          ((PrintWriter)localObject3).print("<A style=\"width: " + i);
          ((PrintWriter)localObject3).print("; height: 18;\" HREF=\"");
          ((PrintWriter)localObject3).print(paramHttpServletRequest);
          ((PrintWriter)localObject3).println("\"><b>&uarr;</b></a>");
          if (((String)localObject1).equals("detail")) {
            ((PrintWriter)localObject3).println("<br clear='all'>");
          }
          if ((paramHttpServletRequest.length() == 1) || (paramSmbFile.getType() != 2)) {
            paramHttpServletRequest = "";
          }
          paramHttpServletResponse = ((LinkedList)localObject2).listIterator();
        }
        for (;;)
        {
          if (!paramHttpServletResponse.hasNext()) {
            break label1432;
          }
          paramSmbFile = (SmbFile)paramHttpServletResponse.next();
          localObject2 = paramSmbFile.getName();
          if (((String)localObject1).equals("detail"))
          {
            ((PrintWriter)localObject3).print("<A style=\"width: " + i);
            ((PrintWriter)localObject3).print("; height: 18;\" HREF=\"");
            ((PrintWriter)localObject3).print(paramHttpServletRequest);
            ((PrintWriter)localObject3).print((String)localObject2);
            if (paramSmbFile.isDirectory())
            {
              ((PrintWriter)localObject3).print("?fmt=detail\"><b>");
              ((PrintWriter)localObject3).print((String)localObject2);
              ((PrintWriter)localObject3).print("</b></a>");
              ((PrintWriter)localObject3).println("<br clear='all'>");
              continue;
              ((PrintWriter)localObject3).println("<b><big>" + paramHttpServletRequest + "</big></b><br>");
              paramHttpServletRequest = "../";
              break;
            }
            ((PrintWriter)localObject3).print("\"><b>");
            ((PrintWriter)localObject3).print((String)localObject2);
            ((PrintWriter)localObject3).print("</b></a><div align='right'>");
            ((PrintWriter)localObject3).print(paramSmbFile.length() / 1024L + " KB </div><div>");
            j = ((String)localObject2).lastIndexOf('.') + 1;
            if ((j > 1) && (((String)localObject2).length() - j < 6)) {
              ((PrintWriter)localObject3).print(((String)localObject2).substring(j).toUpperCase() + "</div class='ext'>");
            }
            for (;;)
            {
              ((PrintWriter)localObject3).print("<div style='width: 180'>");
              ((PrintWriter)localObject3).print(localSimpleDateFormat.format(new Date(paramSmbFile.lastModified())));
              ((PrintWriter)localObject3).print("</div>");
              break;
              ((PrintWriter)localObject3).print("&nbsp;</div>");
            }
          }
          ((PrintWriter)localObject3).print("<A style=\"width: " + i);
          if (paramSmbFile.isDirectory())
          {
            ((PrintWriter)localObject3).print("; height: 18;\" HREF=\"");
            ((PrintWriter)localObject3).print(paramHttpServletRequest);
            ((PrintWriter)localObject3).print((String)localObject2);
            ((PrintWriter)localObject3).print("\"><b>");
            ((PrintWriter)localObject3).print((String)localObject2);
            ((PrintWriter)localObject3).print("</b></a>");
          }
          else
          {
            ((PrintWriter)localObject3).print(";\" HREF=\"");
            ((PrintWriter)localObject3).print(paramHttpServletRequest);
            ((PrintWriter)localObject3).print((String)localObject2);
            ((PrintWriter)localObject3).print("\"><b>");
            ((PrintWriter)localObject3).print((String)localObject2);
            ((PrintWriter)localObject3).print("</b><br><small>");
            ((PrintWriter)localObject3).print(paramSmbFile.length() / 1024L + "KB <br>");
            ((PrintWriter)localObject3).print(localSimpleDateFormat.format(new Date(paramSmbFile.lastModified())));
            ((PrintWriter)localObject3).print("</small>");
            ((PrintWriter)localObject3).println("</a>");
          }
        }
        label1432:
        ((PrintWriter)localObject3).println("</td></tr></table>");
        ((PrintWriter)localObject3).println("</BODY></HTML>");
        ((PrintWriter)localObject3).close();
        return;
        label1454:
        i = 0;
      }
    }
  }
  
  protected void doFile(HttpServletRequest paramHttpServletRequest, HttpServletResponse paramHttpServletResponse, SmbFile paramSmbFile)
  {
    paramHttpServletRequest = new byte[' '];
    SmbFileInputStream localSmbFileInputStream = new SmbFileInputStream(paramSmbFile);
    ServletOutputStream localServletOutputStream = paramHttpServletResponse.getOutputStream();
    String str = paramSmbFile.getPath();
    paramHttpServletResponse.setContentType("text/plain");
    int i = str.lastIndexOf('.');
    if (i > 0)
    {
      str = str.substring(i + 1);
      if ((str != null) && (str.length() > 1) && (str.length() < 6)) {
        paramHttpServletResponse.setContentType(mimeMap.getMimeType(str));
      }
    }
    paramHttpServletResponse.setHeader("Content-Length", paramSmbFile.length() + "");
    paramHttpServletResponse.setHeader("Accept-Ranges", "Bytes");
    for (;;)
    {
      i = localSmbFileInputStream.read(paramHttpServletRequest);
      if (i == -1) {
        break;
      }
      localServletOutputStream.write(paramHttpServletRequest, 0, i);
    }
  }
  
  public void doGet(HttpServletRequest paramHttpServletRequest, HttpServletResponse paramHttpServletResponse)
  {
    Object localObject2 = null;
    HttpSession localHttpSession = paramHttpServletRequest.getSession(false);
    String str3 = paramHttpServletRequest.getPathInfo();
    String str1;
    int i;
    boolean bool;
    if (str3 != null)
    {
      str1 = parseServerAndShare(str3);
      if (str1 != null)
      {
        i = str1.indexOf('/');
        if (i > 0)
        {
          str1 = str1.substring(0, i).toLowerCase();
          bool = false;
        }
      }
    }
    for (;;)
    {
      Object localObject4 = paramHttpServletRequest.getHeader("Authorization");
      if ((enableBasic) && ((insecureBasic) || (paramHttpServletRequest.isSecure())))
      {
        i = 1;
        if ((localObject4 == null) || ((!((String)localObject4).startsWith("NTLM ")) && ((i == 0) || (!((String)localObject4).startsWith("Basic "))))) {
          break label528;
        }
        if (!((String)localObject4).startsWith("NTLM ")) {
          break label215;
        }
        if ((str3 != null) && (str1 != null)) {
          break label203;
        }
      }
      label203:
      for (localObject2 = UniAddress.getByName(NbtAddress.getByName("\001\002__MSBROWSE__\002", 1, null).getHostAddress());; localObject2 = UniAddress.getByName(str1, bool))
      {
        paramHttpServletRequest.getSession();
        localObject4 = NtlmSsp.authenticate(paramHttpServletRequest, paramHttpServletResponse, SmbSession.getChallenge((UniAddress)localObject2));
        localObject2 = localObject4;
        if (localObject4 != null) {
          break label355;
        }
        return;
        i = 0;
        break;
      }
      label215:
      localObject4 = new String(Base64.decode(((String)localObject4).substring(6)), "US-ASCII");
      int j = ((String)localObject4).indexOf(':');
      if (j != -1)
      {
        localObject2 = ((String)localObject4).substring(0, j);
        if (j == -1) {
          break label512;
        }
        localObject4 = ((String)localObject4).substring(j + 1);
        label279:
        j = ((String)localObject2).indexOf('\\');
        if (j != -1) {
          break label942;
        }
        j = ((String)localObject2).indexOf('/');
      }
      label319:
      label355:
      label389:
      label512:
      label528:
      label660:
      label842:
      label851:
      label933:
      label936:
      label942:
      for (;;)
      {
        String str2;
        if (j != -1)
        {
          str2 = ((String)localObject2).substring(0, j);
          Object localObject5 = localObject2;
          if (j != -1) {
            localObject5 = ((String)localObject2).substring(j + 1);
          }
          localObject2 = new NtlmPasswordAuthentication(str2, (String)localObject5, (String)localObject4);
          paramHttpServletRequest.getSession().setAttribute("npa-" + str1, localObject2);
          if (localObject2 == null) {
            break label660;
          }
        }
        for (;;)
        {
          try
          {
            localObject2 = new SmbFile("smb:/" + str3, (NtlmPasswordAuthentication)localObject2);
            if (!((SmbFile)localObject2).isDirectory()) {
              break label842;
            }
            doDirectory(paramHttpServletRequest, paramHttpServletResponse, (SmbFile)localObject2);
            return;
          }
          catch (SmbAuthException localSmbAuthException)
          {
            if (localHttpSession != null) {
              localHttpSession.removeAttribute("npa-" + str1);
            }
            if (localSmbAuthException.getNtStatus() != -1073741819) {
              break label851;
            }
            paramHttpServletResponse.sendRedirect(paramHttpServletRequest.getRequestURL().toString());
            return;
            localObject3 = localObject4;
            break;
            localObject4 = "";
            break label279;
            str2 = defaultDomain;
            break label319;
            if (credentialsSupplied) {
              break label389;
            }
            if (localHttpSession == null) {
              break label936;
            }
            localObject3 = (NtlmPasswordAuthentication)localHttpSession.getAttribute("npa-" + str1);
            if (localObject3 != null) {
              break label933;
            }
            paramHttpServletResponse.setHeader("WWW-Authenticate", "NTLM");
            if (i != 0) {
              paramHttpServletResponse.addHeader("WWW-Authenticate", "Basic realm=\"" + realm + "\"");
            }
            paramHttpServletResponse.setHeader("Connection", "close");
            paramHttpServletResponse.setStatus(401);
            paramHttpServletResponse.flushBuffer();
            return;
            if (str1 == null)
            {
              localObject3 = new SmbFile("smb://");
              continue;
            }
          }
          catch (DfsReferral localDfsReferral)
          {
            localObject4 = paramHttpServletRequest.getRequestURL();
            localObject3 = paramHttpServletRequest.getQueryString();
            localObject4 = new StringBuffer(((StringBuffer)localObject4).substring(0, ((StringBuffer)localObject4).length() - paramHttpServletRequest.getPathInfo().length()));
            ((StringBuffer)localObject4).append('/');
            ((StringBuffer)localObject4).append(server);
            ((StringBuffer)localObject4).append('/');
            ((StringBuffer)localObject4).append(share);
            ((StringBuffer)localObject4).append('/');
            if (localObject3 != null) {
              ((StringBuffer)localObject4).append(paramHttpServletRequest.getQueryString());
            }
            paramHttpServletResponse.sendRedirect(((StringBuffer)localObject4).toString());
            paramHttpServletResponse.flushBuffer();
            return;
          }
          Object localObject3 = new SmbFile("smb:/" + str3);
          continue;
          doFile(paramHttpServletRequest, paramHttpServletResponse, (SmbFile)localObject3);
          return;
          paramHttpServletResponse.setHeader("WWW-Authenticate", "NTLM");
          if (i != 0) {
            paramHttpServletResponse.addHeader("WWW-Authenticate", "Basic realm=\"" + realm + "\"");
          }
          paramHttpServletResponse.setHeader("Connection", "close");
          paramHttpServletResponse.setStatus(401);
          paramHttpServletResponse.flushBuffer();
          return;
          break label389;
          localObject3 = null;
        }
      }
      bool = true;
      continue;
      bool = true;
      Object localObject1 = null;
    }
  }
  
  public void init()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    byte[] arrayOfByte = new byte['Ѐ'];
    Config.setProperty("jcifs.smb.client.soTimeout", "600000");
    Config.setProperty("jcifs.smb.client.attrExpirationPeriod", "300000");
    Object localObject = getInitParameterNames();
    while (((Enumeration)localObject).hasMoreElements())
    {
      String str = (String)((Enumeration)localObject).nextElement();
      if (str.startsWith("jcifs.")) {
        Config.setProperty(str, getInitParameter(str));
      }
    }
    if (Config.getProperty("jcifs.smb.client.username") == null) {
      ntlmSsp = new NtlmSsp();
    }
    for (;;)
    {
      try
      {
        mimeMap = new MimeMap();
        localObject = getClass().getClassLoader().getResourceAsStream("jcifs/http/ne.css");
        i = ((InputStream)localObject).read(arrayOfByte);
        if (i == -1) {
          break;
        }
        localStringBuffer.append(new String(arrayOfByte, 0, i, "ISO8859_1"));
        continue;
        credentialsSupplied = true;
      }
      catch (IOException localIOException1)
      {
        throw new ServletException(localIOException1.getMessage());
      }
    }
    style = localIOException1.toString();
    enableBasic = Config.getBoolean("jcifs.http.enableBasic", false);
    insecureBasic = Config.getBoolean("jcifs.http.insecureBasic", false);
    realm = Config.getProperty("jcifs.http.basicRealm");
    if (realm == null) {
      realm = "jCIFS";
    }
    defaultDomain = Config.getProperty("jcifs.smb.client.domain");
    int i = Config.getInt("jcifs.util.loglevel", -1);
    if (i != -1) {
      LogStream.setLevel(i);
    }
    LogStream localLogStream = log;
    if (LogStream.level > 2) {}
    try
    {
      Config.store(log, "JCIFS PROPERTIES");
      return;
    }
    catch (IOException localIOException2) {}
  }
}

/* Location:
 * Qualified Name:     jcifs.http.NetworkExplorer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */