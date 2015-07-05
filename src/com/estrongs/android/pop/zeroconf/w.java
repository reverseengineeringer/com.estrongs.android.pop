package com.estrongs.android.pop.zeroconf;

import android.content.Context;
import android.net.wifi.WifiManager;
import android.net.wifi.WifiManager.MulticastLock;
import android.os.Build;
import com.estrongs.android.pop.zeroconf.constants.DNSRecordClass;
import com.estrongs.android.pop.zeroconf.constants.DNSRecordType;
import com.estrongs.android.util.ak;
import java.io.IOException;
import java.io.PrintStream;
import java.net.DatagramPacket;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MulticastSocket;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class w
{
  public static String a = "_esfileshare._tcp.local.";
  public static String b = "_esdevice._tcp.local.";
  public static String c = "_smb._tcp.local.";
  public static String d = "_webdav._tcp.local.";
  public static String e = "_ftp._tcp.local.";
  private static final String j = w.class.getSimpleName();
  private static HashMap<String, Inet4Address> u = new HashMap();
  private static HashMap<String, Inet6Address> v = new HashMap();
  protected String f = null;
  protected InetAddress g = null;
  protected u h = null;
  private boolean i = false;
  private ArrayList<u> k = new ArrayList();
  private String l = "224.0.0.251";
  private String m = "FF02::FB";
  private int n = 5353;
  private volatile InetAddress o;
  private volatile MulticastSocket p;
  private x q = null;
  private v r = null;
  private ArrayList<String> s = null;
  private WifiManager.MulticastLock t = null;
  
  public w(Context paramContext)
  {
    this(paramContext, 0);
  }
  
  public w(Context paramContext, int paramInt)
  {
    String str = ak.a();
    if (str == null) {
      throw new IOException("network error");
    }
    t = ((WifiManager)paramContext.getSystemService("wifi")).createMulticastLock("mylockthereturn");
    t.setReferenceCounted(true);
    t.acquire();
    if (paramInt == 0)
    {
      l = "224.0.0.251";
      m = "FF02::FB";
      n = 5353;
    }
    for (;;)
    {
      paramContext = InetAddress.getByName(str);
      g = paramContext;
      try
      {
        f = (Build.MODEL + "-" + str);
        f = f.replace('.', '-');
        f += ".local.";
        a(paramContext);
        q = new x(this);
        q.start();
        return;
      }
      catch (UnknownHostException paramContext)
      {
        paramContext.printStackTrace();
      }
      if (paramInt == 1)
      {
        l = "239.2.0.251";
        m = "FF02::FC";
        n = 5353;
      }
      else if (paramInt == 2)
      {
        l = "239.2.0.252";
        m = "FF02::FD";
        n = 5353;
      }
    }
  }
  
  private u a(u paramu)
  {
    Iterator localIterator = k.iterator();
    while (localIterator.hasNext())
    {
      u localu = (u)localIterator.next();
      if (localu.equals(paramu)) {
        return localu;
      }
    }
    return null;
  }
  
  private u a(String paramString)
  {
    synchronized (k)
    {
      Iterator localIterator = k.iterator();
      while (localIterator.hasNext())
      {
        u localu = (u)localIterator.next();
        if (k.equals(paramString)) {
          return localu;
        }
      }
      return null;
    }
  }
  
  private void a(d paramd)
  {
    if (paramd != null) {
      a((List)paramd.f());
    }
  }
  
  private void a(u paramu, o paramo)
  {
    if (paramu == null) {}
    do
    {
      return;
      if ((paramo instanceof p))
      {
        paramu.a((Inet4Address)paramo.g());
        return;
      }
    } while (!(paramo instanceof q));
    paramu.a((Inet6Address)paramo.g());
  }
  
  private void a(InetAddress paramInetAddress)
  {
    NetworkInterface localNetworkInterface = NetworkInterface.getByInetAddress(paramInetAddress);
    if (o == null)
    {
      if (!(paramInetAddress instanceof Inet6Address)) {
        break label106;
      }
      o = InetAddress.getByName(m);
    }
    for (;;)
    {
      if (p != null) {
        c();
      }
      p = new MulticastSocket(n);
      if ((paramInetAddress != null) && (localNetworkInterface != null)) {}
      try
      {
        p.setNetworkInterface(localNetworkInterface);
        p.setTimeToLive(255);
        try
        {
          p.joinGroup(new InetSocketAddress(o, n), localNetworkInterface);
          return;
        }
        catch (SocketException paramInetAddress)
        {
          label106:
          paramInetAddress.printStackTrace();
        }
        o = InetAddress.getByName(l);
      }
      catch (SocketException paramInetAddress)
      {
        for (;;)
        {
          paramInetAddress.printStackTrace();
        }
      }
    }
  }
  
  private void a(List<n> paramList)
  {
    ??? = null;
    Iterator localIterator = paramList.iterator();
    paramList = (List<n>)???;
    while (localIterator.hasNext())
    {
      ??? = (n)localIterator.next();
      Object localObject3;
      if (((n)???).b(System.currentTimeMillis()))
      {
        if ((??? instanceof r))
        {
          localObject3 = a(((r)???).g());
          if (localObject3 != null) {
            synchronized (k)
            {
              k.remove(localObject3);
              if (r == null) {
                continue;
              }
              r.b((u)localObject3);
            }
          }
        }
      }
      else if ((??? instanceof s))
      {
        if (i) {
          System.out.println("######## get serivce " + ((s)???).a());
        }
        if (s != null)
        {
          localObject3 = new u(((s)???).a(), ((s)???).h(), ((s)???).g());
          u localu = a((u)localObject3);
          ??? = localu;
          if (localu == null)
          {
            ??? = localu;
            if (c != null)
            {
              ??? = localu;
              if (!s.contains(c)) {}
            }
          }
          label475:
          for (;;)
          {
            synchronized (k)
            {
              k.add(localObject3);
              ??? = localObject3;
              if ((??? == null) || (((u)???).a())) {
                break label475;
              }
              if (u.containsKey(e))
              {
                ((u)???).a((Inet4Address)u.get(e));
                if (i) {
                  System.out.println("#########domain4Map add service");
                }
                paramList = (List<n>)???;
              }
            }
            if (v.containsKey(e))
            {
              ((u)???).a((Inet6Address)v.get(e));
              if (i) {
                System.out.println("#########domain6Map add service");
              }
              paramList = (List<n>)???;
            }
            else
            {
              try
              {
                localObject3 = new e(0);
                ((e)localObject3).a(g.a(k, DNSRecordType.TYPE_SRV, DNSRecordClass.CLASS_IN, false));
                ((e)localObject3).a(g.a(k, DNSRecordType.TYPE_TXT, DNSRecordClass.CLASS_IN, false));
                if (e.length() > 0)
                {
                  ((e)localObject3).a(g.a(e, DNSRecordType.TYPE_A, DNSRecordClass.CLASS_IN, false));
                  ((e)localObject3).a(g.a(e, DNSRecordType.TYPE_AAAA, DNSRecordClass.CLASS_IN, false));
                }
                a((e)localObject3);
              }
              catch (Exception localException)
              {
                localException.printStackTrace();
              }
            }
          }
        }
      }
      else
      {
        if ((localException instanceof p))
        {
          localObject3 = (p)localException;
          if (i) {
            System.out.println("######## get IPv4 address " + ((p)localObject3).a());
          }
          synchronized (u)
          {
            u.put(((p)localObject3).a(), (Inet4Address)((p)localObject3).g());
            ??? = b(((p)localObject3).a());
            if (??? == null) {
              continue;
            }
            if (((u)???).a()) {
              paramList = (List<n>)???;
            }
            a((u)???, (o)localObject3);
          }
        }
        if ((??? instanceof q))
        {
          localObject3 = (q)???;
          if (i) {
            System.out.println("######## get IPv6 address " + ((q)localObject3).a());
          }
          synchronized (v)
          {
            v.put(((q)localObject3).a(), (Inet6Address)((q)localObject3).g());
            ??? = b(((q)localObject3).a());
            if (??? == null) {
              continue;
            }
            if (((u)???).a()) {
              paramList = (List<n>)???;
            }
            a((u)???, (o)localObject3);
          }
        }
        if ((??? instanceof t))
        {
          ??? = (t)???;
          localObject3 = a(((t)???).a());
          if (localObject3 != null) {
            ((u)localObject3).a(((t)???).g());
          }
        }
      }
    }
    if ((paramList != null) && (r != null))
    {
      if (i) {
        System.out.println("#########to add service");
      }
      r.a(paramList);
    }
  }
  
  private u b(String paramString)
  {
    synchronized (k)
    {
      Iterator localIterator = k.iterator();
      while (localIterator.hasNext())
      {
        u localu = (u)localIterator.next();
        if (e.equals(paramString)) {
          return localu;
        }
      }
      return null;
    }
  }
  
  private void b(d paramd)
  {
    if (paramd != null) {
      c(paramd);
    }
  }
  
  private void c()
  {
    if (p != null) {}
    try
    {
      p.leaveGroup(o);
      p.close();
      p = null;
      o = null;
      return;
    }
    catch (Error localError)
    {
      for (;;)
      {
        localError.printStackTrace();
      }
    }
    catch (Throwable localThrowable)
    {
      for (;;)
      {
        localThrowable.printStackTrace();
      }
    }
  }
  
  private void c(d paramd)
  {
    Object localObject2 = new HashSet();
    Object localObject1 = new HashSet();
    if (h != null)
    {
      Iterator localIterator;
      label34:
      break label80;
      try
      {
        localIterator = paramd.d().iterator();
        if (localIterator.hasNext())
        {
          g localg = (g)localIterator.next();
          ((Set)localObject2).add(localg);
          localg.b(this, (Set)localObject1);
          break label34;
          return;
        }
      }
      catch (Throwable paramd)
      {
        paramd.printStackTrace();
      }
    }
    label80:
    do
    {
      while (((Set)localObject1).isEmpty()) {}
      localObject2 = new e(33792, true, 1460);
      ((e)localObject2).a(paramd.a());
      paramd = ((Set)localObject1).iterator();
      while (paramd.hasNext())
      {
        localObject1 = (n)paramd.next();
        if (localObject1 != null) {
          ((e)localObject2).a(null, (n)localObject1);
        }
      }
      if (i) {
        System.out.println("#########handleQuery send answer");
      }
    } while (((e)localObject2).o());
    a((e)localObject2);
  }
  
  public ArrayList<u> a(ArrayList<String> paramArrayList, int paramInt)
  {
    if ((paramArrayList == null) || (paramArrayList.size() == 0)) {
      return null;
    }
    s = paramArrayList;
    paramArrayList = s.iterator();
    while (paramArrayList.hasNext())
    {
      String str = (String)paramArrayList.next();
      e locale = new e(0);
      try
      {
        locale.a(g.a(str, DNSRecordType.TYPE_PTR, DNSRecordClass.CLASS_IN, false));
        a(locale);
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
    long l1 = paramInt;
    try
    {
      Thread.sleep(l1);
      return k;
    }
    catch (InterruptedException paramArrayList)
    {
      for (;;)
      {
        paramArrayList.printStackTrace();
      }
    }
  }
  
  public void a(e parame)
  {
    if (!parame.o())
    {
      parame = parame.q();
      parame = new DatagramPacket(parame, parame.length, o, n);
      MulticastSocket localMulticastSocket = p;
      if ((localMulticastSocket != null) && (!localMulticastSocket.isClosed())) {
        localMulticastSocket.send(parame);
      }
    }
  }
  
  public void a(v paramv)
  {
    r = paramv;
  }
  
  public boolean a()
  {
    if (h == null) {
      return false;
    }
    try
    {
      e locale = new e(33792);
      locale.a(null, new r(h.c, DNSRecordClass.CLASS_IN, false, 0, h.k));
      locale.a(null, new s(h.k, DNSRecordClass.CLASS_IN, true, 0, 0, 0, h.d, f));
      int i1 = 2;
      while (i1 > 0)
      {
        a(locale);
        Thread.sleep(100L);
        i1 -= 1;
      }
      return true;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return false;
    }
    finally
    {
      h = null;
    }
  }
  
  public boolean a(String paramString1, String paramString2, int paramInt)
  {
    if (h != null) {
      return false;
    }
    if ((paramString2 == null) || (paramInt < 0)) {
      return false;
    }
    try
    {
      e locale = new e(0);
      paramString2 = paramString2 + "." + paramString1;
      locale.a(g.a(paramString2, DNSRecordType.TYPE_ANY, DNSRecordClass.CLASS_IN, false));
      locale.a(new s(paramString2, DNSRecordClass.CLASS_IN, false, 3600, 0, 0, paramInt, f));
      int i1 = 1;
      while (i1 > 0)
      {
        a(locale);
        Thread.sleep(260L);
        i1 -= 1;
      }
      locale = new e(33792);
      locale.a(null, new r(paramString1, DNSRecordClass.CLASS_IN, false, 3600, paramString2));
      locale.a(null, new s(paramString2, DNSRecordClass.CLASS_IN, true, 3600, 0, 0, paramInt, f));
      i1 = 1;
      while (i1 > 0)
      {
        a(locale);
        Thread.sleep(100L);
        i1 -= 1;
      }
      h = new u(paramString2, paramInt, f);
      return true;
    }
    catch (Exception paramString1)
    {
      paramString1.printStackTrace();
    }
    return false;
  }
  
  boolean a(DatagramPacket paramDatagramPacket)
  {
    boolean bool2 = false;
    boolean bool3 = false;
    boolean bool1 = bool2;
    if (p.getInetAddress() != null)
    {
      paramDatagramPacket = paramDatagramPacket.getAddress();
      bool1 = bool2;
      if (paramDatagramPacket != null)
      {
        bool2 = bool3;
        if (paramDatagramPacket.isLinkLocalAddress())
        {
          bool2 = bool3;
          if (!p.getInetAddress().isLinkLocalAddress()) {
            bool2 = true;
          }
        }
        bool1 = bool2;
        if (paramDatagramPacket.isLoopbackAddress())
        {
          bool1 = bool2;
          if (!p.getInetAddress().isLoopbackAddress()) {
            bool1 = true;
          }
        }
      }
    }
    return bool1;
  }
  
  public void b()
  {
    try
    {
      h = null;
      q = null;
      r = null;
      u.clear();
      v.clear();
      c();
      if ((t != null) && (t.isHeld()))
      {
        t.setReferenceCounted(false);
        t.release();
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.zeroconf.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */