package com.facebook.ads.internal.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.widget.ImageView;
import com.facebook.ads.internal.view.f;

public class k
  extends AsyncTask<String, Void, Bitmap[]>
{
  private static final String a = k.class.getSimpleName();
  private final Context b;
  private final ImageView c;
  private final f d;
  private l e;
  
  public k(Context paramContext)
  {
    b = paramContext;
    d = null;
    c = null;
  }
  
  public k(ImageView paramImageView)
  {
    b = paramImageView.getContext();
    d = null;
    c = paramImageView;
  }
  
  public k(f paramf)
  {
    b = paramf.getContext();
    d = paramf;
    c = null;
  }
  
  public k a(l paraml)
  {
    e = paraml;
    return this;
  }
  
  protected void a(Bitmap[] paramArrayOfBitmap)
  {
    if (c != null) {
      c.setImageBitmap(paramArrayOfBitmap[0]);
    }
    if (d != null) {
      d.a(paramArrayOfBitmap[0], paramArrayOfBitmap[1]);
    }
    if (e != null) {
      e.a();
    }
  }
  
  /* Error */
  protected Bitmap[] a(String... paramVarArgs)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aload_1
    //   4: iconst_0
    //   5: aaload
    //   6: astore 5
    //   8: aload_0
    //   9: getfield 32	com/facebook/ads/internal/util/k:b	Landroid/content/Context;
    //   12: aload 5
    //   14: invokestatic 70	com/facebook/ads/internal/util/m:a	(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    //   17: astore_1
    //   18: aload_1
    //   19: astore_2
    //   20: aload_1
    //   21: ifnonnull +70 -> 91
    //   24: aload_1
    //   25: astore_2
    //   26: invokestatic 75	com/facebook/ads/internal/util/g:b	()Lorg/apache/http/client/HttpClient;
    //   29: new 77	org/apache/http/client/methods/HttpGet
    //   32: dup
    //   33: aload 5
    //   35: invokespecial 80	org/apache/http/client/methods/HttpGet:<init>	(Ljava/lang/String;)V
    //   38: invokeinterface 86 2 0
    //   43: invokeinterface 92 1 0
    //   48: astore_3
    //   49: aload_1
    //   50: astore_2
    //   51: aload_3
    //   52: invokestatic 98	org/apache/http/util/EntityUtils:toByteArray	(Lorg/apache/http/HttpEntity;)[B
    //   55: astore 6
    //   57: aload_1
    //   58: astore_2
    //   59: aload 6
    //   61: iconst_0
    //   62: aload 6
    //   64: arraylength
    //   65: invokestatic 104	android/graphics/BitmapFactory:decodeByteArray	([BII)Landroid/graphics/Bitmap;
    //   68: astore_1
    //   69: aload_1
    //   70: astore_2
    //   71: aload_3
    //   72: invokeinterface 109 1 0
    //   77: aload_1
    //   78: astore_2
    //   79: aload_0
    //   80: getfield 32	com/facebook/ads/internal/util/k:b	Landroid/content/Context;
    //   83: aload 5
    //   85: aload_1
    //   86: invokestatic 112	com/facebook/ads/internal/util/m:a	(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    //   89: aload_1
    //   90: astore_2
    //   91: aload_2
    //   92: astore_1
    //   93: aload_0
    //   94: getfield 34	com/facebook/ads/internal/util/k:d	Lcom/facebook/ads/internal/view/f;
    //   97: astore 6
    //   99: aload 4
    //   101: astore_2
    //   102: aload_1
    //   103: astore_3
    //   104: aload 6
    //   106: ifnull +44 -> 150
    //   109: aload 4
    //   111: astore_2
    //   112: aload_1
    //   113: astore_3
    //   114: aload_1
    //   115: ifnull +35 -> 150
    //   118: new 114	com/facebook/ads/internal/util/r
    //   121: dup
    //   122: aload_1
    //   123: invokespecial 116	com/facebook/ads/internal/util/r:<init>	(Landroid/graphics/Bitmap;)V
    //   126: astore_2
    //   127: aload_2
    //   128: aload_1
    //   129: invokevirtual 122	android/graphics/Bitmap:getWidth	()I
    //   132: i2f
    //   133: ldc 123
    //   135: fdiv
    //   136: invokestatic 129	java/lang/Math:round	(F)I
    //   139: invokevirtual 132	com/facebook/ads/internal/util/r:a	(I)Landroid/graphics/Bitmap;
    //   142: pop
    //   143: aload_2
    //   144: invokevirtual 135	com/facebook/ads/internal/util/r:a	()Landroid/graphics/Bitmap;
    //   147: astore_2
    //   148: aload_1
    //   149: astore_3
    //   150: iconst_2
    //   151: anewarray 118	android/graphics/Bitmap
    //   154: dup
    //   155: iconst_0
    //   156: aload_3
    //   157: aastore
    //   158: dup
    //   159: iconst_1
    //   160: aload_2
    //   161: aastore
    //   162: areturn
    //   163: astore_3
    //   164: aconst_null
    //   165: astore_2
    //   166: aconst_null
    //   167: astore_1
    //   168: getstatic 25	com/facebook/ads/internal/util/k:a	Ljava/lang/String;
    //   171: new 137	java/lang/StringBuilder
    //   174: dup
    //   175: invokespecial 138	java/lang/StringBuilder:<init>	()V
    //   178: ldc -116
    //   180: invokevirtual 144	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   183: aload 5
    //   185: invokevirtual 144	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   188: invokevirtual 147	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   191: aload_3
    //   192: invokestatic 152	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   195: pop
    //   196: aload_3
    //   197: aconst_null
    //   198: invokestatic 157	com/facebook/ads/internal/util/b:a	(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/facebook/ads/internal/util/b;
    //   201: invokestatic 162	com/facebook/ads/internal/util/c:a	(Lcom/facebook/ads/internal/util/b;)V
    //   204: aload_2
    //   205: astore_3
    //   206: aload_1
    //   207: astore_2
    //   208: goto -58 -> 150
    //   211: astore_3
    //   212: aconst_null
    //   213: astore_1
    //   214: goto -46 -> 168
    //   217: astore_3
    //   218: aload_1
    //   219: astore_2
    //   220: aconst_null
    //   221: astore_1
    //   222: goto -54 -> 168
    //   225: astore_3
    //   226: aload_1
    //   227: astore_2
    //   228: goto -60 -> 168
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	231	0	this	k
    //   0	231	1	paramVarArgs	String[]
    //   19	209	2	localObject1	Object
    //   48	109	3	localObject2	Object
    //   163	34	3	localThrowable1	Throwable
    //   205	1	3	localObject3	Object
    //   211	1	3	localThrowable2	Throwable
    //   217	1	3	localThrowable3	Throwable
    //   225	1	3	localThrowable4	Throwable
    //   1	109	4	localObject4	Object
    //   6	178	5	str	String
    //   55	50	6	localObject5	Object
    // Exception table:
    //   from	to	target	type
    //   8	18	163	java/lang/Throwable
    //   26	49	211	java/lang/Throwable
    //   51	57	211	java/lang/Throwable
    //   59	69	211	java/lang/Throwable
    //   71	77	211	java/lang/Throwable
    //   79	89	211	java/lang/Throwable
    //   93	99	217	java/lang/Throwable
    //   118	148	225	java/lang/Throwable
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.util.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */