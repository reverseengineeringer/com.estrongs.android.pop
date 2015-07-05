package org.apache.commons.net.ftp;

import com.estrongs.android.util.f;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;

public class FTPListParseEngine
{
  private ListIterator<String> _internalIterator = entries.listIterator();
  private FTPClient client;
  private List<String> entries = new LinkedList();
  private final FTPFileEntryParser parser;
  
  public FTPListParseEngine(FTPFileEntryParser paramFTPFileEntryParser)
  {
    parser = paramFTPFileEntryParser;
  }
  
  public FTPListParseEngine(FTPFileEntryParser paramFTPFileEntryParser, FTPClient paramFTPClient)
  {
    this(paramFTPFileEntryParser);
    client = paramFTPClient;
  }
  
  private void readStream(InputStream paramInputStream, String paramString)
  {
    Object localObject = paramInputStream;
    String str = paramString;
    if (client != null)
    {
      localObject = paramInputStream;
      str = paramString;
      if (client.isNeedAutoDetectEncoding())
      {
        localObject = new BufferedInputStream(paramInputStream);
        ((InputStream)localObject).mark(10240);
        paramInputStream = new byte['⠀'];
        int i = ((InputStream)localObject).read(paramInputStream);
        if (i > 0)
        {
          paramInputStream = f.a(paramInputStream, i);
          paramString = paramInputStream;
          if (!"UTF-8".equals(paramInputStream))
          {
            paramString = paramInputStream;
            if (Charset.isSupported(paramInputStream))
            {
              client.setControlEncoding(paramInputStream);
              paramString = paramInputStream;
            }
          }
        }
        ((InputStream)localObject).reset();
        str = paramString;
      }
    }
    if (str == null) {
      paramInputStream = new BufferedReader(new InputStreamReader((InputStream)localObject));
    }
    for (paramString = parser.readNextEntry(paramInputStream);; paramString = parser.readNextEntry(paramInputStream))
    {
      if (paramString == null)
      {
        paramInputStream.close();
        return;
        paramInputStream = new BufferedReader(new InputStreamReader((InputStream)localObject, str));
        break;
      }
      entries.add(paramString);
    }
  }
  
  public FTPFile[] getFiles()
  {
    return getFiles(FTPFileFilters.NON_NULL);
  }
  
  public FTPFile[] getFiles(FTPFileFilter paramFTPFileFilter)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = entries.iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return (FTPFile[])localArrayList.toArray(new FTPFile[localArrayList.size()]);
      }
      Object localObject = (String)localIterator.next();
      localObject = parser.parseFTPEntry((String)localObject);
      if (paramFTPFileFilter.accept((FTPFile)localObject)) {
        localArrayList.add(localObject);
      }
    }
  }
  
  public FTPFile[] getNext(int paramInt)
  {
    LinkedList localLinkedList = new LinkedList();
    for (;;)
    {
      if ((paramInt <= 0) || (!_internalIterator.hasNext())) {
        return (FTPFile[])localLinkedList.toArray(new FTPFile[localLinkedList.size()]);
      }
      String str = (String)_internalIterator.next();
      localLinkedList.add(parser.parseFTPEntry(str));
      paramInt -= 1;
    }
  }
  
  public FTPFile[] getPrevious(int paramInt)
  {
    LinkedList localLinkedList = new LinkedList();
    for (;;)
    {
      if ((paramInt <= 0) || (!_internalIterator.hasPrevious())) {
        return (FTPFile[])localLinkedList.toArray(new FTPFile[localLinkedList.size()]);
      }
      String str = (String)_internalIterator.previous();
      localLinkedList.add(0, parser.parseFTPEntry(str));
      paramInt -= 1;
    }
  }
  
  public boolean hasNext()
  {
    return _internalIterator.hasNext();
  }
  
  public boolean hasPrevious()
  {
    return _internalIterator.hasPrevious();
  }
  
  @Deprecated
  public void readServerList(InputStream paramInputStream)
  {
    readServerList(paramInputStream, null);
  }
  
  public void readServerList(InputStream paramInputStream, String paramString)
  {
    entries = new LinkedList();
    readStream(paramInputStream, paramString);
    parser.preParse(entries);
    resetIterator();
  }
  
  public void resetIterator()
  {
    _internalIterator = entries.listIterator();
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.ftp.FTPListParseEngine
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */