package com.estrongs.android.pop.app.f;

import android.content.Context;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.app.bg;
import com.estrongs.android.pop.app.service.a;
import com.estrongs.android.pop.zeroconf.w;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.bk;
import com.estrongs.android.util.l;
import java.io.IOException;
import java.io.PrintStream;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Observable;
import java.util.Observer;
import java.util.Set;
import java.util.Vector;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import jcifs.netbios.NbtAddress;

public class c
  implements Observer
{
  private static final String c = c.class.getSimpleName();
  private static c i;
  protected InetAddress a;
  protected InetAddress b;
  private boolean d = false;
  private int[] e = new int[4];
  private int[] f = new int[4];
  private m g;
  private Context h;
  private boolean j = false;
  private boolean k = false;
  private com.estrongs.fs.b.an l;
  private w m = null;
  private a n;
  private Map<String, String> o = new HashMap();
  private LinkedHashMap<String, Map<String, String>> p = new LinkedHashMap();
  private String q = null;
  private Object r = new Object();
  private ArrayList<f> s = new ArrayList();
  
  private c(Context paramContext)
  {
    h = paramContext;
    j = false;
  }
  
  public static c a()
  {
    if (i == null) {
      i = new c(FexApplication.a());
    }
    return i;
  }
  
  /* Error */
  private void a(f paramf)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 83	com/estrongs/android/pop/app/f/c:r	Ljava/lang/Object;
    //   4: astore_2
    //   5: aload_2
    //   6: monitorenter
    //   7: aload_1
    //   8: ifnonnull +6 -> 14
    //   11: aload_2
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: getfield 79	com/estrongs/android/pop/app/f/c:p	Ljava/util/LinkedHashMap;
    //   18: invokevirtual 109	java/util/LinkedHashMap:keySet	()Ljava/util/Set;
    //   21: invokeinterface 115 1 0
    //   26: astore_3
    //   27: aload_1
    //   28: getfield 120	com/estrongs/android/pop/app/f/f:g	I
    //   31: tableswitch	default:+93->124, 0:+84->115, 1:+120->151, 2:+102->133, 3:+108->139, 4:+114->145, 5:+126->157
    //   68: aload_3
    //   69: invokeinterface 126 1 0
    //   74: ifeq +47 -> 121
    //   77: aload_3
    //   78: invokeinterface 130 1 0
    //   83: checkcast 132	java/lang/String
    //   86: astore 4
    //   88: aload 4
    //   90: aload_1
    //   91: invokevirtual 136	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   94: ifeq -26 -> 68
    //   97: aload_0
    //   98: getfield 79	com/estrongs/android/pop/app/f/c:p	Ljava/util/LinkedHashMap;
    //   101: aload 4
    //   103: invokevirtual 140	java/util/LinkedHashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   106: pop
    //   107: goto -39 -> 68
    //   110: astore_1
    //   111: aload_2
    //   112: monitorexit
    //   113: aload_1
    //   114: athrow
    //   115: ldc -114
    //   117: astore_1
    //   118: goto +8 -> 126
    //   121: aload_2
    //   122: monitorexit
    //   123: return
    //   124: aconst_null
    //   125: astore_1
    //   126: aload_1
    //   127: ifnull -6 -> 121
    //   130: goto -62 -> 68
    //   133: ldc -112
    //   135: astore_1
    //   136: goto -10 -> 126
    //   139: ldc -110
    //   141: astore_1
    //   142: goto -16 -> 126
    //   145: ldc -108
    //   147: astore_1
    //   148: goto -22 -> 126
    //   151: ldc -106
    //   153: astore_1
    //   154: goto -28 -> 126
    //   157: ldc -104
    //   159: astore_1
    //   160: goto -34 -> 126
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	163	0	this	c
    //   0	163	1	paramf	f
    //   4	118	2	localObject	Object
    //   26	52	3	localIterator	Iterator
    //   86	16	4	str	String
    // Exception table:
    //   from	to	target	type
    //   11	13	110	finally
    //   14	68	110	finally
    //   68	107	110	finally
    //   111	113	110	finally
    //   121	123	110	finally
  }
  
  private void a(String paramString1, String paramString2, boolean paramBoolean)
  {
    if ((!paramBoolean) && (o.containsKey(paramString1))) {
      return;
    }
    if (n != null) {
      n.a(paramString1, paramString2, paramBoolean);
    }
    synchronized (r)
    {
      o.put(paramString1, paramString2);
      return;
    }
  }
  
  private void a(InetAddress paramInetAddress1, InetAddress paramInetAddress2, boolean paramBoolean)
  {
    a(paramInetAddress1, paramBoolean);
    if (paramInetAddress2 == null) {
      return;
    }
    paramInetAddress1 = paramInetAddress2.getHostAddress().split("\\.");
    if (f.length != 4) {}
    int i1 = 0;
    try
    {
      while (i1 < f.length)
      {
        f[i1] = Integer.parseInt(paramInetAddress1[i1]);
        i1 += 1;
      }
      return;
    }
    catch (Exception paramInetAddress1)
    {
      paramInetAddress1.printStackTrace();
      b = paramInetAddress2;
    }
  }
  
  private void a(InetAddress paramInetAddress, boolean paramBoolean)
  {
    a = paramInetAddress;
    for (;;)
    {
      int i1;
      try
      {
        paramInetAddress = paramInetAddress.getHostAddress().split("\\.");
        i1 = 0;
        if (i1 < paramInetAddress.length)
        {
          if (paramInetAddress[i1].length() == 0) {
            break label68;
          }
          e[i1] = Integer.parseInt(paramInetAddress[i1]);
        }
      }
      catch (NumberFormatException paramInetAddress)
      {
        if (paramBoolean) {}
        try
        {
          ak.a(h, 2131231627, 1);
          return;
        }
        catch (Exception paramInetAddress)
        {
          return;
        }
      }
      label68:
      i1 += 1;
    }
  }
  
  private boolean a(int paramInt)
  {
    if (!d()) {
      return false;
    }
    synchronized (s)
    {
      Iterator localIterator = s.iterator();
      while (localIterator.hasNext()) {
        if (paramInt == nextg) {
          return true;
        }
      }
    }
    return false;
  }
  
  static boolean a(String paramString)
  {
    return Pattern.compile("([1-9]|[1-9]\\d|1\\d{2}|2[0-1]\\d|25[0-5])(\\.(\\d|[1-9]\\d|1\\d{2}|2[0-4]\\d|25[0-5])){3}").matcher(paramString).matches();
  }
  
  private int h()
  {
    return (f[0] ^ 0xFF) * 255 * 255 * 255 + ((f[1] ^ 0xFF) * 255 * 255 + ((f[2] ^ 0xFF) * 255 + (f[3] ^ 0xFF)));
  }
  
  private void i()
  {
    label172:
    label175:
    for (;;)
    {
      synchronized (r)
      {
        if ((s.isEmpty()) || (o.isEmpty())) {
          return;
        }
        if (q == null) {
          break label172;
        }
        Object localObject1 = (Map)p.get(q);
        if (localObject1 != null) {
          break label175;
        }
        Object localObject3 = new HashMap();
        p.put(q, localObject3);
        localObject1 = localObject3;
        if (p.size() > 4)
        {
          localObject1 = (String)p.keySet().iterator().next();
          p.remove(localObject1);
          localObject1 = localObject3;
        }
        localObject3 = s.iterator();
        if (((Iterator)localObject3).hasNext()) {
          a((f)((Iterator)localObject3).next());
        }
      }
      ((Map)localObject2).putAll(o);
      return;
    }
  }
  
  private void j()
  {
    k = false;
    if (g != null)
    {
      g.deleteObserver(this);
      g.b();
      g = null;
    }
  }
  
  public void a(a parama)
  {
    n = parama;
  }
  
  public void a(String paramString, a parama, ArrayList<f> paramArrayList, boolean paramBoolean)
  {
    if ((paramString != null) && (paramArrayList != null)) {}
    for (;;)
    {
      try
      {
        if (paramArrayList.size() != 0) {
          continue;
        }
        l.e(c, "scanLan error: invalid bssid or scan type");
        e();
      }
      finally
      {
        try
        {
          Object localObject = InetAddress.getByName(com.estrongs.android.util.an.a());
          InetAddress localInetAddress = InetAddress.getByName("255.255.255.0");
          if (!j)
          {
            a((InetAddress)localObject, localInetAddress, paramBoolean);
            g = new m(this);
            g.addObserver(this);
          }
          a(parama);
          if (d())
          {
            if (a(paramArrayList)) {
              continue;
            }
            e();
            g = new m(this);
            g.addObserver(this);
          }
          if (!j) {
            break label180;
          }
          if (!paramBoolean) {
            continue;
          }
          ak.a(h, 2131231627, 1);
        }
        catch (UnknownHostException paramString)
        {
          j = true;
        }
        paramString = finally;
      }
      return;
      localObject = g;
      if (localObject == null) {}
      continue;
      label180:
      g();
      q = paramString;
      if (n != null) {
        n.a(paramArrayList, null);
      }
      s.clear();
      s.addAll(paramArrayList);
      if (g == null)
      {
        g = new m(this);
        g.addObserver(this);
      }
      l = new com.estrongs.fs.b.an();
      l.setDescription(h.getString(2131231628));
      l.execute();
    }
  }
  
  public boolean a(ArrayList<f> paramArrayList)
  {
    if (!d()) {
      return false;
    }
    for (;;)
    {
      synchronized (s)
      {
        paramArrayList = paramArrayList.iterator();
        if (paramArrayList.hasNext())
        {
          f localf1 = (f)paramArrayList.next();
          Iterator localIterator = s.iterator();
          if (localIterator.hasNext())
          {
            f localf2 = (f)localIterator.next();
            if (g != g) {
              continue;
            }
            i1 = 1;
            if (i1 != 0) {
              continue;
            }
            return false;
          }
        }
        else
        {
          return true;
        }
      }
      int i1 = 0;
    }
  }
  
  public Map<String, String> b(String paramString)
  {
    Object localObject = r;
    if (paramString != null) {}
    try
    {
      if (p.isEmpty()) {
        return null;
      }
      paramString = (Map)p.get(paramString);
      return paramString;
    }
    finally {}
  }
  
  protected Vector<InetAddress> b()
  {
    int i3 = 0;
    Vector localVector = new Vector();
    int i4 = h();
    byte[] arrayOfByte = new byte[4];
    int i1 = 0;
    int i2;
    for (;;)
    {
      i2 = i3;
      if (i1 >= arrayOfByte.length) {
        break;
      }
      arrayOfByte[i1] = ((byte)(e[i1] & f[i1]));
      i1 += 1;
    }
    for (;;)
    {
      if (i2 < i4)
      {
        arrayOfByte[3] = ((byte)(arrayOfByte[3] + 1));
        try
        {
          if (arrayOfByte[3] == e[3]) {
            break label113;
          }
          localVector.add(InetAddress.getByAddress(arrayOfByte));
        }
        catch (UnknownHostException localUnknownHostException) {}
      }
      return localVector;
      label113:
      i2 += 1;
    }
  }
  
  public void c()
  {
    k = true;
    if (n != null) {
      n.a(true);
    }
    if (m == null) {}
    try
    {
      ArrayList localArrayList = new ArrayList();
      if (a(0)) {
        localArrayList.add(w.c);
      }
      if (a(1)) {
        localArrayList.add(w.d);
      }
      if (a(2)) {
        localArrayList.add(w.e);
      }
      if (localArrayList.size() != 0)
      {
        m = new w(FexApplication.a());
        m.a(new d(this));
        if (d) {
          System.out.println("-----------start scan bonjour ");
        }
        m.a(localArrayList, 0);
      }
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        localIOException.printStackTrace();
      }
    }
    if (a(5)) {
      bg.a().b();
    }
    g.a(s);
    g.run();
    k = false;
  }
  
  public boolean d()
  {
    if (k) {
      return true;
    }
    if (g != null) {
      return g.a();
    }
    return false;
  }
  
  protected void e()
  {
    j();
    try
    {
      if (m != null)
      {
        if (d) {
          l.b(c, "To destroy zeroconfig");
        }
        m.b();
        m = null;
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
      }
    }
    i();
    if (n != null) {
      n.a(false);
    }
    bg.a().c();
  }
  
  public void f()
  {
    e();
  }
  
  /* Error */
  public void g()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 83	com/estrongs/android/pop/app/f/c:r	Ljava/lang/Object;
    //   6: astore_1
    //   7: aload_1
    //   8: monitorenter
    //   9: aload_0
    //   10: getfield 74	com/estrongs/android/pop/app/f/c:o	Ljava/util/Map;
    //   13: invokeinterface 411 1 0
    //   18: aload_1
    //   19: monitorexit
    //   20: aload_0
    //   21: monitorexit
    //   22: return
    //   23: astore_2
    //   24: aload_1
    //   25: monitorexit
    //   26: aload_2
    //   27: athrow
    //   28: astore_1
    //   29: aload_0
    //   30: monitorexit
    //   31: aload_1
    //   32: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	33	0	this	c
    //   28	4	1	localObject2	Object
    //   23	4	2	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   9	20	23	finally
    //   24	26	23	finally
    //   2	9	28	finally
    //   26	28	28	finally
  }
  
  public void update(Observable paramObservable, Object paramObject)
  {
    Object localObject3 = null;
    Object localObject2 = null;
    o localo;
    Object localObject1;
    int i1;
    if ((paramObject != null) && ((paramObject instanceof o)))
    {
      localo = (o)paramObject;
      if ((d != 0) || (c < 0))
      {
        l.e(c, "get invalid scan status");
        return;
      }
      localObject1 = b;
      paramObject = localObject1;
      paramObservable = (Observable)localObject1;
      try
      {
        if (a((String)localObject1))
        {
          paramObservable = (Observable)localObject1;
          localObject1 = NbtAddress.getByName((String)localObject1).getHostName();
          paramObservable = (Observable)localObject1;
          if (!bk.a((CharSequence)localObject1))
          {
            paramObject = localObject1;
            paramObservable = (Observable)localObject1;
            if (!bk.a(localObject1, b)) {}
          }
          else
          {
            paramObservable = (Observable)localObject1;
            NbtAddress[] arrayOfNbtAddress = NbtAddress.getAllByAddress((String)localObject1);
            paramObject = localObject1;
            paramObservable = (Observable)localObject1;
            if (arrayOfNbtAddress.length > 0)
            {
              paramObservable = (Observable)localObject1;
              paramObject = arrayOfNbtAddress[0].getHostName();
            }
          }
        }
      }
      catch (Exception paramObject)
      {
        for (;;)
        {
          label201:
          l.d(c, "Failed to get host name by NbtAddress - " + paramObservable);
          paramObject = paramObservable;
          continue;
          if (e.g == 2)
          {
            localObject1 = "ftp://" + a;
            paramObservable = (Observable)localObject1;
            if (c == 21) {
              break label617;
            }
            i1 = 1;
            paramObservable = (Observable)localObject1;
          }
          else if (e.g == 3)
          {
            localObject1 = "ftps://" + a;
            paramObservable = (Observable)localObject1;
            if (c == 990) {
              break label617;
            }
            i1 = 1;
            paramObservable = (Observable)localObject1;
          }
          else if (e.g == 4)
          {
            localObject1 = "sftp://" + a;
            paramObservable = (Observable)localObject1;
            if (c == 22) {
              break label617;
            }
            i1 = 1;
            paramObservable = (Observable)localObject1;
          }
          else
          {
            if (e.g != 0) {
              break;
            }
            localObject1 = "smb://" + a;
            paramObservable = (Observable)localObject1;
            if (c == 445) {
              break label617;
            }
            i1 = 1;
            paramObservable = (Observable)localObject1;
          }
        }
        paramObservable = (Observable)localObject3;
        if (e.g != 5) {
          break label617;
        }
      }
      if (e.g == 1)
      {
        localObject1 = "webdav://" + a;
        paramObservable = (Observable)localObject1;
        if (c == 80) {
          break label617;
        }
        i1 = 1;
        paramObservable = (Observable)localObject1;
        if (paramObservable == null) {
          break label620;
        }
        localObject1 = paramObservable;
        if (i1 != 0) {
          localObject1 = paramObservable + ":" + c;
        }
        a((String)localObject1 + "/", (String)paramObject, false);
        return;
      }
      localObject1 = "adb://" + a;
      if (!((String)localObject1).contains(com.estrongs.android.util.an.a())) {
        break label622;
      }
      localObject1 = localObject2;
    }
    label617:
    label620:
    label622:
    for (;;)
    {
      paramObservable = (Observable)localObject1;
      if (c != 5555)
      {
        i1 = 1;
        paramObservable = (Observable)localObject1;
        break label201;
        e();
        return;
      }
      i1 = 0;
      break label201;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.f.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */