package org.simpleframework.xml.transform;

import java.io.File;

class FileTransform
  implements Transform<File>
{
  public File read(String paramString)
  {
    return new File(paramString);
  }
  
  public String write(File paramFile)
  {
    return paramFile.getPath();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.transform.FileTransform
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */