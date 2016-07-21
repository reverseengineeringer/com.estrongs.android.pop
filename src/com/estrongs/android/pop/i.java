package com.estrongs.android.pop;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.TransactionTooLargeException;
import com.estrongs.android.exception.GeneralException;
import com.estrongs.android.pop.netfs.NetFsException;
import com.estrongs.android.pop.netfs.NetFsException.ERROR_CODE;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.view.ei;
import com.estrongs.android.ui.dialog.fb;
import com.estrongs.android.ui.dialog.jh;
import com.estrongs.android.ui.view.CreateOAuthNetDisk;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bk;
import com.estrongs.android.util.l;
import com.estrongs.android.view.cr;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.FsProviderNotFoundException;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.adb.AdbFsException;
import com.estrongs.fs.impl.adb.AdbFsException.ERROR_CODE;
import com.estrongs.fs.impl.pcs.PcsFileSystem.PcsFileSystemException;
import com.estrongs.fs.impl.usb.UsbFsException;
import com.estrongs.fs.impl.usb.UsbFsException.ERROR_CODE;
import com.estrongs.fs.z;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.ConnectException;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.List;
import jcifs.smb.SmbAuthException;
import jcifs.smb.SmbException;

public class i
{
  private static final String d = i.class.getSimpleName();
  Activity a = null;
  com.estrongs.android.d.d b;
  ConnectivityManager c = null;
  
  public i(Activity paramActivity, com.estrongs.android.d.d paramd)
  {
    a = paramActivity;
    b = paramd;
  }
  
  private boolean a()
  {
    if (c == null) {
      c = ((ConnectivityManager)a.getSystemService("connectivity"));
    }
    if (c == null) {
      return false;
    }
    NetworkInfo localNetworkInfo = c.getActiveNetworkInfo();
    if (localNetworkInfo == null) {}
    for (boolean bool = false;; bool = localNetworkInfo.isConnected()) {
      return bool;
    }
  }
  
  protected void a(String paramString)
  {
    paramString = new com.estrongs.android.d.a(a, paramString);
    paramString.a(b);
    paramString.show();
  }
  
  public boolean a(String paramString, Throwable paramThrowable, cr paramcr)
  {
    int i = 0;
    paramThrowable.printStackTrace();
    if ((paramThrowable instanceof FsProviderNotFoundException))
    {
      com.estrongs.android.pop.b.a.a(a, ap.bP(paramString), ((FsProviderNotFoundException)paramThrowable).getFlagInstallOrUpdate(), new j(this, paramString));
      return false;
    }
    Object localObject = paramThrowable.getMessage();
    if (localObject == null) {
      localObject = "";
    }
    for (;;)
    {
      if (((String)localObject).contains("baidu-up-to-pcs"))
      {
        if (FileExplorerActivity.X() != null) {
          FileExplorerActivity.X().ai();
        }
        return true;
      }
      if ((paramThrowable instanceof FileSystemException))
      {
        paramThrowable = (FileSystemException)paramThrowable;
        if (paramThrowable.getCause() == null) {}
      }
      for (Throwable localThrowable = com.estrongs.android.exception.a.a(paramThrowable);; localThrowable = paramThrowable)
      {
        String str = a.getString(2131231802);
        if ((localThrowable instanceof IllegalArgumentException))
        {
          paramThrowable = (Throwable)localObject;
          if (String.valueOf(530).equals(localObject))
          {
            if (ad.a(a).f(paramString))
            {
              new fb(a, paramString, ad.a(a).h(paramString), false).a();
              if (ap.A(paramString) != null) {
                ak.a(a, a.getString(2131231051), 1);
              }
              return true;
            }
            paramThrowable = MessageFormat.format(a.getString(2131232327), new Object[] { ap.a(paramString) });
          }
        }
        do
        {
          for (;;)
          {
            if (((localThrowable instanceof UnknownHostException)) || (((localThrowable instanceof FileSystemException)) && (paramThrowable != null) && (paramThrowable.startsWith("Not result in the file system for ")))) {
              a.getString(2131231719);
            }
            return true;
            if ((localThrowable instanceof NetFsException))
            {
              if ((localThrowable instanceof PcsFileSystem.PcsFileSystemException))
              {
                int j = errorCode;
                if ((j >= 31041) && (j <= 31046))
                {
                  paramThrowable = ((FileExplorerActivity)a).ar();
                  paramThrowable.a(paramcr, paramString);
                  paramThrowable.a(null, j, a.getString(2131231956));
                }
              }
              if (error == NetFsException.ERROR_CODE.NETFS_ERROR_AUTH_FAILED)
              {
                paramcr = ap.aq(paramString);
                paramThrowable = ap.ax(paramString);
                if ((paramcr.equals("/")) && (("dropbox".equals(paramThrowable)) || ("box".equals(paramThrowable))))
                {
                  paramcr = new Intent(a, CreateOAuthNetDisk.class);
                  paramcr.putExtra("nettype", paramThrowable);
                  paramcr.putExtra("editServer", true);
                  paramcr.putExtra("originalPath", paramString);
                  a.startActivity(paramcr);
                  ak.a(a, a.getString(2131231054), 1);
                  return true;
                }
              }
              if ((((String)localObject).contains("UnknownHostException")) || (((String)localObject).contains("timed out")) || (((String)localObject).contains("ConnectException"))) {
                i = 1;
              }
              if ((i != 0) && (!a())) {
                ak.a(a, a.getString(2131231827), 1);
              }
              for (;;)
              {
                return true;
                if (((String)localObject).contains("Error: oauth_problem=timestamp_refused")) {
                  ak.a(a, a.getString(2131232441), 1);
                } else {
                  ak.a(a, ap.cc(paramString) + "\n" + a.getString(2131231903), 1);
                }
              }
            }
            if ((localThrowable instanceof GeneralException))
            {
              paramcr = ad.a(a).h(paramString);
              paramThrowable = paramcr;
              if (paramcr == null) {
                paramThrowable = ap.a(paramString);
              }
              new fb(a, paramString, paramThrowable, false).a();
              if (ap.A(paramString) != null) {
                ak.a(a, a.getString(2131231051), 1);
              }
              return true;
            }
            if (!(localThrowable instanceof IOException)) {
              break label1042;
            }
            if (((String)localObject).contains("Invalid operation"))
            {
              paramThrowable = "Invalid operation";
            }
            else if (String.valueOf(550).equals(localObject))
            {
              paramThrowable = a.getString(2131231799);
            }
            else if ((localThrowable instanceof SmbAuthException))
            {
              if (((String)localObject).indexOf("Logon failure") >= 0)
              {
                a(paramString);
                return true;
              }
              paramThrowable = (Throwable)localObject;
              if (((String)localObject).indexOf("Access is denied") >= 0) {
                paramThrowable = a.getString(2131231799);
              }
            }
            else if ((localThrowable instanceof SmbException))
            {
              paramThrowable = str + "\n" + a.getString(2131231800) + "\n" + a.getString(2131231798) + "\n" + a.getString(2131231796) + "\n" + a.getString(2131231801);
            }
            else
            {
              if ((!(localThrowable instanceof ConnectException)) && (!(localThrowable instanceof SocketException)) && (!(localThrowable instanceof SocketTimeoutException))) {
                break;
              }
              paramThrowable = str + "\n" + a.getString(2131231798) + "\n" + a.getString(2131231796) + "\n" + a.getString(2131231797);
            }
          }
          paramThrowable = (Throwable)localObject;
        } while (!(localThrowable instanceof FileNotFoundException));
        ak.a(a, String.format(a.getString(2131231878), new Object[] { ap.cc(paramString) }), 1);
        return false;
        label1042:
        if ((localThrowable instanceof UsbFsException))
        {
          paramString = a.getText(2131231901);
          if (errorCode == UsbFsException.ERROR_CODE.USB_ERROR_TYPE_NOT_SUPPORTE) {
            paramString = a.getText(2131232529);
          }
        }
        for (;;)
        {
          ak.a(a, paramString, 1);
          return true;
          if (errorCode == UsbFsException.ERROR_CODE.USB_ERROR_IO_ERROR)
          {
            paramString = a.getText(2131231465);
            continue;
            if ((localThrowable instanceof AdbFsException))
            {
              if ((errorCode == AdbFsException.ERROR_CODE.ADB_ERROR_ES_NOT_INSTALLED) || (errorCode == AdbFsException.ERROR_CODE.ADB_ERROR_ES_NEED_UPDATE))
              {
                paramcr = FileExplorerActivity.X();
                localObject = new ArrayList();
                ((ArrayList)localObject).add(com.estrongs.fs.d.a().j(agetApplicationInfosourceDir));
                paramThrowable = new z(paramString);
                localObject = new com.estrongs.fs.b.a((List)localObject, paramThrowable, true);
                ((com.estrongs.fs.b.a)localObject).setDescription(String.format(a.getString(2131230904), new Object[] { ap.cc(paramThrowable.getAbsolutePath()) }));
                ((com.estrongs.fs.b.a)localObject).setTaskDecisionListener(new m(paramcr));
                ((com.estrongs.fs.b.a)localObject).addTaskStatusChangeListener(new k(this, paramString));
                paramString = new jh(paramcr, paramcr.getString(2131232173), (com.estrongs.a.a)localObject);
                paramString.a(String.format(a.getString(2131230904), new Object[] { ap.cc(paramThrowable.getAbsolutePath()) }), null);
                paramString.a(false);
                paramString.show();
                ((com.estrongs.fs.b.a)localObject).a(paramString);
                ((com.estrongs.fs.b.a)localObject).execute();
                return true;
              }
              paramThrowable = (Throwable)localObject;
              if (errorCode != AdbFsException.ERROR_CODE.ADB_ERROR_ES_AUTH_FAILED) {
                break;
              }
              paramString = new com.estrongs.android.d.a(a, paramString, ap.a(paramString));
              paramString.a(a.getString(2131230903));
              paramString.a(b);
              paramString.show();
              return true;
            }
            if ((localThrowable instanceof TransactionTooLargeException))
            {
              l.c(d, "IPC error:", localThrowable);
              return true;
            }
            if (bk.a((CharSequence)localObject))
            {
              paramThrowable = (String)localObject + "\n" + str + "\n" + a.getString(2131231798) + "\n" + a.getString(2131231796) + "\n" + a.getString(2131231797);
              break;
            }
            paramThrowable = (Throwable)localObject;
            if (!"CannotGetHotRes".equals(localObject)) {
              break;
            }
            paramThrowable = str + "\n" + a.getString(2131231796) + "\n";
            break;
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */