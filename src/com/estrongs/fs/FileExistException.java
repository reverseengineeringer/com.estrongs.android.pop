package com.estrongs.fs;

public class FileExistException
  extends FileSystemException
{
  private static final long serialVersionUID = 1L;
  private String fileName;
  
  public FileExistException(String paramString)
  {
    super("The file " + paramString + " allreay exists");
    fileName = paramString;
  }
  
  public String getFileName()
  {
    return fileName;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.FileExistException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */