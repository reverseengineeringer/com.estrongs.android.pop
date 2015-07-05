package org.apache.tika.parser.mp3;

public class ID3Tags$ID3Comment
{
  private String description;
  private String language;
  private String text;
  
  public ID3Tags$ID3Comment(String paramString)
  {
    text = paramString;
  }
  
  public ID3Tags$ID3Comment(String paramString1, String paramString2, String paramString3)
  {
    language = paramString1;
    description = paramString2;
    text = paramString3;
  }
  
  public String getDescription()
  {
    return description;
  }
  
  public String getLanguage()
  {
    return language;
  }
  
  public String getText()
  {
    return text;
  }
}

/* Location:
 * Qualified Name:     org.apache.tika.parser.mp3.ID3Tags.ID3Comment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */