package com.estrongs.bluetooth;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothSocket;
import b.a.a.e;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

public class a
  implements e
{
  private BluetoothSocket a;
  private BluetoothDevice b;
  
  public a(BluetoothSocket paramBluetoothSocket)
  {
    a = paramBluetoothSocket;
    b = paramBluetoothSocket.getRemoteDevice();
  }
  
  public InputStream a()
  {
    return a.getInputStream();
  }
  
  public DataInputStream b()
  {
    return new DataInputStream(a());
  }
  
  public OutputStream c()
  {
    return a.getOutputStream();
  }
  
  public DataOutputStream d()
  {
    return new DataOutputStream(c());
  }
  
  public void e()
  {
    if (a != null) {
      a.close();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.bluetooth.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */