package com.estrongs.fs.impl.k;

import android.net.Uri;
import com.estrongs.android.pop.netfs.utils.FastPipedInputStream;
import com.estrongs.android.pop.netfs.utils.FastPipedOutputStream;
import com.estrongs.android.pop.netfs.utils.LengthStreamBody;
import com.estrongs.android.pop.netfs.utils.UploadOutputStream;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.ah;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bk;
import com.estrongs.android.util.l;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.h;
import com.estrongs.fs.i;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.entity.mime.HttpMultipartMode;
import org.apache.http.entity.mime.MultipartEntity;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

public class c
  extends com.estrongs.fs.impl.m.b
{
  private static String c = c.class.getSimpleName();
  
  public static boolean a()
  {
    try
    {
      Object localObject1 = new HttpGet("http://flashair/");
      Object localObject2 = new BasicHttpParams();
      HttpConnectionParams.setConnectionTimeout((HttpParams)localObject2, 20000);
      HttpConnectionParams.setSoTimeout((HttpParams)localObject2, 60000);
      localObject1 = ah.a((HttpParams)localObject2).execute((HttpUriRequest)localObject1);
      if (((HttpResponse)localObject1).getStatusLine().getStatusCode() != 200) {
        return false;
      }
      if (((HttpResponse)localObject1).getEntity().getContentType().getValue().equalsIgnoreCase("text/html"))
      {
        localObject1 = ((HttpResponse)localObject1).getEntity().getContent();
        if (localObject1 != null)
        {
          localObject1 = new BufferedReader(new InputStreamReader((InputStream)localObject1));
          boolean bool;
          do
          {
            localObject2 = ((BufferedReader)localObject1).readLine();
            if (localObject2 == null) {
              break;
            }
            bool = ((String)localObject2).toLowerCase().contains("<title>flashair</title>");
          } while (!bool);
          return true;
        }
      }
    }
    catch (Exception localException) {}
    return false;
  }
  
  private boolean i(String paramString)
  {
    Object localObject1 = com.estrongs.a.a.getCurrentTask();
    if ((localObject1 != null) && (((com.estrongs.a.a)localObject1).taskStopped())) {
      return false;
    }
    localObject1 = paramString;
    if (!paramString.contains("%")) {
      localObject1 = Uri.encode(paramString, "/");
    }
    paramString = null;
    boolean bool2;
    try
    {
      localObject2 = e.a((String)localObject1);
      paramString = (String)localObject2;
    }
    catch (Exception localException)
    {
      label186:
      for (;;)
      {
        Object localObject2;
        String str;
        l.d(c, "doDelete - Failed to getFileList: " + (String)localObject1);
        continue;
        boolean bool1 = j(str) & bool1;
      }
      bool2 = true;
    }
    if (paramString != null)
    {
      paramString = paramString.iterator();
      bool1 = true;
      bool2 = bool1;
      if (!paramString.hasNext()) {
        break label191;
      }
      localObject2 = (a)paramString.next();
      str = a + "/" + b;
      if (((a)localObject2).a())
      {
        bool1 = i(str) & bool1;
        if (bool1) {
          break label186;
        }
        return false;
      }
    }
    label191:
    return j((String)localObject1) & bool2;
  }
  
  private boolean j(String paramString)
  {
    String str = paramString;
    if (!paramString.contains("%")) {
      str = Uri.encode(paramString, "/");
    }
    paramString = e.b("http://flashair/upload.cgi?DEL=" + str);
    return (paramString != null) && (paramString.startsWith("SUCCESS"));
  }
  
  private String k(String paramString)
  {
    return paramString.replaceFirst("flashair://", "http://");
  }
  
  public h a(String paramString)
  {
    return super.a(k(paramString));
  }
  
  public InputStream a(String paramString, long paramLong)
  {
    return super.a(paramString, paramLong, null);
  }
  
  public InputStream a(String paramString, long paramLong, TypedMap paramTypedMap)
  {
    return super.a(k(paramString), paramLong, null);
  }
  
  public OutputStream a(String paramString, TypedMap paramTypedMap)
  {
    long l1;
    if (paramTypedMap != null) {
      l1 = paramTypedMap.getLong("length");
    }
    for (;;)
    {
      paramTypedMap = ah.a(null);
      Object localObject;
      try
      {
        paramString = Uri.parse(paramString);
        localObject = Uri.encode(ap.bB(paramString.getPath()), "/");
        localObject = "?WRITEPROTECT=ON&UPDIR=" + (String)localObject + "&FTIME=" + e.a();
        if (!e.b("http://flashair/upload.cgi" + (String)localObject).toUpperCase(Locale.getDefault()).equals("SUCCESS")) {
          return null;
        }
        localObject = new UploadOutputStream();
        FastPipedInputStream localFastPipedInputStream = new FastPipedInputStream();
        for (;;)
        {
          try
          {
            localFastPipedInputStream.connect((FastPipedOutputStream)localObject);
            HttpPost localHttpPost = new HttpPost("http://flashair/upload.cgi");
            MultipartEntity localMultipartEntity = new MultipartEntity(HttpMultipartMode.BROWSER_COMPATIBLE);
            paramString = ap.d(paramString.getPath()).replace("+", "%20").replace("%7E", "~");
            if (l1 == 0L)
            {
              l2 = 1L;
              localMultipartEntity.addPart("file", new LengthStreamBody(localFastPipedInputStream, paramString, l2));
              localHttpPost.setEntity(localMultipartEntity);
              paramString = new d(this, paramTypedMap, localHttpPost, (UploadOutputStream)localObject, localFastPipedInputStream);
              ((UploadOutputStream)localObject).setTask(paramString, localFastPipedInputStream);
              paramString.start();
              if (l1 != 0L) {
                break;
              }
              ((UploadOutputStream)localObject).write(32);
              return (OutputStream)localObject;
            }
          }
          catch (IOException paramString)
          {
            l.e(c, "Can't create pipe stream");
            return null;
          }
          long l2 = l1;
        }
        l1 = 0L;
      }
      catch (Exception paramString) {}
    }
    return (OutputStream)localObject;
    return null;
  }
  
  public List<h> a(h paramh, i parami, TypedMap paramTypedMap)
  {
    parami = Uri.parse(paramh.getAbsolutePath()).getPath();
    paramh = parami;
    if (bk.a(parami)) {
      paramh = "/";
    }
    try
    {
      parami = e.a(paramh);
      paramh = new ArrayList();
      parami = parami.iterator();
      while (parami.hasNext()) {
        paramh.add(new b((a)parami.next()));
      }
      return paramh;
    }
    catch (IOException paramh)
    {
      throw new FileSystemException(paramh);
    }
  }
  
  public boolean b(String paramString)
  {
    paramString = Uri.encode(Uri.parse(k(paramString)).getPath(), "/");
    paramString = "?WRITEPROTECT=ON&UPDIR=" + paramString + "&FTIME=" + e.a();
    try
    {
      boolean bool = e.b("http://flashair/upload.cgi" + paramString).toUpperCase(Locale.getDefault()).equals("SUCCESS");
      if (bool) {
        return true;
      }
    }
    catch (IOException paramString)
    {
      l.e("ERROR", "ERROR: " + paramString.toString());
    }
    return false;
  }
  
  public boolean c(String paramString)
  {
    Object localObject = ap.bB(Uri.parse(k(paramString)).getPath());
    try
    {
      localObject = e.a((String)localObject);
      paramString = ap.d(paramString);
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        if (nextb.equals(paramString)) {
          return true;
        }
      }
    }
    catch (IOException paramString)
    {
      throw new FileSystemException(paramString);
    }
    return false;
  }
  
  public InputStream d(String paramString)
  {
    return super.a(paramString, 0L, null);
  }
  
  public boolean e(String paramString)
  {
    try
    {
      boolean bool = i(e.c(Uri.parse(com.estrongs.fs.impl.m.b.g(k(paramString))).getPath()));
      return bool;
    }
    catch (Exception paramString)
    {
      throw new FileSystemException(paramString);
    }
  }
  
  public InputStream f(String paramString)
  {
    try
    {
      paramString = paramString.replaceAll("flashair://flashair/", "/");
      paramString = d(e.a(ap.bB(paramString), ap.d(paramString)));
      return paramString;
    }
    catch (FileSystemException paramString)
    {
      paramString.printStackTrace();
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.k.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */