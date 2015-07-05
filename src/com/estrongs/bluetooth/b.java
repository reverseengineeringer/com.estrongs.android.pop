package com.estrongs.bluetooth;

import android.bluetooth.BluetoothServerSocket;
import b.a.a.e;
import b.a.a.f;
import java.io.IOException;

public class b
  implements f
{
  private BluetoothServerSocket a;
  
  public b(BluetoothServerSocket paramBluetoothServerSocket)
  {
    a = paramBluetoothServerSocket;
  }
  
  public e a()
  {
    try
    {
      a locala = new a(a.accept());
      return locala;
    }
    catch (IOException localIOException)
    {
      throw localIOException;
    }
  }
  
  public void e()
  {
    a.close();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.bluetooth.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */