package org.apache.tika.sax;

import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.helpers.AttributesImpl;

public class SafeContentHandler
  extends ContentHandlerDecorator
{
  private static final char[] REPLACEMENT = { 65533 };
  private final SafeContentHandler.Output charactersOutput = new SafeContentHandler.1(this);
  private final SafeContentHandler.Output ignorableWhitespaceOutput = new SafeContentHandler.2(this);
  
  public SafeContentHandler(ContentHandler paramContentHandler)
  {
    super(paramContentHandler);
  }
  
  private void filter(char[] paramArrayOfChar, int paramInt1, int paramInt2, SafeContentHandler.Output paramOutput)
  {
    int k = paramInt1 + paramInt2;
    int i = paramInt1;
    paramInt2 = paramInt1;
    int j;
    for (paramInt1 = i; paramInt2 < k; paramInt1 = j)
    {
      int m = Character.codePointAt(paramArrayOfChar, paramInt2, k);
      i = Character.charCount(m) + paramInt2;
      j = paramInt1;
      if (isInvalid(m))
      {
        if (paramInt2 > paramInt1) {
          paramOutput.write(paramArrayOfChar, paramInt1, paramInt2 - paramInt1);
        }
        writeReplacement(paramOutput);
        j = i;
      }
      paramInt2 = i;
    }
    paramOutput.write(paramArrayOfChar, paramInt1, k - paramInt1);
  }
  
  private boolean isInvalid(String paramString)
  {
    boolean bool2 = false;
    paramString = paramString.toCharArray();
    int i = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      int j;
      if (i < paramString.length)
      {
        j = Character.codePointAt(paramString, i);
        if (isInvalid(j)) {
          bool1 = true;
        }
      }
      else
      {
        return bool1;
      }
      i += Character.charCount(j);
    }
  }
  
  public void characters(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    filter(paramArrayOfChar, paramInt1, paramInt2, charactersOutput);
  }
  
  public void endDocument()
  {
    super.endDocument();
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3)
  {
    super.endElement(paramString1, paramString2, paramString3);
  }
  
  public void ignorableWhitespace(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    filter(paramArrayOfChar, paramInt1, paramInt2, ignorableWhitespaceOutput);
  }
  
  protected boolean isInvalid(int paramInt)
  {
    if (paramInt < 32) {
      if ((paramInt == 9) || (paramInt == 10) || (paramInt == 13)) {}
    }
    do
    {
      do
      {
        do
        {
          return true;
          return false;
          if (paramInt >= 57344) {
            break;
          }
        } while (paramInt > 55295);
        return false;
        if (paramInt >= 65536) {
          break;
        }
      } while (paramInt > 65533);
      return false;
    } while (paramInt > 1114111);
    return false;
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes)
  {
    int i = 0;
    while (i < paramAttributes.getLength())
    {
      if (isInvalid(paramAttributes.getValue(i)))
      {
        AttributesImpl localAttributesImpl = new AttributesImpl();
        int j = 0;
        for (;;)
        {
          localObject = localAttributesImpl;
          if (j >= paramAttributes.getLength()) {
            break;
          }
          String str = paramAttributes.getValue(j);
          localObject = str;
          if (j >= i)
          {
            localObject = str;
            if (isInvalid(str))
            {
              localObject = new SafeContentHandler.StringOutput(null);
              filter(str.toCharArray(), 0, str.length(), (SafeContentHandler.Output)localObject);
              localObject = localObject.toString();
            }
          }
          localAttributesImpl.addAttribute(paramAttributes.getURI(j), paramAttributes.getLocalName(j), paramAttributes.getQName(j), paramAttributes.getType(j), (String)localObject);
          j += 1;
        }
      }
      i += 1;
    }
    Object localObject = paramAttributes;
    super.startElement(paramString1, paramString2, paramString3, (Attributes)localObject);
  }
  
  protected void writeReplacement(SafeContentHandler.Output paramOutput)
  {
    paramOutput.write(REPLACEMENT, 0, REPLACEMENT.length);
  }
}

/* Location:
 * Qualified Name:     org.apache.tika.sax.SafeContentHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */