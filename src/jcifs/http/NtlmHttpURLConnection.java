package jcifs.http;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Authenticator;
import java.net.HttpURLConnection;
import java.net.PasswordAuthentication;
import java.net.URL;
import java.net.URLDecoder;
import java.security.Permission;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import jcifs.Config;
import jcifs.ntlmssp.NtlmMessage;
import jcifs.ntlmssp.Type1Message;
import jcifs.ntlmssp.Type2Message;
import jcifs.ntlmssp.Type3Message;
import jcifs.util.Base64;

public class NtlmHttpURLConnection
  extends HttpURLConnection
{
  private static final String DEFAULT_DOMAIN;
  private static final int LM_COMPATIBILITY;
  private static final int MAX_REDIRECTS = Integer.parseInt(System.getProperty("http.maxRedirects", "20"));
  private String authMethod;
  private String authProperty;
  private ByteArrayOutputStream cachedOutput;
  private HttpURLConnection connection;
  private boolean handshakeComplete;
  private Map headerFields;
  private Map requestProperties;
  
  static
  {
    LM_COMPATIBILITY = Config.getInt("jcifs.smb.lmCompatibility", 0);
    String str2 = System.getProperty("http.auth.ntlm.domain");
    String str1 = str2;
    if (str2 == null) {
      str1 = Type3Message.getDefaultDomain();
    }
    DEFAULT_DOMAIN = str1;
  }
  
  public NtlmHttpURLConnection(HttpURLConnection paramHttpURLConnection)
  {
    super(paramHttpURLConnection.getURL());
    connection = paramHttpURLConnection;
    requestProperties = new HashMap();
  }
  
  private NtlmMessage attemptNegotiation(int paramInt)
  {
    authProperty = null;
    authMethod = null;
    Object localObject1 = connection.getErrorStream();
    Object localObject2;
    if ((localObject1 != null) && (((InputStream)localObject1).available() != 0))
    {
      localObject2 = new byte['Ѐ'];
      while (((InputStream)localObject1).read((byte[])localObject2, 0, 1024) != -1) {}
    }
    if (paramInt == 401)
    {
      localObject1 = "WWW-Authenticate";
      authProperty = "Authorization";
      localObject1 = (List)getHeaderFields0().get(localObject1);
      if (localObject1 != null) {
        break label98;
      }
    }
    label98:
    label152:
    label315:
    label372:
    label603:
    for (;;)
    {
      return null;
      localObject1 = "Proxy-Authenticate";
      authProperty = "Proxy-Authorization";
      break;
      localObject1 = ((List)localObject1).iterator();
      if (((Iterator)localObject1).hasNext())
      {
        localObject2 = (String)((Iterator)localObject1).next();
        if (((String)localObject2).startsWith("NTLM")) {
          if (((String)localObject2).length() == 4)
          {
            authMethod = "NTLM";
            localObject1 = null;
          }
        }
      }
      for (;;)
      {
        if (authMethod == null) {
          break label603;
        }
        if (localObject1 != null) {}
        for (Type2Message localType2Message = new Type2Message(Base64.decode((String)localObject1));; localType2Message = null)
        {
          reconnect();
          if (localType2Message != null) {
            break label315;
          }
          localObject2 = new Type1Message();
          localObject1 = localObject2;
          if (LM_COMPATIBILITY > 2)
          {
            ((NtlmMessage)localObject2).setFlag(4, true);
            localObject1 = localObject2;
          }
          return (NtlmMessage)localObject1;
          if (((String)localObject2).indexOf(' ') != 4) {
            break;
          }
          authMethod = "NTLM";
          localObject1 = ((String)localObject2).substring(5).trim();
          break label152;
          if (!((String)localObject2).startsWith("Negotiate")) {
            break;
          }
          if (((String)localObject2).length() == 9)
          {
            authMethod = "Negotiate";
            localObject1 = null;
            break label152;
          }
          if (((String)localObject2).indexOf(' ') != 9) {
            break;
          }
          authMethod = "Negotiate";
          localObject1 = ((String)localObject2).substring(10).trim();
          break label152;
        }
        String str = DEFAULT_DOMAIN;
        localObject2 = Type3Message.getDefaultUser();
        localObject1 = Type3Message.getDefaultPassword();
        Object localObject3 = url.getUserInfo();
        int i;
        if (localObject3 != null)
        {
          localObject3 = URLDecoder.decode((String)localObject3);
          paramInt = ((String)localObject3).indexOf(':');
          if (paramInt != -1)
          {
            localObject2 = ((String)localObject3).substring(0, paramInt);
            if (paramInt != -1) {
              localObject1 = ((String)localObject3).substring(paramInt + 1);
            }
            i = ((String)localObject2).indexOf('\\');
            paramInt = i;
            if (i == -1) {
              paramInt = ((String)localObject2).indexOf('/');
            }
            if (paramInt != -1) {
              str = ((String)localObject2).substring(0, paramInt);
            }
            localObject3 = localObject2;
            if (paramInt != -1) {
              localObject3 = ((String)localObject2).substring(paramInt + 1);
            }
            localObject2 = localObject3;
          }
        }
        for (;;)
        {
          if (localObject2 == null) {
            if (!allowUserInteraction) {
              break;
            }
          }
          for (;;)
          {
            try
            {
              localObject3 = getURL();
              localObject4 = ((URL)localObject3).getProtocol();
              i = ((URL)localObject3).getPort();
              paramInt = i;
              if (i == -1)
              {
                if ("https".equalsIgnoreCase((String)localObject4)) {
                  paramInt = 443;
                }
              }
              else
              {
                localObject4 = Authenticator.requestPasswordAuthentication(null, paramInt, (String)localObject4, "", authMethod);
                if (localObject4 == null) {
                  break;
                }
                localObject3 = ((PasswordAuthentication)localObject4).getUserName();
                localObject2 = localObject3;
              }
            }
            catch (Exception localException1)
            {
              Object localObject4;
              continue;
            }
            try
            {
              localObject3 = new String(((PasswordAuthentication)localObject4).getPassword());
              localObject1 = localObject3;
              localObject1 = new Type3Message((Type2Message)localType2Message, (String)localObject1, str, (String)localObject2, Type3Message.getDefaultWorkstation(), 0);
            }
            catch (Exception localException2)
            {
              continue;
            }
            localObject2 = localObject3;
            break label372;
            paramInt = 80;
          }
        }
        localObject1 = null;
      }
    }
  }
  
  private void doHandshake()
  {
    connect();
    try
    {
      int i = parseResponseCode();
      if ((i != 401) && (i != 407)) {
        return;
      }
      Type1Message localType1Message = (Type1Message)attemptNegotiation(i);
      if (localType1Message == null) {
        return;
      }
      i = 0;
      while (i < MAX_REDIRECTS)
      {
        connection.setRequestProperty(authProperty, authMethod + ' ' + Base64.encode(localType1Message.toByteArray()));
        connection.connect();
        int j = parseResponseCode();
        if ((j != 401) && (j != 407)) {
          return;
        }
        Object localObject2 = (Type3Message)attemptNegotiation(j);
        if (localObject2 == null) {
          return;
        }
        connection.setRequestProperty(authProperty, authMethod + ' ' + Base64.encode(((Type3Message)localObject2).toByteArray()));
        connection.connect();
        if ((cachedOutput != null) && (doOutput))
        {
          localObject2 = connection.getOutputStream();
          cachedOutput.writeTo((OutputStream)localObject2);
          ((OutputStream)localObject2).flush();
        }
        j = parseResponseCode();
        if ((j != 401) && (j != 407)) {
          return;
        }
        i += 1;
        if ((!allowUserInteraction) || (i >= MAX_REDIRECTS)) {
          break;
        }
        reconnect();
      }
      throw new IOException("Unable to negotiate NTLM authentication.");
    }
    finally
    {
      cachedOutput = null;
    }
  }
  
  private Map getHeaderFields0()
  {
    if (headerFields != null) {
      return headerFields;
    }
    HashMap localHashMap = new HashMap();
    Object localObject2 = connection.getHeaderFieldKey(0);
    Object localObject1 = connection.getHeaderField(0);
    int i = 1;
    while ((localObject2 != null) || (localObject1 != null))
    {
      List localList = (List)localHashMap.get(localObject2);
      Object localObject3 = localList;
      if (localList == null)
      {
        localObject3 = new ArrayList();
        localHashMap.put(localObject2, localObject3);
      }
      ((List)localObject3).add(localObject1);
      localObject2 = connection.getHeaderFieldKey(i);
      localObject1 = connection.getHeaderField(i);
      i += 1;
    }
    localObject1 = localHashMap.entrySet().iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (Map.Entry)((Iterator)localObject1).next();
      ((Map.Entry)localObject2).setValue(Collections.unmodifiableList((List)((Map.Entry)localObject2).getValue()));
    }
    localObject1 = Collections.unmodifiableMap(localHashMap);
    headerFields = ((Map)localObject1);
    return (Map)localObject1;
  }
  
  private void handshake()
  {
    if (handshakeComplete) {
      return;
    }
    doHandshake();
    handshakeComplete = true;
  }
  
  private int parseResponseCode()
  {
    try
    {
      String str = connection.getHeaderField(0);
      int i = str.indexOf(' ');
      while (str.charAt(i) == ' ') {
        i += 1;
      }
      i = Integer.parseInt(str.substring(i, i + 3));
      return i;
    }
    catch (Exception localException)
    {
      throw new IOException(localException.getMessage());
    }
  }
  
  private void reconnect()
  {
    connection = ((HttpURLConnection)connection.getURL().openConnection());
    connection.setRequestMethod(method);
    headerFields = null;
    Iterator localIterator = requestProperties.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (Map.Entry)localIterator.next();
      String str = (String)((Map.Entry)localObject).getKey();
      StringBuffer localStringBuffer = new StringBuffer();
      localObject = ((List)((Map.Entry)localObject).getValue()).iterator();
      while (((Iterator)localObject).hasNext())
      {
        localStringBuffer.append(((Iterator)localObject).next());
        if (((Iterator)localObject).hasNext()) {
          localStringBuffer.append(", ");
        }
      }
      connection.setRequestProperty(str, localStringBuffer.toString());
    }
    connection.setAllowUserInteraction(allowUserInteraction);
    connection.setDoInput(doInput);
    connection.setDoOutput(doOutput);
    connection.setIfModifiedSince(ifModifiedSince);
    connection.setUseCaches(useCaches);
  }
  
  public void addRequestProperty(String paramString1, String paramString2)
  {
    if (paramString1 == null) {
      throw new NullPointerException();
    }
    Object localObject1 = requestProperties.entrySet().iterator();
    Object localObject2;
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (Map.Entry)((Iterator)localObject1).next();
      if (paramString1.equalsIgnoreCase((String)((Map.Entry)localObject2).getKey()))
      {
        localObject1 = (List)((Map.Entry)localObject2).getValue();
        ((List)localObject1).add(paramString2);
      }
    }
    for (;;)
    {
      localObject2 = localObject1;
      if (localObject1 == null)
      {
        localObject2 = new ArrayList();
        ((List)localObject2).add(paramString2);
        requestProperties.put(paramString1, localObject2);
      }
      paramString2 = new StringBuffer();
      localObject1 = ((List)localObject2).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        paramString2.append(((Iterator)localObject1).next());
        if (((Iterator)localObject1).hasNext()) {
          paramString2.append(", ");
        }
      }
      connection.setRequestProperty(paramString1, paramString2.toString());
      return;
      localObject1 = null;
    }
  }
  
  public void connect()
  {
    if (connected) {
      return;
    }
    connection.connect();
    connected = true;
  }
  
  public void disconnect()
  {
    connection.disconnect();
    handshakeComplete = false;
    connected = false;
  }
  
  public boolean getAllowUserInteraction()
  {
    return connection.getAllowUserInteraction();
  }
  
  public Object getContent()
  {
    try
    {
      handshake();
      return connection.getContent();
    }
    catch (IOException localIOException)
    {
      for (;;) {}
    }
  }
  
  public Object getContent(Class[] paramArrayOfClass)
  {
    try
    {
      handshake();
      return connection.getContent(paramArrayOfClass);
    }
    catch (IOException localIOException)
    {
      for (;;) {}
    }
  }
  
  public String getContentEncoding()
  {
    try
    {
      handshake();
      return connection.getContentEncoding();
    }
    catch (IOException localIOException)
    {
      for (;;) {}
    }
  }
  
  public int getContentLength()
  {
    try
    {
      handshake();
      return connection.getContentLength();
    }
    catch (IOException localIOException)
    {
      for (;;) {}
    }
  }
  
  public String getContentType()
  {
    try
    {
      handshake();
      return connection.getContentType();
    }
    catch (IOException localIOException)
    {
      for (;;) {}
    }
  }
  
  public long getDate()
  {
    try
    {
      handshake();
      return connection.getDate();
    }
    catch (IOException localIOException)
    {
      for (;;) {}
    }
  }
  
  public boolean getDefaultUseCaches()
  {
    return connection.getDefaultUseCaches();
  }
  
  public boolean getDoInput()
  {
    return connection.getDoInput();
  }
  
  public boolean getDoOutput()
  {
    return connection.getDoOutput();
  }
  
  public InputStream getErrorStream()
  {
    try
    {
      handshake();
      return connection.getErrorStream();
    }
    catch (IOException localIOException)
    {
      for (;;) {}
    }
  }
  
  public long getExpiration()
  {
    try
    {
      handshake();
      return connection.getExpiration();
    }
    catch (IOException localIOException)
    {
      for (;;) {}
    }
  }
  
  public String getHeaderField(int paramInt)
  {
    try
    {
      handshake();
      return connection.getHeaderField(paramInt);
    }
    catch (IOException localIOException)
    {
      for (;;) {}
    }
  }
  
  public String getHeaderField(String paramString)
  {
    try
    {
      handshake();
      return connection.getHeaderField(paramString);
    }
    catch (IOException localIOException)
    {
      for (;;) {}
    }
  }
  
  public long getHeaderFieldDate(String paramString, long paramLong)
  {
    try
    {
      handshake();
      return connection.getHeaderFieldDate(paramString, paramLong);
    }
    catch (IOException localIOException)
    {
      for (;;) {}
    }
  }
  
  public int getHeaderFieldInt(String paramString, int paramInt)
  {
    try
    {
      handshake();
      return connection.getHeaderFieldInt(paramString, paramInt);
    }
    catch (IOException localIOException)
    {
      for (;;) {}
    }
  }
  
  public String getHeaderFieldKey(int paramInt)
  {
    try
    {
      handshake();
      return connection.getHeaderFieldKey(paramInt);
    }
    catch (IOException localIOException)
    {
      for (;;) {}
    }
  }
  
  public Map getHeaderFields()
  {
    if (headerFields != null) {
      return headerFields;
    }
    try
    {
      handshake();
      return getHeaderFields0();
    }
    catch (IOException localIOException)
    {
      for (;;) {}
    }
  }
  
  public long getIfModifiedSince()
  {
    return connection.getIfModifiedSince();
  }
  
  public InputStream getInputStream()
  {
    try
    {
      handshake();
      return connection.getInputStream();
    }
    catch (IOException localIOException)
    {
      for (;;) {}
    }
  }
  
  public boolean getInstanceFollowRedirects()
  {
    return connection.getInstanceFollowRedirects();
  }
  
  public long getLastModified()
  {
    try
    {
      handshake();
      return connection.getLastModified();
    }
    catch (IOException localIOException)
    {
      for (;;) {}
    }
  }
  
  public OutputStream getOutputStream()
  {
    try
    {
      connect();
      OutputStream localOutputStream = connection.getOutputStream();
      cachedOutput = new ByteArrayOutputStream();
      return new NtlmHttpURLConnection.CacheStream(localOutputStream, cachedOutput);
    }
    catch (IOException localIOException)
    {
      for (;;) {}
    }
  }
  
  public Permission getPermission()
  {
    return connection.getPermission();
  }
  
  public String getRequestMethod()
  {
    return connection.getRequestMethod();
  }
  
  public Map getRequestProperties()
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = requestProperties.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localHashMap.put(localEntry.getKey(), Collections.unmodifiableList((List)localEntry.getValue()));
    }
    return Collections.unmodifiableMap(localHashMap);
  }
  
  public String getRequestProperty(String paramString)
  {
    return connection.getRequestProperty(paramString);
  }
  
  public int getResponseCode()
  {
    try
    {
      handshake();
      return connection.getResponseCode();
    }
    catch (IOException localIOException)
    {
      for (;;) {}
    }
  }
  
  public String getResponseMessage()
  {
    try
    {
      handshake();
      return connection.getResponseMessage();
    }
    catch (IOException localIOException)
    {
      for (;;) {}
    }
  }
  
  public URL getURL()
  {
    return connection.getURL();
  }
  
  public boolean getUseCaches()
  {
    return connection.getUseCaches();
  }
  
  public void setAllowUserInteraction(boolean paramBoolean)
  {
    connection.setAllowUserInteraction(paramBoolean);
    allowUserInteraction = paramBoolean;
  }
  
  public void setDefaultUseCaches(boolean paramBoolean)
  {
    connection.setDefaultUseCaches(paramBoolean);
  }
  
  public void setDoInput(boolean paramBoolean)
  {
    connection.setDoInput(paramBoolean);
    doInput = paramBoolean;
  }
  
  public void setDoOutput(boolean paramBoolean)
  {
    connection.setDoOutput(paramBoolean);
    doOutput = paramBoolean;
  }
  
  public void setIfModifiedSince(long paramLong)
  {
    connection.setIfModifiedSince(paramLong);
    ifModifiedSince = paramLong;
  }
  
  public void setInstanceFollowRedirects(boolean paramBoolean)
  {
    connection.setInstanceFollowRedirects(paramBoolean);
  }
  
  public void setRequestMethod(String paramString)
  {
    connection.setRequestMethod(paramString);
    method = paramString;
  }
  
  public void setRequestProperty(String paramString1, String paramString2)
  {
    if (paramString1 == null) {
      throw new NullPointerException();
    }
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramString2);
    Iterator localIterator = requestProperties.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      if (paramString1.equalsIgnoreCase((String)localEntry.getKey())) {
        localEntry.setValue(localArrayList);
      }
    }
    for (int i = 1;; i = 0)
    {
      if (i == 0) {
        requestProperties.put(paramString1, localArrayList);
      }
      connection.setRequestProperty(paramString1, paramString2);
      return;
    }
  }
  
  public void setUseCaches(boolean paramBoolean)
  {
    connection.setUseCaches(paramBoolean);
    useCaches = paramBoolean;
  }
  
  public String toString()
  {
    return connection.toString();
  }
  
  public boolean usingProxy()
  {
    return connection.usingProxy();
  }
}

/* Location:
 * Qualified Name:     jcifs.http.NtlmHttpURLConnection
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */