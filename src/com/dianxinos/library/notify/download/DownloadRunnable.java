package com.dianxinos.library.notify.download;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.dianxinos.library.notify.dispatcher.b;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Random;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.methods.HttpGet;

public class DownloadRunnable
  implements Runnable
{
  private final Context a;
  private final DownloadInfo b;
  private final g c;
  
  public DownloadRunnable(Context paramContext, DownloadInfo paramDownloadInfo)
  {
    a = paramContext;
    b = paramDownloadInfo;
    c = g.a();
  }
  
  private InputStream a(l paraml, HttpResponse paramHttpResponse)
  {
    try
    {
      paramHttpResponse = paramHttpResponse.getEntity().getContent();
      return paramHttpResponse;
    }
    catch (IOException paramHttpResponse)
    {
      throw new StopRequestException(i(paraml), "while getting entity: " + paramHttpResponse.toString(), paramHttpResponse);
    }
  }
  
  private String a()
  {
    String str2 = b.mUserAgent;
    if (str2 != null) {}
    String str1 = str2;
    if (str2 == null) {
      str1 = "dianxin-notify";
    }
    return str1;
  }
  
  private void a(int paramInt, String paramString)
  {
    paramString = com.dianxinos.library.notify.c.a(paramString);
    if ((paramString != null) && (paramInt == 200) && (paramString.b())) {
      com.dianxinos.library.notify.h.c.a().b(paramString);
    }
  }
  
  private void a(int paramInt1, boolean paramBoolean1, int paramInt2, boolean paramBoolean2, String paramString1, String paramString2)
  {
    b.mStatus = paramInt1;
    b.mRetryAfter = paramInt2;
    if (!paramBoolean1)
    {
      b.mNumFailed = 0;
      if (TextUtils.isEmpty(paramString2)) {
        break label108;
      }
      b.mErrorMsg = paramString2;
      label45:
      if (TextUtils.isEmpty(paramString1)) {
        break label119;
      }
    }
    label108:
    label119:
    for (b.mMimeType = paramString1;; b.mMimeType = null)
    {
      com.dianxinos.library.notify.h.a.a(b);
      return;
      if (paramBoolean2)
      {
        b.mNumFailed = 1;
        break;
      }
      DownloadInfo localDownloadInfo = b;
      mNumFailed += 1;
      break;
      b.mErrorMsg = null;
      break label45;
    }
  }
  
  private void a(int paramInt1, boolean paramBoolean1, int paramInt2, boolean paramBoolean2, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    a(paramInt1, paramBoolean1, paramInt2, paramBoolean2, paramString3, paramString4);
    b(paramInt1, paramBoolean1, paramInt2, paramBoolean2, paramString1, paramString2, paramString3, paramString4);
  }
  
  private void a(l paraml)
  {
    Object localObject = com.dianxinos.library.notify.c.a(b.mUri, b.mRcmId);
    if (!TextUtils.isEmpty((CharSequence)localObject))
    {
      localObject = new File((String)localObject);
      if (((!((File)localObject).exists()) || (!((File)localObject).isFile())) && (b != null)) {
        break label56;
      }
    }
    for (;;)
    {
      return;
      try
      {
        label56:
        if (!com.dianxinos.library.notify.j.c.a(new File(b), (File)localObject)) {
          continue;
        }
        if (com.dianxinos.library.dxbase.e.c) {
          com.dianxinos.library.dxbase.j.b("different notifyId with same url, checkDownloadComplete,copy exsits file to this folder");
        }
        throw new StopRequestException(200, "complete file has already exist");
      }
      catch (IOException localIOException)
      {
        b = null;
        b.mCompleteFileName = null;
        throw new DownloadRunnable.RetryDownload(this, null);
      }
    }
  }
  
  private void a(l paraml, int paramInt)
  {
    e(paraml);
    if ((a != null) && (n.a(paramInt)))
    {
      new File(a).delete();
      a = null;
      b.mCacheFileName = null;
    }
  }
  
  private void a(l paraml, a parama, HttpGet paramHttpGet)
  {
    if (b(paraml))
    {
      a(paraml);
      g(paraml);
      return;
    }
    k localk = new k(null);
    if (com.dianxinos.library.dxbase.k.c()) {}
    byte[] arrayOfByte;
    for (int i = 32768;; i = 4096)
    {
      arrayOfByte = new byte[i];
      c(paraml, localk);
      a(paraml, paramHttpGet);
      if ((l != k) || (k == 0L)) {
        break;
      }
      Log.i("rcm-download", "Skipping initiating request for download " + b.mRcmId + "; already completed");
      return;
    }
    c();
    parama = b(paraml, parama, paramHttpGet);
    c(paraml, localk, parama);
    if (f.a) {
      Log.v("rcm-download", "received response for " + b.mUri);
    }
    if (!"preload_bkg".equals(b.mExtras))
    {
      if (!"preload_file".equals(b.mExtras)) {
        break label329;
      }
      com.dianxinos.library.notify.g.a.b(b.mRcmId, b.mUri);
    }
    for (;;)
    {
      a(paraml, localk, parama);
      a(paraml, localk, arrayOfByte, a(paraml, parama));
      if ("preload_bkg".equals(b.mExtras)) {
        break;
      }
      paraml = com.dianxinos.library.notify.j.e.a(a, b.mCacheFileName);
      if (paraml == null) {
        break;
      }
      if (!"preload_file".equals(b.mExtras)) {
        break label350;
      }
      com.dianxinos.library.notify.g.a.b(b.mRcmId, b.mUri, packageName);
      return;
      label329:
      com.dianxinos.library.notify.g.a.a(b.mRcmId, b.mUri);
    }
    label350:
    com.dianxinos.library.notify.g.a.a(b.mRcmId, b.mUri, packageName);
  }
  
  private void a(l paraml, k paramk)
  {
    int i;
    if ((a == null) && (l != Integer.parseInt(a))) {
      i = 1;
    }
    while (i != 0) {
      if (h(paraml))
      {
        throw new StopRequestException(489, "mismatched content length!");
        i = 0;
      }
      else
      {
        throw new StopRequestException(i(paraml), "closed socket before end of file");
      }
    }
  }
  
  private void a(l paraml, k paramk, int paramInt)
  {
    if (paramInt == 416) {
      throw new IllegalStateException("Http Range request failure: totalBytes = " + k + ", bytes recvd so far: " + l);
    }
    int i;
    if (n.a(paramInt)) {
      i = paramInt;
    }
    for (;;)
    {
      throw new StopRequestException(i, "http error " + paramInt + ", mContinuingDownload: " + n);
      if ((paramInt >= 300) && (paramInt < 400)) {
        i = 493;
      } else if ((n) && (paramInt == 200)) {
        i = 489;
      } else {
        i = 494;
      }
    }
  }
  
  private void a(l paraml, k paramk, HttpResponse paramHttpResponse)
  {
    if (n) {
      return;
    }
    b(paraml, paramk, paramHttpResponse);
    a = o.a(b.mUri, b.mRcmId);
    b.mCacheFileName = a;
    try
    {
      c = new FileOutputStream(a);
      if (f.a) {
        Log.v("rcm-download", "writing " + b.mUri + " to " + a);
      }
      b(paraml, paramk);
      c();
      return;
    }
    catch (FileNotFoundException paraml)
    {
      throw new StopRequestException(492, "while opening destination file: " + paraml.toString(), paraml);
    }
  }
  
  private void a(l paraml, k paramk, byte[] paramArrayOfByte, InputStream paramInputStream)
  {
    for (;;)
    {
      int i = b(paraml, paramk, paramArrayOfByte, paramInputStream);
      if (i == -1)
      {
        g(paraml);
        a(paraml, paramk);
        return;
      }
      i = true;
      a(paraml, paramArrayOfByte, i);
      long l = l;
      l = (i + l);
      b.mCurrentBytes = l;
      g(paraml);
      if (f.b) {
        Log.v("rcm-download", "downloaded " + l + " for " + b.mUri);
      }
      f(paraml);
    }
  }
  
  private void a(l paraml, HttpResponse paramHttpResponse, int paramInt)
  {
    if (f.b) {
      Log.v("rcm-download", "got HTTP redirect " + paramInt);
    }
    if (g >= 5) {
      throw new StopRequestException(497, "too many redirects");
    }
    paramHttpResponse = paramHttpResponse.getFirstHeader("Location");
    if (paramHttpResponse == null) {
      return;
    }
    if (f.b) {
      Log.v("rcm-download", "Location :" + paramHttpResponse.getValue());
    }
    try
    {
      String str = new URI(b.mUri).resolve(new URI(paramHttpResponse.getValue())).toString();
      g += 1;
      j = str;
      if ((paramInt == 301) || (paramInt == 303)) {
        h = str;
      }
      throw new DownloadRunnable.RetryDownload(this, null);
    }
    catch (URISyntaxException paraml)
    {
      if (f.a) {
        Log.d("rcm-download", "Couldn't resolve redirect URI " + paramHttpResponse.getValue() + " for " + b.mUri);
      }
      throw new StopRequestException(495, "Couldn't resolve redirect URI");
    }
  }
  
  private void a(l paraml, HttpGet paramHttpGet)
  {
    Iterator localIterator = b.getHeaders().iterator();
    while (localIterator.hasNext())
    {
      Pair localPair = (Pair)localIterator.next();
      paramHttpGet.addHeader((String)first, (String)second);
    }
    if (n)
    {
      if (m != null) {
        paramHttpGet.addHeader("If-Match", "\"state.mHeaderETag\"");
      }
      paramHttpGet.addHeader("Range", "bytes=" + l + "-");
      if (f.a)
      {
        Log.i("rcm-download", "Adding Range header: bytes=" + l + "-");
        Log.i("rcm-download", "  totalBytes = " + k);
      }
    }
  }
  
  private void a(l paraml, byte[] paramArrayOfByte, int paramInt)
  {
    try
    {
      if (c == null) {
        c = new FileOutputStream(a, true);
      }
      r.a(b.mDestination, a, paramInt);
      c.write(paramArrayOfByte, 0, paramInt);
      return;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        if (c != null) {
          r.b(b.mDestination, a, paramInt);
        }
        if (b.mDestination == 0) {
          e(paraml);
        }
      }
    }
    finally
    {
      if (b.mDestination == 0) {
        e(paraml);
      }
    }
  }
  
  private int b(l paraml, k paramk, byte[] paramArrayOfByte, InputStream paramInputStream)
  {
    try
    {
      int i = paramInputStream.read(paramArrayOfByte);
      return i;
    }
    catch (IOException paramk)
    {
      if (h(paraml)) {
        throw new StopRequestException(489, "while reading response: " + paramk.toString() + ", can't resume interrupted download with no ETag", paramk);
      }
      throw new StopRequestException(i(paraml), "while reading response: " + paramk.toString(), paramk);
    }
  }
  
  private HttpResponse b(l paraml, a parama, HttpGet paramHttpGet)
  {
    try
    {
      parama = parama.execute(paramHttpGet);
      return parama;
    }
    catch (IllegalArgumentException paraml)
    {
      throw new StopRequestException(495, "while trying to execute request: " + paraml.toString(), paraml);
    }
    catch (IOException parama)
    {
      throw new StopRequestException(i(paraml), "while trying to execute request: " + parama.toString(), parama);
    }
  }
  
  /* Error */
  private void b()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 6
    //   3: aconst_null
    //   4: astore_2
    //   5: bipush 10
    //   7: invokestatic 523	android/os/Process:setThreadPriority	(I)V
    //   10: new 153	com/dianxinos/library/notify/download/l
    //   13: dup
    //   14: aload_0
    //   15: getfield 21	com/dianxinos/library/notify/download/DownloadRunnable:b	Lcom/dianxinos/library/notify/download/DownloadInfo;
    //   18: invokespecial 526	com/dianxinos/library/notify/download/l:<init>	(Lcom/dianxinos/library/notify/download/DownloadInfo;)V
    //   21: astore 7
    //   23: getstatic 255	com/dianxinos/library/notify/download/f:a	Z
    //   26: ifeq +35 -> 61
    //   29: ldc -22
    //   31: new 52	java/lang/StringBuilder
    //   34: dup
    //   35: invokespecial 53	java/lang/StringBuilder:<init>	()V
    //   38: ldc_w 528
    //   41: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   44: aload_0
    //   45: getfield 21	com/dianxinos/library/notify/download/DownloadRunnable:b	Lcom/dianxinos/library/notify/download/DownloadInfo;
    //   48: getfield 134	com/dianxinos/library/notify/download/DownloadInfo:mUri	Ljava/lang/String;
    //   51: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   54: invokevirtual 64	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   57: invokestatic 260	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   60: pop
    //   61: aload_0
    //   62: invokespecial 530	com/dianxinos/library/notify/download/DownloadRunnable:a	()Ljava/lang/String;
    //   65: aload_0
    //   66: getfield 19	com/dianxinos/library/notify/download/DownloadRunnable:a	Landroid/content/Context;
    //   69: invokestatic 533	com/dianxinos/library/notify/download/a:a	(Ljava/lang/String;Landroid/content/Context;)Lcom/dianxinos/library/notify/download/a;
    //   72: astore 4
    //   74: iconst_0
    //   75: istore_1
    //   76: iload_1
    //   77: ifne +538 -> 615
    //   80: aload 4
    //   82: astore_3
    //   83: aload 6
    //   85: astore_2
    //   86: ldc -22
    //   88: new 52	java/lang/StringBuilder
    //   91: dup
    //   92: invokespecial 53	java/lang/StringBuilder:<init>	()V
    //   95: ldc_w 535
    //   98: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   101: aload_0
    //   102: getfield 21	com/dianxinos/library/notify/download/DownloadRunnable:b	Lcom/dianxinos/library/notify/download/DownloadInfo;
    //   105: getfield 137	com/dianxinos/library/notify/download/DownloadInfo:mRcmId	Ljava/lang/String;
    //   108: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   111: ldc_w 537
    //   114: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   117: aload 7
    //   119: getfield 417	com/dianxinos/library/notify/download/l:j	Ljava/lang/String;
    //   122: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   125: invokevirtual 64	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   128: invokestatic 243	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   131: pop
    //   132: aload 4
    //   134: astore_3
    //   135: aload 6
    //   137: astore_2
    //   138: aload 4
    //   140: invokevirtual 541	com/dianxinos/library/notify/download/a:getParams	()Lorg/apache/http/params/HttpParams;
    //   143: aload_0
    //   144: getfield 19	com/dianxinos/library/notify/download/DownloadRunnable:a	Landroid/content/Context;
    //   147: aload 7
    //   149: getfield 417	com/dianxinos/library/notify/download/l:j	Ljava/lang/String;
    //   152: invokestatic 546	com/dianxinos/library/notify/download/p:a	(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/HttpHost;
    //   155: invokestatic 552	org/apache/http/conn/params/ConnRouteParams:setDefaultProxy	(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V
    //   158: aload 4
    //   160: astore_3
    //   161: aload 6
    //   163: astore_2
    //   164: new 456	org/apache/http/client/methods/HttpGet
    //   167: dup
    //   168: aload 7
    //   170: getfield 417	com/dianxinos/library/notify/download/l:j	Ljava/lang/String;
    //   173: invokespecial 553	org/apache/http/client/methods/HttpGet:<init>	(Ljava/lang/String;)V
    //   176: astore 5
    //   178: aload_0
    //   179: aload 7
    //   181: aload 4
    //   183: aload 5
    //   185: invokespecial 555	com/dianxinos/library/notify/download/DownloadRunnable:a	(Lcom/dianxinos/library/notify/download/l;Lcom/dianxinos/library/notify/download/a;Lorg/apache/http/client/methods/HttpGet;)V
    //   188: iconst_1
    //   189: istore_1
    //   190: aload 4
    //   192: astore_3
    //   193: aload 6
    //   195: astore_2
    //   196: aload 5
    //   198: invokevirtual 558	org/apache/http/client/methods/HttpGet:abort	()V
    //   201: goto -125 -> 76
    //   204: astore 5
    //   206: aload 4
    //   208: astore_3
    //   209: aload 6
    //   211: astore_2
    //   212: aload 5
    //   214: invokevirtual 561	com/dianxinos/library/notify/download/StopRequestException:getMessage	()Ljava/lang/String;
    //   217: astore 6
    //   219: aload 4
    //   221: astore_3
    //   222: aload 6
    //   224: astore_2
    //   225: new 52	java/lang/StringBuilder
    //   228: dup
    //   229: invokespecial 53	java/lang/StringBuilder:<init>	()V
    //   232: ldc_w 563
    //   235: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   238: aload_0
    //   239: getfield 21	com/dianxinos/library/notify/download/DownloadRunnable:b	Lcom/dianxinos/library/notify/download/DownloadInfo;
    //   242: getfield 137	com/dianxinos/library/notify/download/DownloadInfo:mRcmId	Ljava/lang/String;
    //   245: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   248: ldc_w 565
    //   251: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   254: aload 6
    //   256: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   259: invokevirtual 64	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   262: astore 8
    //   264: aload 4
    //   266: astore_3
    //   267: aload 6
    //   269: astore_2
    //   270: ldc -22
    //   272: aload 8
    //   274: invokestatic 568	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   277: pop
    //   278: aload 4
    //   280: astore_3
    //   281: aload 6
    //   283: astore_2
    //   284: getstatic 255	com/dianxinos/library/notify/download/f:a	Z
    //   287: ifeq +19 -> 306
    //   290: aload 4
    //   292: astore_3
    //   293: aload 6
    //   295: astore_2
    //   296: ldc -22
    //   298: aload 8
    //   300: aload 5
    //   302: invokestatic 571	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   305: pop
    //   306: aload 4
    //   308: astore_3
    //   309: aload 6
    //   311: astore_2
    //   312: getstatic 165	com/dianxinos/library/dxbase/e:c	Z
    //   315: ifeq +58 -> 373
    //   318: aload 4
    //   320: astore_3
    //   321: aload 6
    //   323: astore_2
    //   324: new 52	java/lang/StringBuilder
    //   327: dup
    //   328: invokespecial 53	java/lang/StringBuilder:<init>	()V
    //   331: ldc_w 573
    //   334: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   337: aload 8
    //   339: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   342: ldc_w 575
    //   345: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   348: aload 6
    //   350: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   353: ldc_w 577
    //   356: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   359: aload 5
    //   361: getfield 580	com/dianxinos/library/notify/download/StopRequestException:mFinalStatus	I
    //   364: invokevirtual 332	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   367: invokevirtual 64	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   370: invokestatic 171	com/dianxinos/library/dxbase/j:b	(Ljava/lang/String;)V
    //   373: aload 4
    //   375: astore_3
    //   376: aload 6
    //   378: astore_2
    //   379: aload 5
    //   381: getfield 580	com/dianxinos/library/notify/download/StopRequestException:mFinalStatus	I
    //   384: istore_1
    //   385: aload 4
    //   387: ifnull +8 -> 395
    //   390: aload 4
    //   392: invokevirtual 582	com/dianxinos/library/notify/download/a:a	()V
    //   395: aload_0
    //   396: aload 7
    //   398: iload_1
    //   399: invokespecial 584	com/dianxinos/library/notify/download/DownloadRunnable:a	(Lcom/dianxinos/library/notify/download/l;I)V
    //   402: aload_0
    //   403: iload_1
    //   404: aload 7
    //   406: getfield 586	com/dianxinos/library/notify/download/l:e	Z
    //   409: aload 7
    //   411: getfield 588	com/dianxinos/library/notify/download/l:f	I
    //   414: aload 7
    //   416: getfield 369	com/dianxinos/library/notify/download/l:i	Z
    //   419: aload 7
    //   421: getfield 189	com/dianxinos/library/notify/download/l:a	Ljava/lang/String;
    //   424: aload 7
    //   426: getfield 419	com/dianxinos/library/notify/download/l:h	Ljava/lang/String;
    //   429: aload 7
    //   431: getfield 590	com/dianxinos/library/notify/download/l:d	Ljava/lang/String;
    //   434: aload 6
    //   436: invokespecial 592	com/dianxinos/library/notify/download/DownloadRunnable:a	(IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   439: aload_0
    //   440: getfield 21	com/dianxinos/library/notify/download/DownloadRunnable:b	Lcom/dianxinos/library/notify/download/DownloadInfo;
    //   443: getfield 137	com/dianxinos/library/notify/download/DownloadInfo:mRcmId	Ljava/lang/String;
    //   446: astore_2
    //   447: aload_0
    //   448: iload_1
    //   449: aload_2
    //   450: invokespecial 594	com/dianxinos/library/notify/download/DownloadRunnable:a	(ILjava/lang/String;)V
    //   453: return
    //   454: astore 8
    //   456: aload 4
    //   458: astore_3
    //   459: aload 6
    //   461: astore_2
    //   462: aload 5
    //   464: invokevirtual 558	org/apache/http/client/methods/HttpGet:abort	()V
    //   467: aload 4
    //   469: astore_3
    //   470: aload 6
    //   472: astore_2
    //   473: aload 8
    //   475: athrow
    //   476: astore 5
    //   478: aload 4
    //   480: astore_3
    //   481: aload 6
    //   483: astore_2
    //   484: aload 5
    //   486: invokevirtual 595	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   489: astore 6
    //   491: aload 4
    //   493: astore_3
    //   494: aload 6
    //   496: astore_2
    //   497: ldc -22
    //   499: new 52	java/lang/StringBuilder
    //   502: dup
    //   503: invokespecial 53	java/lang/StringBuilder:<init>	()V
    //   506: ldc_w 597
    //   509: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   512: aload_0
    //   513: getfield 21	com/dianxinos/library/notify/download/DownloadRunnable:b	Lcom/dianxinos/library/notify/download/DownloadInfo;
    //   516: getfield 137	com/dianxinos/library/notify/download/DownloadInfo:mRcmId	Ljava/lang/String;
    //   519: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   522: ldc_w 565
    //   525: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   528: aload 6
    //   530: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   533: invokevirtual 64	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   536: aload 5
    //   538: invokestatic 571	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   541: pop
    //   542: aload 4
    //   544: ifnull +8 -> 552
    //   547: aload 4
    //   549: invokevirtual 582	com/dianxinos/library/notify/download/a:a	()V
    //   552: aload_0
    //   553: aload 7
    //   555: sipush 491
    //   558: invokespecial 584	com/dianxinos/library/notify/download/DownloadRunnable:a	(Lcom/dianxinos/library/notify/download/l;I)V
    //   561: aload_0
    //   562: sipush 491
    //   565: aload 7
    //   567: getfield 586	com/dianxinos/library/notify/download/l:e	Z
    //   570: aload 7
    //   572: getfield 588	com/dianxinos/library/notify/download/l:f	I
    //   575: aload 7
    //   577: getfield 369	com/dianxinos/library/notify/download/l:i	Z
    //   580: aload 7
    //   582: getfield 189	com/dianxinos/library/notify/download/l:a	Ljava/lang/String;
    //   585: aload 7
    //   587: getfield 419	com/dianxinos/library/notify/download/l:h	Ljava/lang/String;
    //   590: aload 7
    //   592: getfield 590	com/dianxinos/library/notify/download/l:d	Ljava/lang/String;
    //   595: aload 6
    //   597: invokespecial 592	com/dianxinos/library/notify/download/DownloadRunnable:a	(IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   600: aload_0
    //   601: sipush 491
    //   604: aload_0
    //   605: getfield 21	com/dianxinos/library/notify/download/DownloadRunnable:b	Lcom/dianxinos/library/notify/download/DownloadInfo;
    //   608: getfield 137	com/dianxinos/library/notify/download/DownloadInfo:mRcmId	Ljava/lang/String;
    //   611: invokespecial 594	com/dianxinos/library/notify/download/DownloadRunnable:a	(ILjava/lang/String;)V
    //   614: return
    //   615: aload 4
    //   617: astore_3
    //   618: aload 6
    //   620: astore_2
    //   621: getstatic 255	com/dianxinos/library/notify/download/f:a	Z
    //   624: ifeq +41 -> 665
    //   627: aload 4
    //   629: astore_3
    //   630: aload 6
    //   632: astore_2
    //   633: ldc -22
    //   635: new 52	java/lang/StringBuilder
    //   638: dup
    //   639: invokespecial 53	java/lang/StringBuilder:<init>	()V
    //   642: ldc_w 599
    //   645: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   648: aload_0
    //   649: getfield 21	com/dianxinos/library/notify/download/DownloadRunnable:b	Lcom/dianxinos/library/notify/download/DownloadInfo;
    //   652: getfield 134	com/dianxinos/library/notify/download/DownloadInfo:mUri	Ljava/lang/String;
    //   655: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   658: invokevirtual 64	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   661: invokestatic 260	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   664: pop
    //   665: aload 4
    //   667: astore_3
    //   668: aload 6
    //   670: astore_2
    //   671: aload_0
    //   672: aload 7
    //   674: invokespecial 601	com/dianxinos/library/notify/download/DownloadRunnable:c	(Lcom/dianxinos/library/notify/download/l;)V
    //   677: aload 4
    //   679: astore_3
    //   680: aload 6
    //   682: astore_2
    //   683: aload_0
    //   684: aload 7
    //   686: invokespecial 603	com/dianxinos/library/notify/download/DownloadRunnable:d	(Lcom/dianxinos/library/notify/download/l;)Z
    //   689: pop
    //   690: sipush 200
    //   693: istore_1
    //   694: aload 4
    //   696: ifnull +8 -> 704
    //   699: aload 4
    //   701: invokevirtual 582	com/dianxinos/library/notify/download/a:a	()V
    //   704: aload_0
    //   705: aload 7
    //   707: sipush 200
    //   710: invokespecial 584	com/dianxinos/library/notify/download/DownloadRunnable:a	(Lcom/dianxinos/library/notify/download/l;I)V
    //   713: aload_0
    //   714: sipush 200
    //   717: aload 7
    //   719: getfield 586	com/dianxinos/library/notify/download/l:e	Z
    //   722: aload 7
    //   724: getfield 588	com/dianxinos/library/notify/download/l:f	I
    //   727: aload 7
    //   729: getfield 369	com/dianxinos/library/notify/download/l:i	Z
    //   732: aload 7
    //   734: getfield 189	com/dianxinos/library/notify/download/l:a	Ljava/lang/String;
    //   737: aload 7
    //   739: getfield 419	com/dianxinos/library/notify/download/l:h	Ljava/lang/String;
    //   742: aload 7
    //   744: getfield 590	com/dianxinos/library/notify/download/l:d	Ljava/lang/String;
    //   747: aconst_null
    //   748: invokespecial 592	com/dianxinos/library/notify/download/DownloadRunnable:a	(IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   751: aload_0
    //   752: getfield 21	com/dianxinos/library/notify/download/DownloadRunnable:b	Lcom/dianxinos/library/notify/download/DownloadInfo;
    //   755: getfield 137	com/dianxinos/library/notify/download/DownloadInfo:mRcmId	Ljava/lang/String;
    //   758: astore_2
    //   759: goto -312 -> 447
    //   762: astore 4
    //   764: aconst_null
    //   765: astore_3
    //   766: aload_3
    //   767: ifnull +7 -> 774
    //   770: aload_3
    //   771: invokevirtual 582	com/dianxinos/library/notify/download/a:a	()V
    //   774: aload_0
    //   775: aload 7
    //   777: sipush 491
    //   780: invokespecial 584	com/dianxinos/library/notify/download/DownloadRunnable:a	(Lcom/dianxinos/library/notify/download/l;I)V
    //   783: aload_0
    //   784: sipush 491
    //   787: aload 7
    //   789: getfield 586	com/dianxinos/library/notify/download/l:e	Z
    //   792: aload 7
    //   794: getfield 588	com/dianxinos/library/notify/download/l:f	I
    //   797: aload 7
    //   799: getfield 369	com/dianxinos/library/notify/download/l:i	Z
    //   802: aload 7
    //   804: getfield 189	com/dianxinos/library/notify/download/l:a	Ljava/lang/String;
    //   807: aload 7
    //   809: getfield 419	com/dianxinos/library/notify/download/l:h	Ljava/lang/String;
    //   812: aload 7
    //   814: getfield 590	com/dianxinos/library/notify/download/l:d	Ljava/lang/String;
    //   817: aload_2
    //   818: invokespecial 592	com/dianxinos/library/notify/download/DownloadRunnable:a	(IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   821: aload_0
    //   822: sipush 491
    //   825: aload_0
    //   826: getfield 21	com/dianxinos/library/notify/download/DownloadRunnable:b	Lcom/dianxinos/library/notify/download/DownloadInfo;
    //   829: getfield 137	com/dianxinos/library/notify/download/DownloadInfo:mRcmId	Ljava/lang/String;
    //   832: invokespecial 594	com/dianxinos/library/notify/download/DownloadRunnable:a	(ILjava/lang/String;)V
    //   835: aload 4
    //   837: athrow
    //   838: astore_2
    //   839: aload 4
    //   841: astore_3
    //   842: aload 6
    //   844: astore_2
    //   845: aload 5
    //   847: invokevirtual 558	org/apache/http/client/methods/HttpGet:abort	()V
    //   850: goto -774 -> 76
    //   853: astore 4
    //   855: goto -89 -> 766
    //   858: astore 5
    //   860: aconst_null
    //   861: astore 4
    //   863: goto -385 -> 478
    //   866: astore 5
    //   868: aconst_null
    //   869: astore 4
    //   871: goto -665 -> 206
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	874	0	this	DownloadRunnable
    //   75	619	1	i	int
    //   4	814	2	str1	String
    //   838	1	2	localRetryDownload	DownloadRunnable.RetryDownload
    //   844	1	2	str2	String
    //   82	760	3	localObject1	Object
    //   72	628	4	locala	a
    //   762	78	4	localObject2	Object
    //   853	1	4	localObject3	Object
    //   861	9	4	localObject4	Object
    //   176	21	5	localHttpGet	HttpGet
    //   204	259	5	localStopRequestException1	StopRequestException
    //   476	370	5	localThrowable1	Throwable
    //   858	1	5	localThrowable2	Throwable
    //   866	1	5	localStopRequestException2	StopRequestException
    //   1	842	6	str3	String
    //   21	792	7	locall	l
    //   262	76	8	str4	String
    //   454	20	8	localObject5	Object
    // Exception table:
    //   from	to	target	type
    //   86	132	204	com/dianxinos/library/notify/download/StopRequestException
    //   138	158	204	com/dianxinos/library/notify/download/StopRequestException
    //   164	178	204	com/dianxinos/library/notify/download/StopRequestException
    //   196	201	204	com/dianxinos/library/notify/download/StopRequestException
    //   462	467	204	com/dianxinos/library/notify/download/StopRequestException
    //   473	476	204	com/dianxinos/library/notify/download/StopRequestException
    //   621	627	204	com/dianxinos/library/notify/download/StopRequestException
    //   633	665	204	com/dianxinos/library/notify/download/StopRequestException
    //   671	677	204	com/dianxinos/library/notify/download/StopRequestException
    //   683	690	204	com/dianxinos/library/notify/download/StopRequestException
    //   845	850	204	com/dianxinos/library/notify/download/StopRequestException
    //   178	188	454	finally
    //   86	132	476	java/lang/Throwable
    //   138	158	476	java/lang/Throwable
    //   164	178	476	java/lang/Throwable
    //   196	201	476	java/lang/Throwable
    //   462	467	476	java/lang/Throwable
    //   473	476	476	java/lang/Throwable
    //   621	627	476	java/lang/Throwable
    //   633	665	476	java/lang/Throwable
    //   671	677	476	java/lang/Throwable
    //   683	690	476	java/lang/Throwable
    //   845	850	476	java/lang/Throwable
    //   23	61	762	finally
    //   61	74	762	finally
    //   178	188	838	com/dianxinos/library/notify/download/DownloadRunnable$RetryDownload
    //   86	132	853	finally
    //   138	158	853	finally
    //   164	178	853	finally
    //   196	201	853	finally
    //   212	219	853	finally
    //   225	264	853	finally
    //   270	278	853	finally
    //   284	290	853	finally
    //   296	306	853	finally
    //   312	318	853	finally
    //   324	373	853	finally
    //   379	385	853	finally
    //   462	467	853	finally
    //   473	476	853	finally
    //   484	491	853	finally
    //   497	542	853	finally
    //   621	627	853	finally
    //   633	665	853	finally
    //   671	677	853	finally
    //   683	690	853	finally
    //   845	850	853	finally
    //   23	61	858	java/lang/Throwable
    //   61	74	858	java/lang/Throwable
    //   23	61	866	com/dianxinos/library/notify/download/StopRequestException
    //   61	74	866	com/dianxinos/library/notify/download/StopRequestException
  }
  
  private void b(int paramInt1, boolean paramBoolean1, int paramInt2, boolean paramBoolean2, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    paramString1 = com.dianxinos.library.notify.a.a();
    a = b.mRcmId;
    b = b.mUri;
    c = b.mCacheFileName;
    d = b.mCompleteFileName;
    e = b.mTotalBytes;
    f = b.mCurrentBytes;
    g = b.mControl;
    h = paramInt1;
    c.a(paramString1);
  }
  
  private void b(l paraml, k paramk)
  {
    if (!TextUtils.isEmpty(m)) {
      b.mETag = m;
    }
    if (!TextUtils.isEmpty(d)) {
      b.mMimeType = d;
    }
    com.dianxinos.library.notify.h.a.a(b);
  }
  
  private void b(l paraml, k paramk, HttpResponse paramHttpResponse)
  {
    Object localObject = paramHttpResponse.getFirstHeader("Content-Disposition");
    if (localObject != null) {
      b = ((Header)localObject).getValue();
    }
    localObject = paramHttpResponse.getFirstHeader("Content-Location");
    if (localObject != null) {
      c = ((Header)localObject).getValue();
    }
    if (d == null)
    {
      localObject = paramHttpResponse.getFirstHeader("Content-Type");
      if (localObject != null) {
        d = c(((Header)localObject).getValue());
      }
    }
    localObject = paramHttpResponse.getFirstHeader("ETag");
    if (localObject != null) {
      m = ((Header)localObject).getValue();
    }
    localObject = null;
    Header localHeader = paramHttpResponse.getFirstHeader("Transfer-Encoding");
    if (localHeader != null) {
      localObject = localHeader.getValue();
    }
    if (localObject == null)
    {
      paramHttpResponse = paramHttpResponse.getFirstHeader("Content-Length");
      if (paramHttpResponse != null)
      {
        a = paramHttpResponse.getValue();
        paramHttpResponse = b;
        long l = Long.parseLong(a);
        mTotalBytes = l;
        k = l;
      }
    }
    for (;;)
    {
      if (f.b)
      {
        Log.v("rcm-download", "Content-Disposition: " + b);
        Log.v("rcm-download", "Content-Length: " + a);
        Log.v("rcm-download", "Content-Location: " + c);
        Log.v("rcm-download", "Content-Type: " + d);
        Log.v("rcm-download", "ETag: " + m);
        Log.v("rcm-download", "Transfer-Encoding: " + (String)localObject);
      }
      return;
      if (f.b) {
        Log.v("rcm-download", "ignoring content-length because of xfer-encoding");
      }
    }
  }
  
  private void b(l paraml, HttpResponse paramHttpResponse)
  {
    if (f.b) {
      Log.v("rcm-download", "got HTTP response code 503");
    }
    e = true;
    paramHttpResponse = paramHttpResponse.getFirstHeader("Retry-After");
    if (paramHttpResponse != null) {}
    try
    {
      if (f.b) {
        Log.v("rcm-download", "Retry-After :" + paramHttpResponse.getValue());
      }
      f = Integer.parseInt(paramHttpResponse.getValue());
      if (f >= 0) {
        break label110;
      }
      f = 0;
    }
    catch (NumberFormatException paraml)
    {
      for (;;) {}
    }
    throw new StopRequestException(194, "got 503 Service Unavailable, will retry later");
    label110:
    if (f < 30) {
      f = 30;
    }
    for (;;)
    {
      f += o.a.nextInt(31);
      f *= 1000;
      break;
      if (f > 86400) {
        f = 86400;
      }
    }
  }
  
  /* Error */
  private void b(String paramString)
  {
    // Byte code:
    //   0: new 349	java/io/FileOutputStream
    //   3: dup
    //   4: aload_1
    //   5: iconst_1
    //   6: invokespecial 480	java/io/FileOutputStream:<init>	(Ljava/lang/String;Z)V
    //   9: astore_3
    //   10: aload_3
    //   11: astore_2
    //   12: aload_3
    //   13: invokevirtual 695	java/io/FileOutputStream:getFD	()Ljava/io/FileDescriptor;
    //   16: invokevirtual 700	java/io/FileDescriptor:sync	()V
    //   19: aload_3
    //   20: ifnull +7 -> 27
    //   23: aload_3
    //   24: invokevirtual 703	java/io/FileOutputStream:close	()V
    //   27: return
    //   28: astore 4
    //   30: aconst_null
    //   31: astore_3
    //   32: aload_3
    //   33: astore_2
    //   34: ldc -22
    //   36: new 52	java/lang/StringBuilder
    //   39: dup
    //   40: invokespecial 53	java/lang/StringBuilder:<init>	()V
    //   43: ldc_w 705
    //   46: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   49: aload_1
    //   50: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   53: ldc_w 707
    //   56: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   59: aload 4
    //   61: invokevirtual 710	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   64: invokevirtual 64	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   67: invokestatic 568	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   70: pop
    //   71: aload_3
    //   72: ifnull -45 -> 27
    //   75: aload_3
    //   76: invokevirtual 703	java/io/FileOutputStream:close	()V
    //   79: return
    //   80: astore_1
    //   81: ldc -22
    //   83: ldc_w 712
    //   86: aload_1
    //   87: invokestatic 571	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   90: pop
    //   91: return
    //   92: astore 4
    //   94: aconst_null
    //   95: astore_3
    //   96: aload_3
    //   97: astore_2
    //   98: ldc -22
    //   100: new 52	java/lang/StringBuilder
    //   103: dup
    //   104: invokespecial 53	java/lang/StringBuilder:<init>	()V
    //   107: ldc_w 705
    //   110: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   113: aload_1
    //   114: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   117: ldc_w 714
    //   120: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   123: aload 4
    //   125: invokevirtual 710	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   128: invokevirtual 64	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   131: invokestatic 568	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   134: pop
    //   135: aload_3
    //   136: ifnull -109 -> 27
    //   139: aload_3
    //   140: invokevirtual 703	java/io/FileOutputStream:close	()V
    //   143: return
    //   144: astore_1
    //   145: goto -64 -> 81
    //   148: astore 4
    //   150: aconst_null
    //   151: astore_3
    //   152: aload_3
    //   153: astore_2
    //   154: ldc -22
    //   156: new 52	java/lang/StringBuilder
    //   159: dup
    //   160: invokespecial 53	java/lang/StringBuilder:<init>	()V
    //   163: ldc_w 716
    //   166: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   169: aload_1
    //   170: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   173: ldc_w 565
    //   176: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   179: aload 4
    //   181: invokevirtual 710	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   184: invokevirtual 64	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   187: invokestatic 568	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   190: pop
    //   191: aload_3
    //   192: ifnull -165 -> 27
    //   195: aload_3
    //   196: invokevirtual 703	java/io/FileOutputStream:close	()V
    //   199: return
    //   200: astore_1
    //   201: goto -120 -> 81
    //   204: astore_1
    //   205: aconst_null
    //   206: astore_3
    //   207: aload_3
    //   208: astore_2
    //   209: ldc -22
    //   211: ldc_w 718
    //   214: aload_1
    //   215: invokestatic 571	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   218: pop
    //   219: aload_3
    //   220: ifnull -193 -> 27
    //   223: aload_3
    //   224: invokevirtual 703	java/io/FileOutputStream:close	()V
    //   227: return
    //   228: astore_1
    //   229: goto -148 -> 81
    //   232: astore_1
    //   233: aconst_null
    //   234: astore_2
    //   235: aload_2
    //   236: ifnull +7 -> 243
    //   239: aload_2
    //   240: invokevirtual 703	java/io/FileOutputStream:close	()V
    //   243: aload_1
    //   244: athrow
    //   245: astore_2
    //   246: ldc -22
    //   248: ldc_w 712
    //   251: aload_2
    //   252: invokestatic 571	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   255: pop
    //   256: goto -13 -> 243
    //   259: astore_2
    //   260: ldc -22
    //   262: ldc_w 720
    //   265: aload_2
    //   266: invokestatic 571	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   269: pop
    //   270: goto -27 -> 243
    //   273: astore_1
    //   274: ldc -22
    //   276: ldc_w 720
    //   279: aload_1
    //   280: invokestatic 571	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   283: pop
    //   284: return
    //   285: astore_1
    //   286: goto -12 -> 274
    //   289: astore_1
    //   290: goto -16 -> 274
    //   293: astore_1
    //   294: goto -20 -> 274
    //   297: astore_1
    //   298: goto -217 -> 81
    //   301: astore_1
    //   302: goto -28 -> 274
    //   305: astore_1
    //   306: goto -71 -> 235
    //   309: astore_1
    //   310: goto -103 -> 207
    //   313: astore 4
    //   315: goto -163 -> 152
    //   318: astore 4
    //   320: goto -224 -> 96
    //   323: astore 4
    //   325: goto -293 -> 32
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	328	0	this	DownloadRunnable
    //   0	328	1	paramString	String
    //   11	229	2	localFileOutputStream1	FileOutputStream
    //   245	7	2	localIOException1	IOException
    //   259	7	2	localRuntimeException	RuntimeException
    //   9	215	3	localFileOutputStream2	FileOutputStream
    //   28	32	4	localFileNotFoundException1	FileNotFoundException
    //   92	32	4	localSyncFailedException1	java.io.SyncFailedException
    //   148	32	4	localIOException2	IOException
    //   313	1	4	localIOException3	IOException
    //   318	1	4	localSyncFailedException2	java.io.SyncFailedException
    //   323	1	4	localFileNotFoundException2	FileNotFoundException
    // Exception table:
    //   from	to	target	type
    //   0	10	28	java/io/FileNotFoundException
    //   75	79	80	java/io/IOException
    //   0	10	92	java/io/SyncFailedException
    //   139	143	144	java/io/IOException
    //   0	10	148	java/io/IOException
    //   195	199	200	java/io/IOException
    //   0	10	204	java/lang/RuntimeException
    //   223	227	228	java/io/IOException
    //   0	10	232	finally
    //   239	243	245	java/io/IOException
    //   239	243	259	java/lang/RuntimeException
    //   75	79	273	java/lang/RuntimeException
    //   139	143	285	java/lang/RuntimeException
    //   195	199	289	java/lang/RuntimeException
    //   223	227	293	java/lang/RuntimeException
    //   23	27	297	java/io/IOException
    //   23	27	301	java/lang/RuntimeException
    //   12	19	305	finally
    //   34	71	305	finally
    //   98	135	305	finally
    //   154	191	305	finally
    //   209	219	305	finally
    //   12	19	309	java/lang/RuntimeException
    //   12	19	313	java/io/IOException
    //   12	19	318	java/io/SyncFailedException
    //   12	19	323	java/io/FileNotFoundException
  }
  
  private boolean b(l paraml)
  {
    Object localObject;
    long l;
    if (!TextUtils.isEmpty(b))
    {
      localObject = new File(b);
      if ((((File)localObject).exists()) && (((File)localObject).isFile()))
      {
        l = ((File)localObject).length();
        l = l;
        k = l;
        b.mCurrentBytes = l;
        b.mTotalBytes = l;
        b.mStatus = 200;
        Log.d("rcm-download", "Skipping initializing request for download " + b.mRcmId + " : " + b.mUri + " alreay save to complete folder");
        return true;
      }
    }
    else
    {
      localObject = o.b(b.mUri, b.mRcmId);
      File localFile = new File((String)localObject);
      if ((localFile.exists()) && (localFile.isFile()))
      {
        b.mCompleteFileName = ((String)localObject);
        b = ((String)localObject);
        l = localFile.length();
        l = l;
        k = l;
        b.mCurrentBytes = l;
        b.mTotalBytes = l;
        b.mStatus = 200;
        com.dianxinos.library.notify.h.a.a(b);
        Log.d("rcm-download", "Skipping initializing request for download " + b.mRcmId + " : " + b.mUri + " already save to complete folder");
        return true;
      }
    }
    return false;
  }
  
  private static String c(String paramString)
  {
    try
    {
      String str = paramString.trim().toLowerCase(Locale.ENGLISH);
      int i = str.indexOf(';');
      paramString = str;
      if (i != -1) {
        paramString = str.substring(0, i);
      }
      return paramString;
    }
    catch (NullPointerException paramString) {}
    return null;
  }
  
  private void c()
  {
    int i = 196;
    int j = b.checkCanUseNetwork();
    if (j != 1) {
      if (j != 3) {}
    }
    for (;;)
    {
      throw new StopRequestException(i, b.getLogMessageForNetworkError(j));
      if (j != 4) {
        if (j == 7) {
          i = 498;
        } else if (j == 8) {
          i = 191;
        } else {
          i = 195;
        }
      }
    }
  }
  
  private void c(l paraml)
  {
    if (a != null) {
      b(a);
    }
  }
  
  private void c(l paraml, k paramk)
  {
    long l;
    if (!TextUtils.isEmpty(a))
    {
      if (f.a) {
        Log.i("rcm-download", "have run thread before for id: " + b.mRcmId + ", and state.mFilename: " + a);
      }
      if (!o.a(a, r.a())) {
        throw new StopRequestException(492, "found invalid internal destination filename");
      }
      File localFile = new File(a);
      if (localFile.exists())
      {
        if (f.a) {
          Log.i("rcm-download", "resuming download for id: " + b.mRcmId + ", and state.mFilename: " + a);
        }
        l = localFile.length();
        if (l != 0L) {
          break label258;
        }
        localFile.delete();
        a = null;
        b.mCacheFileName = null;
        if (f.a) {
          Log.i("rcm-download", "resuming download for id: " + b.mRcmId + ", BUT starting from scratch again: ");
        }
      }
    }
    for (;;)
    {
      if ((c != null) && (b.mDestination == 0)) {
        e(paraml);
      }
      return;
      label258:
      if (f.a) {
        Log.i("rcm-download", "resuming download for id: " + b.mRcmId + ", and starting with file of length: " + l);
      }
      try
      {
        c = new FileOutputStream(a, true);
        l = ((int)l);
        b.mCurrentBytes = l;
        if (b.mTotalBytes != -1L) {
          a = Long.toString(b.mTotalBytes);
        }
        m = b.mETag;
        n = true;
        if (!f.a) {
          continue;
        }
        Log.i("rcm-download", "resuming download for id: " + b.mRcmId + ", state.mCurrentBytes: " + l + ", and setting mContinuingDownload to true: ");
      }
      catch (FileNotFoundException paraml)
      {
        throw new StopRequestException(492, "while opening destination for resuming: " + paraml.toString(), paraml);
      }
    }
  }
  
  private void c(l paraml, k paramk, HttpResponse paramHttpResponse)
  {
    int j = paramHttpResponse.getStatusLine().getStatusCode();
    if ((j == 503) && (b.mNumFailed < 5)) {
      b(paraml, paramHttpResponse);
    }
    if ((j == 301) || (j == 302) || (j == 303) || (j == 307)) {
      a(paraml, paramHttpResponse, j);
    }
    if (f.a) {
      Log.i("rcm-download", "recevd_status = " + j + ", mContinuingDownload = " + n);
    }
    if (n) {}
    for (int i = 206;; i = 200)
    {
      if (j != i) {
        a(paraml, paramk, j);
      }
      return;
    }
  }
  
  private boolean d(l paraml)
  {
    boolean bool3 = true;
    boolean bool2 = true;
    boolean bool1 = true;
    if (TextUtils.isEmpty(a)) {
      bool1 = false;
    }
    File localFile1;
    do
    {
      return bool1;
      localFile1 = new File(a);
      if ((!localFile1.exists()) || (!localFile1.isFile())) {
        return false;
      }
      if (TextUtils.isEmpty(b))
      {
        localObject = o.b(b.mUri, b.mRcmId);
        File localFile2 = new File((String)localObject);
        if (localFile2.exists()) {
          localFile2.delete();
        }
        if (localFile1.renameTo(localFile2))
        {
          b((String)localObject);
          b = ((String)localObject);
          b.mCompleteFileName = ((String)localObject);
        }
        for (bool1 = bool3;; bool1 = false)
        {
          com.dianxinos.library.notify.h.a.a(b);
          return bool1;
          b = null;
          b.mCompleteFileName = null;
        }
      }
      localObject = new File(b);
      if (!((File)localObject).exists()) {
        break;
      }
    } while (((File)localObject).isFile());
    ((File)localObject).delete();
    Object localObject = o.b(b.mUri, b.mRcmId);
    if (localFile1.renameTo(new File((String)localObject)))
    {
      b((String)localObject);
      b = ((String)localObject);
      b.mCompleteFileName = ((String)localObject);
    }
    for (bool1 = bool2;; bool1 = false)
    {
      com.dianxinos.library.notify.h.a.a(b);
      return bool1;
      b = null;
      b.mCompleteFileName = null;
    }
  }
  
  private void e(l paraml)
  {
    try
    {
      if (c != null)
      {
        c.close();
        c = null;
      }
      return;
    }
    catch (IOException paraml)
    {
      while (!f.a) {}
      Log.v("rcm-download", "exception when closing the file after download : " + paraml);
    }
  }
  
  private void f(l arg1)
  {
    synchronized (b)
    {
      if (b.mControl == 1) {
        throw new StopRequestException(193, "download paused by owner");
      }
    }
    if (b.mStatus == 490) {
      throw new StopRequestException(490, "download canceled");
    }
  }
  
  private void g(l paraml)
  {
    long l = System.currentTimeMillis();
    if (((l - o > 4096L) && (l - p > 1500L)) || (l == k))
    {
      com.dianxinos.library.notify.a locala = com.dianxinos.library.notify.a.a();
      a = b.mRcmId;
      b = b.mUri;
      c = a;
      d = b;
      e = b.mTotalBytes;
      f = l;
      g = b.mControl;
      h = b.mStatus;
      c.a(locala);
      o = l;
      p = l;
    }
  }
  
  private boolean h(l paraml)
  {
    return false;
  }
  
  private int i(l paraml)
  {
    int i = b.checkCanUseNetwork();
    if (i != 1)
    {
      switch (i)
      {
      case 5: 
      case 6: 
      default: 
        return 195;
      case 3: 
      case 4: 
        return 196;
      }
      return 498;
    }
    if (b.mNumFailed < 5)
    {
      e = true;
      return 194;
    }
    Log.w("rcm-download", "reached max retries for " + b.mRcmId);
    return 495;
  }
  
  public void run()
  {
    int i = 1;
    Object localObject3 = null;
    PowerManager.WakeLock localWakeLock = null;
    localObject1 = localObject3;
    for (;;)
    {
      try
      {
        String str = a.getPackageName();
        localObject1 = localObject3;
        if (a.getPackageManager().checkPermission("android.permission.WAKE_LOCK", str) != 0) {
          continue;
        }
        if (i != 0)
        {
          localObject1 = localObject3;
          localWakeLock = ((PowerManager)a.getSystemService("power")).newWakeLock(1, "rcm-download");
          localObject1 = localWakeLock;
          localWakeLock.acquire();
        }
        localObject1 = localWakeLock;
        b();
        if (localWakeLock != null) {
          localWakeLock.release();
        }
        if (com.dianxinos.library.dxbase.e.c) {
          com.dianxinos.library.dxbase.j.b("download info extras is : " + b.mExtras + ", uri is : " + b.mUri);
        }
        if ((!"preload_bkg".equals(b.mExtras)) && (!"preload_file".equals(b.mExtras))) {
          continue;
        }
        bool = com.dianxinos.library.notify.dispatcher.a.a().b(o.c(b.mRcmId, b.mUri));
        if (com.dianxinos.library.dxbase.e.c) {
          com.dianxinos.library.dxbase.j.b("dequeue preload success: " + bool);
        }
      }
      finally
      {
        if (localObject1 == null) {
          continue;
        }
        ((PowerManager.WakeLock)localObject1).release();
        if (!com.dianxinos.library.dxbase.e.c) {
          continue;
        }
        com.dianxinos.library.dxbase.j.b("download info extras is : " + b.mExtras + ", uri is : " + b.mUri);
        if ((!"preload_bkg".equals(b.mExtras)) && (!"preload_file".equals(b.mExtras))) {
          continue;
        }
        boolean bool = com.dianxinos.library.notify.dispatcher.a.a().b(o.c(b.mRcmId, b.mUri));
        if (!com.dianxinos.library.dxbase.e.c) {
          continue;
        }
        com.dianxinos.library.dxbase.j.b("dequeue preload success: " + bool);
        b.a().a(b);
        throw ((Throwable)localObject2);
        bool = com.dianxinos.library.notify.dispatcher.a.b().b(o.c(b.mRcmId, b.mUri));
        if (!com.dianxinos.library.dxbase.e.c) {
          continue;
        }
        com.dianxinos.library.dxbase.j.b("dequeue download success: " + bool);
        continue;
        bool = com.dianxinos.library.notify.dispatcher.a.b().b(o.c(b.mRcmId, b.mUri));
        if (!com.dianxinos.library.dxbase.e.c) {
          continue;
        }
        com.dianxinos.library.dxbase.j.b("dequeue download success: " + bool);
        continue;
      }
      b.a().a(b);
      return;
      i = 0;
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.download.DownloadRunnable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */