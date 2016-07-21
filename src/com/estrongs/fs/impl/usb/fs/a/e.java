package com.estrongs.fs.impl.usb.fs.a;

import com.estrongs.android.util.l;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

public class e
  implements com.estrongs.fs.impl.usb.fs.c
{
  private static String a = e.class.getSimpleName();
  private boolean b = false;
  private a c;
  private com.estrongs.fs.impl.usb.driver.a d;
  private b e;
  private c f;
  private List<h> g;
  private Map<String, h> h;
  private Map<com.estrongs.fs.impl.usb.fs.b.a, f> i;
  private e j;
  private h k;
  private String l;
  private String m;
  private ArrayList<com.estrongs.fs.impl.usb.fs.c> n = new ArrayList();
  private boolean o = false;
  
  private e(com.estrongs.fs.impl.usb.driver.a parama, b paramb, c paramc, e parame)
  {
    d = parama;
    e = paramb;
    f = paramc;
    j = parame;
    g = new ArrayList();
    h = new HashMap();
    i = new HashMap();
  }
  
  static e a(com.estrongs.fs.impl.usb.driver.a parama, b paramb, c paramc)
  {
    e locale = new e(parama, paramb, paramc, null);
    c = new a(paramc.f(), parama, paramb, paramc);
    locale.o();
    return locale;
  }
  
  static e a(h paramh, com.estrongs.fs.impl.usb.driver.a parama, b paramb, c paramc, e parame)
  {
    parama = new e(parama, paramb, paramc, parame);
    k = paramh;
    return parama;
  }
  
  private void a(h paramh, f paramf)
  {
    synchronized (b.a)
    {
      g.add(paramh);
      h.put(paramh.b().toLowerCase(Locale.getDefault()), paramh);
      i.put(paramf.n(), paramf);
      int i1 = n.size();
      if (i1 == 0) {}
      try
      {
        e();
        paramf = paramh.b();
        if ((paramf.equals(".")) || (paramf.equals(".."))) {
          return;
        }
      }
      catch (IOException paramf)
      {
        for (;;)
        {
          paramf.printStackTrace();
        }
      }
    }
    if (paramh.g()) {
      n.add(a(paramh, d, e, f, this));
    }
    for (;;)
    {
      return;
      n.add(g.a(paramh, d, e, f, this));
    }
  }
  
  private com.estrongs.fs.impl.usb.fs.c b(h paramh)
  {
    int i2 = -1;
    int i1 = 0;
    while (i1 < n.size())
    {
      try
      {
        boolean bool = ((com.estrongs.fs.impl.usb.fs.c)n.get(i1)).b().equals(paramh.b());
        if (bool) {
          i2 = i1;
        }
      }
      catch (Exception localException)
      {
        for (;;)
        {
          localException.printStackTrace();
        }
      }
      i1 += 1;
    }
    if (i2 >= 0) {
      return (com.estrongs.fs.impl.usb.fs.c)n.get(i2);
    }
    return null;
  }
  
  private void c(h paramh)
  {
    paramh = b(paramh);
    if (paramh != null) {
      n.remove(paramh);
    }
  }
  
  private void o()
  {
    if (o) {
      return;
    }
    if (c == null) {
      c = new a(k.d(), d, e, f);
    }
    if (g.size() == 0) {
      p();
    }
    o = true;
  }
  
  private void p()
  {
    ByteBuffer localByteBuffer = ByteBuffer.allocate((int)c.b());
    c.a(0L, localByteBuffer);
    ArrayList localArrayList = new ArrayList();
    localByteBuffer.flip();
    for (;;)
    {
      f localf;
      if (localByteBuffer.remaining() > 0)
      {
        localf = f.a(localByteBuffer);
        if (localf != null) {}
      }
      else
      {
        return;
      }
      if (localf.b())
      {
        localArrayList.add(localf);
      }
      else if (localf.e())
      {
        if ((!q()) && (b)) {
          l.d(a, "volume label in non root dir!");
        }
        l = localf.o();
        if (l == null) {
          l = f.m();
        }
        if (b) {
          l.b(a, "volume label: " + l);
        }
      }
      else if (localf.j())
      {
        localArrayList.clear();
      }
      else
      {
        a(h.a(localf, localArrayList), localf);
        localArrayList.clear();
      }
    }
  }
  
  private boolean q()
  {
    return k == null;
  }
  
  private h r()
  {
    synchronized (b.a)
    {
      Iterator localIterator = g.iterator();
      while (localIterator.hasNext())
      {
        h localh = (h)localIterator.next();
        if (localh.b().equals("..")) {
          return localh;
        }
      }
      return null;
    }
  }
  
  public void a(long paramLong, ByteBuffer paramByteBuffer)
  {
    throw new UnsupportedOperationException("This is a directory!");
  }
  
  void a(h paramh)
  {
    synchronized (b.a)
    {
      g.remove(paramh);
      h.remove(paramh.b().toLowerCase(Locale.getDefault()));
      i.remove(paramh.i().n());
      c(paramh);
      return;
    }
  }
  
  public void a(h paramh, com.estrongs.fs.impl.usb.fs.c paramc)
  {
    synchronized (b.a)
    {
      if (!paramc.a()) {
        throw new IllegalStateException("destination cannot be a file!");
      }
    }
    if (!(paramc instanceof e)) {
      throw new IllegalStateException("cannot move between different filesystems!");
    }
    o();
    paramc = (e)paramc;
    paramc.o();
    if (h.containsKey(paramh.b().toLowerCase(Locale.getDefault()))) {
      throw new IOException("item already exists in destination!");
    }
    a(paramh);
    paramc.a(paramh, paramh.i());
    m();
    paramc.m();
  }
  
  void a(h paramh, String paramString)
  {
    if (paramh.b().equals(paramString)) {
      return;
    }
    a(paramh);
    paramh.b(paramString, com.estrongs.fs.impl.usb.fs.b.b.a(paramString, i.keySet()));
    a(paramh, paramh.i());
    m();
  }
  
  public void a(com.estrongs.fs.impl.usb.fs.c paramc) {}
  
  public void a(String paramString)
  {
    synchronized (b.a)
    {
      if (q()) {
        throw new IllegalStateException("Cannot rename root dir!");
      }
    }
    j.a(k, paramString);
  }
  
  public boolean a()
  {
    return true;
  }
  
  public String b()
  {
    if (q())
    {
      if (l == null) {
        l = f.m();
      }
      return l;
    }
    return k.b();
  }
  
  public void b(long paramLong, ByteBuffer paramByteBuffer)
  {
    throw new UnsupportedOperationException("This is a directory!");
  }
  
  public void b(com.estrongs.fs.impl.usb.fs.c paramc)
  {
    synchronized (b.a)
    {
      if (q()) {
        throw new IllegalStateException("cannot move root dir!");
      }
    }
    if (!paramc.a()) {
      throw new IllegalStateException("destination cannot be a file!");
    }
    if (!(paramc instanceof e)) {
      throw new IllegalStateException("cannot move between different filesystems!");
    }
    o();
    paramc = (e)paramc;
    paramc.o();
    if (h.containsKey(k.b().toLowerCase(Locale.getDefault()))) {
      throw new IOException("item already exists in destination!");
    }
    j.a(k);
    h localh = r();
    if (localh != null) {
      if (!paramc.q()) {
        break label195;
      }
    }
    label195:
    for (long l1 = 0L;; l1 = k.d())
    {
      localh.b(l1);
      m();
      paramc.a(k, k.i());
      j.m();
      paramc.m();
      j = paramc;
      return;
    }
  }
  
  public com.estrongs.fs.impl.usb.fs.c c()
  {
    return j;
  }
  
  public void close()
  {
    throw new UnsupportedOperationException("This is a directory!");
  }
  
  public g d(String paramString)
  {
    synchronized (b.a)
    {
      o();
      if (h.containsKey(paramString.toLowerCase(Locale.getDefault()))) {
        throw new IOException("Item already exists!");
      }
    }
    com.estrongs.fs.impl.usb.fs.b.a locala = com.estrongs.fs.impl.usb.fs.b.b.a(paramString, i.keySet());
    paramString = h.a(paramString, locala);
    paramString.b(e.a(new Long[0], 1)[0].longValue());
    if (b) {
      l.b(a, "adding entry: " + paramString + " with short name: " + locala);
    }
    a(paramString, paramString.i());
    m();
    paramString = b(paramString);
    if ((paramString != null) && ((paramString instanceof g)))
    {
      paramString = (g)paramString;
      return paramString;
    }
    return null;
  }
  
  public String[] d()
  {
    for (;;)
    {
      int i2;
      synchronized (b.a)
      {
        o();
        i2 = g.size();
        int i1 = i2;
        if (!q()) {
          i1 = i2 - 2;
        }
        String[] arrayOfString = new String[i1];
        i2 = 0;
        i1 = 0;
        if (i2 < g.size())
        {
          String str = ((h)g.get(i2)).b();
          if ((!str.equals(".")) && (!str.equals("..")))
          {
            arrayOfString[i1] = str;
            i1 += 1;
          }
        }
        else
        {
          return arrayOfString;
        }
      }
      i2 += 1;
    }
  }
  
  public e e(String paramString)
  {
    synchronized (b.a)
    {
      o();
      if (h.containsKey(paramString.toLowerCase(Locale.getDefault()))) {
        throw new IOException("Item already exists!");
      }
    }
    Object localObject2 = com.estrongs.fs.impl.usb.fs.b.b.a(paramString, i.keySet());
    paramString = h.a(paramString, (com.estrongs.fs.impl.usb.fs.b.a)localObject2);
    paramString.h();
    long l1 = e.a(new Long[0], 1)[0].longValue();
    paramString.b(l1);
    if (b) {
      l.b(a, "adding entry: " + paramString + " with short name: " + localObject2);
    }
    a(paramString, paramString.i());
    m();
    localObject2 = b(paramString);
    if ((localObject2 != null) && ((localObject2 instanceof e)))
    {
      localObject2 = (e)localObject2;
      h localh = h.a(null, new com.estrongs.fs.impl.usb.fs.b.a(".", ""));
      localh.h();
      localh.b(l1);
      h.a(paramString, localh);
      ((e)localObject2).a(localh, localh.i());
      paramString = h.a(null, new com.estrongs.fs.impl.usb.fs.b.a("..", ""));
      paramString.h();
      if (q()) {}
      for (l1 = 0L;; l1 = k.d())
      {
        paramString.b(l1);
        if (!q()) {
          h.a(k, paramString);
        }
        ((e)localObject2).a(paramString, paramString.i());
        ((e)localObject2).m();
        return (e)localObject2;
      }
    }
    return null;
  }
  
  public com.estrongs.fs.impl.usb.fs.c[] e()
  {
    synchronized (b.a)
    {
      o();
      com.estrongs.fs.impl.usb.fs.c[] arrayOfc = (com.estrongs.fs.impl.usb.fs.c[])n.toArray(new com.estrongs.fs.impl.usb.fs.c[0]);
      return arrayOfc;
    }
  }
  
  public long f()
  {
    return 0L;
  }
  
  public void f(String paramString)
  {
    m = paramString;
  }
  
  public void g()
  {
    throw new UnsupportedOperationException("This is a directory!");
  }
  
  public void h()
  {
    synchronized (b.a)
    {
      if (q()) {
        throw new IllegalStateException("Root dir cannot be deleted!");
      }
    }
    o();
    com.estrongs.fs.impl.usb.fs.c[] arrayOfc = e();
    int i2 = arrayOfc.length;
    int i1 = 0;
    while (i1 < i2)
    {
      arrayOfc[i1].h();
      i1 += 1;
    }
    j.a(k);
    j.m();
    c.a(0L);
  }
  
  public long i()
  {
    if (k != null) {
      return k.j();
    }
    return 0L;
  }
  
  public long j()
  {
    if (k != null) {
      return k.k();
    }
    return 0L;
  }
  
  public boolean k()
  {
    if (k != null) {
      return k.l();
    }
    return true;
  }
  
  public boolean l()
  {
    if (k != null) {
      return k.m();
    }
    return false;
  }
  
  void m()
  {
    int i1 = 0;
    o();
    if ((q()) && (l != null)) {}
    for (int i2 = 1;; i2 = 0)
    {
      localObject = g.iterator();
      while (((Iterator)localObject).hasNext()) {
        i1 += ((h)((Iterator)localObject).next()).a();
      }
    }
    int i3 = i1;
    if (i2 != 0) {
      i3 = i1 + 1;
    }
    long l1 = i3 * 32;
    c.a(l1);
    Object localObject = ByteBuffer.allocate((int)c.b());
    ((ByteBuffer)localObject).order(ByteOrder.LITTLE_ENDIAN);
    if (i2 != 0) {
      f.a(l).b((ByteBuffer)localObject);
    }
    Iterator localIterator = g.iterator();
    while (localIterator.hasNext()) {
      ((h)localIterator.next()).a((ByteBuffer)localObject);
    }
    if (l1 % f.j() != 0L) {
      ((ByteBuffer)localObject).put(new byte[32]);
    }
    ((ByteBuffer)localObject).rewind();
    c.b(0L, (ByteBuffer)localObject);
  }
  
  String n()
  {
    return l;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.fs.a.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */