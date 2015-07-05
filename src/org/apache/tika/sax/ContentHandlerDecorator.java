package org.apache.tika.sax;

import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public class ContentHandlerDecorator
  extends DefaultHandler
{
  private ContentHandler handler;
  
  static
  {
    if (!ContentHandlerDecorator.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  protected ContentHandlerDecorator()
  {
    this(new DefaultHandler());
  }
  
  public ContentHandlerDecorator(ContentHandler paramContentHandler)
  {
    assert (paramContentHandler != null);
    handler = paramContentHandler;
  }
  
  public void characters(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    try
    {
      handler.characters(paramArrayOfChar, paramInt1, paramInt2);
      return;
    }
    catch (SAXException paramArrayOfChar)
    {
      handleException(paramArrayOfChar);
    }
  }
  
  public void endDocument()
  {
    try
    {
      handler.endDocument();
      return;
    }
    catch (SAXException localSAXException)
    {
      handleException(localSAXException);
    }
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3)
  {
    try
    {
      handler.endElement(paramString1, paramString2, paramString3);
      return;
    }
    catch (SAXException paramString1)
    {
      handleException(paramString1);
    }
  }
  
  public void endPrefixMapping(String paramString)
  {
    try
    {
      handler.endPrefixMapping(paramString);
      return;
    }
    catch (SAXException paramString)
    {
      handleException(paramString);
    }
  }
  
  protected void handleException(SAXException paramSAXException)
  {
    throw paramSAXException;
  }
  
  public void ignorableWhitespace(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    try
    {
      handler.ignorableWhitespace(paramArrayOfChar, paramInt1, paramInt2);
      return;
    }
    catch (SAXException paramArrayOfChar)
    {
      handleException(paramArrayOfChar);
    }
  }
  
  public void processingInstruction(String paramString1, String paramString2)
  {
    try
    {
      handler.processingInstruction(paramString1, paramString2);
      return;
    }
    catch (SAXException paramString1)
    {
      handleException(paramString1);
    }
  }
  
  protected void setContentHandler(ContentHandler paramContentHandler)
  {
    assert (paramContentHandler != null);
    handler = paramContentHandler;
  }
  
  public void setDocumentLocator(Locator paramLocator)
  {
    handler.setDocumentLocator(paramLocator);
  }
  
  public void skippedEntity(String paramString)
  {
    try
    {
      handler.skippedEntity(paramString);
      return;
    }
    catch (SAXException paramString)
    {
      handleException(paramString);
    }
  }
  
  public void startDocument()
  {
    try
    {
      handler.startDocument();
      return;
    }
    catch (SAXException localSAXException)
    {
      handleException(localSAXException);
    }
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes)
  {
    try
    {
      handler.startElement(paramString1, paramString2, paramString3, paramAttributes);
      return;
    }
    catch (SAXException paramString1)
    {
      handleException(paramString1);
    }
  }
  
  public void startPrefixMapping(String paramString1, String paramString2)
  {
    try
    {
      handler.startPrefixMapping(paramString1, paramString2);
      return;
    }
    catch (SAXException paramString1)
    {
      handleException(paramString1);
    }
  }
  
  public String toString()
  {
    return handler.toString();
  }
}

/* Location:
 * Qualified Name:     org.apache.tika.sax.ContentHandlerDecorator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */