package de.aflx.sardine;

import de.aflx.sardine.model.Prop;
import de.aflx.sardine.model.Propstat;
import de.aflx.sardine.model.Resourcetype;
import de.aflx.sardine.model.Response;
import de.aflx.sardine.util.Logger;
import de.aflx.sardine.util.QName;
import de.aflx.sardine.util.SardineUtil;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class DavResource
{
  public static final long DEFAULT_CONTENT_LENGTH = -1L;
  public static final String DEFAULT_CONTENT_TYPE = "application/octetstream";
  public static final String HTTPD_UNIX_DIRECTORY_CONTENT_TYPE = "httpd/unix-directory";
  private static final String SEPARATOR = "/";
  private static Logger log = new Logger();
  private final Long contentLength;
  private final String contentType;
  private final Date creation;
  private final Map<QName, String> customProps;
  private final String etag;
  private final URI href;
  private final Date modified;
  
  public DavResource(Response paramResponse)
  {
    try
    {
      URL localURL = new URL(paramResponse.getHref());
      if (localURL != null)
      {
        href = new URI(localURL.getProtocol(), localURL.getHost(), localURL.getPath(), localURL.getQuery(), null);
        creation = SardineUtil.parseDate(getCreationDate(paramResponse));
        modified = SardineUtil.parseDate(getModifiedDate(paramResponse));
        contentLength = Long.valueOf(getContentLength(paramResponse));
        contentType = getContentType(paramResponse);
        etag = getEtag(paramResponse);
        customProps = getCustomProps(paramResponse);
        return;
      }
    }
    catch (MalformedURLException localMalformedURLException)
    {
      for (;;)
      {
        localMalformedURLException.printStackTrace();
        Object localObject = null;
        continue;
        href = new URI(paramResponse.getHref());
      }
    }
  }
  
  protected DavResource(String paramString1, Date paramDate1, Date paramDate2, String paramString2, Long paramLong, String paramString3, Map<QName, String> paramMap)
  {
    href = new URI(paramString1);
    creation = paramDate1;
    modified = paramDate2;
    contentType = paramString2;
    contentLength = paramLong;
    etag = paramString3;
    customProps = paramMap;
  }
  
  private long getContentLength(Response paramResponse)
  {
    paramResponse = paramResponse.getPropstat();
    if ((paramResponse.equals("")) || (paramResponse == null)) {
      return -1L;
    }
    paramResponse = paramResponse.getProp().getGetcontentlength();
    try
    {
      long l = Long.parseLong(paramResponse);
      return l;
    }
    catch (Exception paramResponse) {}
    return -1L;
  }
  
  private String getContentType(Response paramResponse)
  {
    paramResponse = paramResponse.getPropstat();
    if ((paramResponse.equals("")) || (paramResponse == null)) {
      paramResponse = null;
    }
    Resourcetype localResourcetype;
    do
    {
      String str;
      do
      {
        return paramResponse;
        str = paramResponse.getProp().getGetcontenttype();
        if (str == null)
        {
          if ((getHref().toString().endsWith("/")) || (contentLength.longValue() == -1L)) {
            return "httpd/unix-directory";
          }
          paramResponse = paramResponse.getProp().getResourcetype();
          if ((paramResponse != null) && (paramResponse.getCollection() != null)) {
            return "httpd/unix-directory";
          }
          return "application/octetstream";
        }
        localResourcetype = paramResponse.getProp().getResourcetype();
        paramResponse = str;
      } while (localResourcetype == null);
      paramResponse = str;
    } while (localResourcetype.getCollection() == null);
    return "httpd/unix-directory";
  }
  
  private String getCreationDate(Response paramResponse)
  {
    paramResponse = paramResponse.getPropstat();
    if ((paramResponse.equals("")) || (paramResponse == null)) {
      return null;
    }
    return paramResponse.getProp().getCreationdate();
  }
  
  private Map<QName, String> getCustomProps(Response paramResponse)
  {
    return null;
  }
  
  private String getEtag(Response paramResponse)
  {
    paramResponse = paramResponse.getPropstat();
    if ((paramResponse.equals("")) || (paramResponse == null)) {
      return null;
    }
    return paramResponse.getProp().getGetetag();
  }
  
  private String getModifiedDate(Response paramResponse)
  {
    paramResponse = paramResponse.getPropstat();
    if ((paramResponse.equals("")) || (paramResponse == null)) {
      return null;
    }
    return paramResponse.getProp().getGetlastmodified();
  }
  
  public Long getContentLength()
  {
    return contentLength;
  }
  
  public String getContentType()
  {
    return contentType;
  }
  
  public Date getCreation()
  {
    return creation;
  }
  
  public Map<String, String> getCustomProps()
  {
    HashMap localHashMap = new HashMap();
    Map localMap = getCustomPropsNS();
    Iterator localIterator = localMap.keySet().iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return localHashMap;
      }
      QName localQName = (QName)localIterator.next();
      localHashMap.put(localQName.getLocalPart(), (String)localMap.get(localQName));
    }
  }
  
  public Map<QName, String> getCustomPropsNS()
  {
    return customProps;
  }
  
  public String getEtag()
  {
    return etag;
  }
  
  public URI getHref()
  {
    return href;
  }
  
  public Date getModified()
  {
    return modified;
  }
  
  public String getName()
  {
    String str3 = href.getPath();
    String str1 = str3;
    String str2 = str3;
    try
    {
      if (str3.endsWith("/"))
      {
        str2 = str3;
        str1 = str3.substring(0, str3.length() - 1);
      }
      str2 = str1;
      str1 = str1.substring(str1.lastIndexOf('/') + 1);
      return str1;
    }
    catch (StringIndexOutOfBoundsException localStringIndexOutOfBoundsException)
    {
      log.warn(String.format("Failed to parse name from path %s", new Object[] { str2 }));
    }
    return null;
  }
  
  public String getPath()
  {
    return href.getPath();
  }
  
  public boolean isDirectory()
  {
    return ("httpd/unix-directory".equals(contentType)) || (contentLength.longValue() == -1L);
  }
  
  public String toString()
  {
    return getPath();
  }
}

/* Location:
 * Qualified Name:     de.aflx.sardine.DavResource
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */