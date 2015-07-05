package de.aflx.sardine.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

public class SardineUtil
{
  public static final String CUSTOM_NAMESPACE_PREFIX = "s";
  public static final String CUSTOM_NAMESPACE_URI = "SAR:";
  private static final List<ThreadLocal<SimpleDateFormat>> DATETIME_FORMATS = Arrays.asList(new ThreadLocal[] { new SardineUtil.1(), new SardineUtil.2(), new SardineUtil.3(), new SardineUtil.4(), new SardineUtil.5(), new SardineUtil.6(), new SardineUtil.7() });
  public static final String DEFAULT_NAMESPACE_PREFIX = "d";
  public static final String DEFAULT_NAMESPACE_URI = "DAV:";
  
  private static Document createDocument()
  {
    Object localObject = DocumentBuilderFactory.newInstance();
    try
    {
      localObject = ((DocumentBuilderFactory)localObject).newDocumentBuilder();
      return ((DocumentBuilder)localObject).newDocument();
    }
    catch (ParserConfigurationException localParserConfigurationException)
    {
      throw new RuntimeException(localParserConfigurationException.getMessage(), localParserConfigurationException);
    }
  }
  
  public static Element createElement(QName paramQName)
  {
    return createDocument().createElementNS(paramQName.getNamespaceURI(), paramQName.getPrefix() + ":" + paramQName.getLocalPart());
  }
  
  public static QName createQNameWithCustomNamespace(String paramString)
  {
    return new QName("SAR:", paramString, "s");
  }
  
  public static QName createQNameWithDefaultNamespace(String paramString)
  {
    return new QName("DAV:", paramString, "d");
  }
  
  public static Date parseDate(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    Iterator localIterator = DATETIME_FORMATS.iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        paramString = null;
      }
      for (;;)
      {
        return paramString;
        Object localObject = (ThreadLocal)localIterator.next();
        try
        {
          localObject = ((SimpleDateFormat)((ThreadLocal)localObject).get()).parse(paramString);
          paramString = (String)localObject;
        }
        catch (ParseException localParseException) {}
      }
    }
  }
  
  public static List<QName> toQName(List<String> paramList)
  {
    if (paramList == null) {
      return Collections.emptyList();
    }
    ArrayList localArrayList = new ArrayList(paramList.size());
    paramList = paramList.iterator();
    for (;;)
    {
      if (!paramList.hasNext()) {
        return localArrayList;
      }
      localArrayList.add(createQNameWithCustomNamespace((String)paramList.next()));
    }
  }
  
  public static Map<QName, String> toQName(Map<String, String> paramMap)
  {
    if (paramMap == null) {
      return Collections.emptyMap();
    }
    HashMap localHashMap = new HashMap(paramMap.size());
    paramMap = paramMap.entrySet().iterator();
    for (;;)
    {
      if (!paramMap.hasNext()) {
        return localHashMap;
      }
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      localHashMap.put(createQNameWithCustomNamespace((String)localEntry.getKey()), (String)localEntry.getValue());
    }
  }
}

/* Location:
 * Qualified Name:     de.aflx.sardine.util.SardineUtil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */