package com.estrongs.android.ui.e;

import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.d;
import java.util.LinkedList;

class dh
  extends Thread
{
  dh(cr paramcr, String paramString, LinkedList paramLinkedList1, LinkedList paramLinkedList2)
  {
    super(paramString);
  }
  
  public void run()
  {
    try
    {
      d.a(cr.b(c)).a(a);
    }
    catch (FileSystemException localFileSystemException1)
    {
      try
      {
        for (;;)
        {
          d.a(cr.b(c)).a(b);
          a.clear();
          b.clear();
          return;
          localFileSystemException1 = localFileSystemException1;
          localFileSystemException1.printStackTrace();
        }
      }
      catch (FileSystemException localFileSystemException2)
      {
        for (;;)
        {
          localFileSystemException2.printStackTrace();
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.dh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */