package org.simpleframework.xml.stream;

class Indenter$Cache
{
  private int count;
  private String[] list;
  
  public Indenter$Cache(Indenter paramIndenter, int paramInt)
  {
    list = new String[paramInt];
  }
  
  private void resize(int paramInt)
  {
    String[] arrayOfString = new String[paramInt];
    paramInt = 0;
    for (;;)
    {
      if (paramInt >= list.length)
      {
        list = arrayOfString;
        return;
      }
      arrayOfString[paramInt] = list[paramInt];
      paramInt += 1;
    }
  }
  
  public String get(int paramInt)
  {
    if (paramInt < list.length) {
      return list[paramInt];
    }
    return null;
  }
  
  public void set(int paramInt, String paramString)
  {
    if (paramInt >= list.length) {
      resize(paramInt * 2);
    }
    if (paramInt > count) {
      count = paramInt;
    }
    list[paramInt] = paramString;
  }
  
  public int size()
  {
    return count;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.Indenter.Cache
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */