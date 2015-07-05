package org.apache.tika.sax;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import org.apache.tika.metadata.Metadata;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.helpers.AttributesImpl;

public class XHTMLContentHandler
  extends SafeContentHandler
{
  private static final Set<String> AUTO;
  private static final Attributes EMPTY_ATTRIBUTES = new AttributesImpl();
  public static final Set<String> ENDLINE;
  private static final Set<String> HEAD;
  private static final Set<String> INDENT;
  private static final char[] NL = { '\n' };
  private static final char[] TAB = { '\t' };
  public static final String XHTML = "http://www.w3.org/1999/xhtml";
  private boolean headEnded = false;
  private boolean headStarted = false;
  private final Metadata metadata;
  private boolean useFrameset = false;
  
  static
  {
    HEAD = unmodifiableSet(new String[] { "title", "link", "base", "meta" });
    AUTO = unmodifiableSet(new String[] { "html", "head", "body", "frameset" });
    INDENT = unmodifiableSet(new String[] { "li", "dd", "dt", "td", "th", "frame" });
    ENDLINE = unmodifiableSet(new String[] { "p", "h1", "h2", "h3", "h4", "h5", "h6", "div", "ul", "ol", "dl", "pre", "hr", "blockquote", "address", "fieldset", "table", "form", "noscript", "li", "dt", "dd", "noframes", "br", "tr", "select", "option" });
  }
  
  public XHTMLContentHandler(ContentHandler paramContentHandler, Metadata paramMetadata)
  {
    super(paramContentHandler);
    metadata = paramMetadata;
  }
  
  private void lazyEndHead(boolean paramBoolean)
  {
    lazyStartHead();
    if (!headEnded)
    {
      headEnded = true;
      useFrameset = paramBoolean;
      Object localObject = metadata.names();
      int k = localObject.length;
      int i = 0;
      if (i < k)
      {
        String str1 = localObject[i];
        if (str1.equals("title")) {}
        for (;;)
        {
          i += 1;
          break;
          String[] arrayOfString = metadata.getValues(str1);
          int m = arrayOfString.length;
          int j = 0;
          while (j < m)
          {
            String str2 = arrayOfString[j];
            if (str2 != null)
            {
              AttributesImpl localAttributesImpl = new AttributesImpl();
              localAttributesImpl.addAttribute("", "name", "name", "CDATA", str1);
              localAttributesImpl.addAttribute("", "content", "content", "CDATA", str2);
              super.startElement("http://www.w3.org/1999/xhtml", "meta", "meta", localAttributesImpl);
              super.endElement("http://www.w3.org/1999/xhtml", "meta", "meta");
              newline();
            }
            j += 1;
          }
        }
      }
      super.startElement("http://www.w3.org/1999/xhtml", "title", "title", EMPTY_ATTRIBUTES);
      localObject = metadata.get("title");
      if ((localObject == null) || (((String)localObject).length() <= 0)) {
        break label276;
      }
      localObject = ((String)localObject).toCharArray();
      super.characters((char[])localObject, 0, localObject.length);
    }
    for (;;)
    {
      super.endElement("http://www.w3.org/1999/xhtml", "title", "title");
      newline();
      super.endElement("http://www.w3.org/1999/xhtml", "head", "head");
      newline();
      if (!useFrameset) {
        break;
      }
      super.startElement("http://www.w3.org/1999/xhtml", "frameset", "frameset", EMPTY_ATTRIBUTES);
      return;
      label276:
      super.characters(new char[0], 0, 0);
    }
    super.startElement("http://www.w3.org/1999/xhtml", "body", "body", EMPTY_ATTRIBUTES);
  }
  
  private void lazyStartHead()
  {
    if (!headStarted)
    {
      headStarted = true;
      super.startElement("http://www.w3.org/1999/xhtml", "html", "html", EMPTY_ATTRIBUTES);
      newline();
      super.startElement("http://www.w3.org/1999/xhtml", "head", "head", EMPTY_ATTRIBUTES);
      newline();
    }
  }
  
  private static Set<String> unmodifiableSet(String... paramVarArgs)
  {
    return Collections.unmodifiableSet(new HashSet(Arrays.asList(paramVarArgs)));
  }
  
  public void characters(String paramString)
  {
    if ((paramString != null) && (paramString.length() > 0)) {
      characters(paramString.toCharArray(), 0, paramString.length());
    }
  }
  
  public void characters(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    lazyEndHead(useFrameset);
    super.characters(paramArrayOfChar, paramInt1, paramInt2);
  }
  
  public void element(String paramString1, String paramString2)
  {
    if ((paramString2 != null) && (paramString2.length() > 0))
    {
      startElement(paramString1);
      characters(paramString2);
      endElement(paramString1);
    }
  }
  
  public void endDocument()
  {
    lazyEndHead(useFrameset);
    if (useFrameset) {
      super.endElement("http://www.w3.org/1999/xhtml", "frameset", "frameset");
    }
    for (;;)
    {
      super.endElement("http://www.w3.org/1999/xhtml", "html", "html");
      endPrefixMapping("");
      super.endDocument();
      return;
      super.endElement("http://www.w3.org/1999/xhtml", "body", "body");
    }
  }
  
  public void endElement(String paramString)
  {
    endElement("http://www.w3.org/1999/xhtml", paramString, paramString);
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3)
  {
    if (!AUTO.contains(paramString3))
    {
      super.endElement(paramString1, paramString2, paramString3);
      if (("http://www.w3.org/1999/xhtml".equals(paramString1)) && (ENDLINE.contains(paramString3))) {
        newline();
      }
    }
  }
  
  public void newline()
  {
    ignorableWhitespace(NL, 0, NL.length);
  }
  
  public void startDocument()
  {
    super.startDocument();
    startPrefixMapping("", "http://www.w3.org/1999/xhtml");
  }
  
  public void startElement(String paramString)
  {
    startElement("http://www.w3.org/1999/xhtml", paramString, paramString, EMPTY_ATTRIBUTES);
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3)
  {
    AttributesImpl localAttributesImpl = new AttributesImpl();
    localAttributesImpl.addAttribute("", paramString2, paramString2, "CDATA", paramString3);
    startElement("http://www.w3.org/1999/xhtml", paramString1, paramString1, localAttributesImpl);
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes)
  {
    if (paramString3.equals("frameset")) {
      lazyEndHead(true);
    }
    while (AUTO.contains(paramString3)) {
      return;
    }
    if (HEAD.contains(paramString3)) {
      lazyStartHead();
    }
    for (;;)
    {
      if (("http://www.w3.org/1999/xhtml".equals(paramString1)) && (INDENT.contains(paramString3))) {
        ignorableWhitespace(TAB, 0, TAB.length);
      }
      super.startElement(paramString1, paramString2, paramString3, paramAttributes);
      return;
      lazyEndHead(false);
    }
  }
  
  public void startElement(String paramString, AttributesImpl paramAttributesImpl)
  {
    startElement("http://www.w3.org/1999/xhtml", paramString, paramString, paramAttributesImpl);
  }
}

/* Location:
 * Qualified Name:     org.apache.tika.sax.XHTMLContentHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */