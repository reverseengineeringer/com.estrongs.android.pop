package com.estrongs.android.pop;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.estrongs.android.exception.GeneralException;
import com.estrongs.android.pop.netfs.NetFsException;
import com.estrongs.android.pop.netfs.NetFsException.ERROR_CODE;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.view.fh;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.android.ui.dialog.ct;
import com.estrongs.android.ui.dialog.ey;
import com.estrongs.android.ui.dialog.ix;
import com.estrongs.android.ui.view.CreateOAuthNetDisk;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bd;
import com.estrongs.android.view.aw;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.FsProviderNotFoundException;
import com.estrongs.fs.impl.adb.AdbFsException;
import com.estrongs.fs.impl.adb.AdbFsException.ERROR_CODE;
import com.estrongs.fs.impl.pcs.PcsFileSystem.PcsFileSystemException;
import com.estrongs.fs.impl.usb.UsbFsException;
import com.estrongs.fs.impl.usb.UsbFsException.ERROR_CODE;
import com.estrongs.fs.o;
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

public class h
{
  Activity a = null;
  com.estrongs.android.a.d b;
  ConnectivityManager c = null;
  
  public h(Activity paramActivity, com.estrongs.android.a.d paramd)
  {
    a = paramActivity;
    b = paramd;
  }
  
  private void a(String paramString, boolean paramBoolean)
  {
    ct localct = new ct(a).a(2131427402).b(a.getString(2131427880) + "\n" + paramString);
    if (paramBoolean)
    {
      localct.b(2131428009, new l(this, paramString));
      localct.c(2131427340, null);
    }
    for (;;)
    {
      localct.b().show();
      return;
      localct.a(2131427340, null);
    }
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
    paramString = new com.estrongs.android.a.a(a, paramString);
    paramString.a(b);
    paramString.show();
  }
  
  public boolean a(String paramString, Throwable paramThrowable, aw paramaw)
  {
    int i = 0;
    if ((paramThrowable instanceof FsProviderNotFoundException))
    {
      com.estrongs.android.pop.b.a.a(a, am.by(paramString), ((FsProviderNotFoundException)paramThrowable).getFlagInstallOrUpdate(), new i(this, paramString));
      return false;
    }
    Object localObject1 = paramThrowable.getMessage();
    if (localObject1 == null) {
      localObject1 = "";
    }
    for (;;)
    {
      if (((String)localObject1).contains("baidu-up-to-pcs"))
      {
        if (FileExplorerActivity.J() != null) {
          FileExplorerActivity.J().S();
        }
        return true;
      }
      if ((paramThrowable instanceof FileSystemException))
      {
        paramThrowable = (FileSystemException)paramThrowable;
        if (paramThrowable.getCause() != null) {}
        paramThrowable = com.estrongs.android.exception.a.a(paramThrowable);
      }
      for (;;)
      {
        Object localObject2 = a.getString(2131427882);
        if ((paramThrowable instanceof IllegalArgumentException))
        {
          if (!String.valueOf(530).equals(localObject1)) {
            break label1545;
          }
          if (ad.a(a).f(paramString))
          {
            new ey(a, paramString, ad.a(a).h(paramString), false).a();
            if (am.y(paramString) != null) {
              ag.a(a, a.getString(2131427906), 1);
            }
            return true;
          }
          paramString = MessageFormat.format(a.getString(2131427893), new Object[] { am.a(paramString) });
          if (!(paramThrowable instanceof UnknownHostException))
          {
            paramaw = paramString;
            if ((paramThrowable instanceof FileSystemException))
            {
              paramaw = paramString;
              if (paramString != null)
              {
                paramaw = paramString;
                if (!paramString.startsWith("Not result in the file system for ")) {}
              }
            }
          }
          else
          {
            paramaw = a.getString(2131427399);
          }
        }
        label1545:
        label1551:
        for (;;)
        {
          try
          {
            a(paramaw, false);
            return true;
            if ((paramThrowable instanceof NetFsException))
            {
              if ((paramThrowable instanceof PcsFileSystem.PcsFileSystemException))
              {
                int j = errorCode;
                if ((j >= 31041) && (j <= 31046))
                {
                  localObject2 = ((FileExplorerActivity)a).ab();
                  ((fh)localObject2).a(paramaw, paramString);
                  ((fh)localObject2).a(null, j, a.getString(2131428632));
                }
              }
              if (error == NetFsException.ERROR_CODE.NETFS_ERROR_AUTH_FAILED)
              {
                paramaw = am.ag(paramString);
                paramThrowable = am.an(paramString);
                if ((paramaw.equals("/")) && (("dropbox".equals(paramThrowable)) || ("box".equals(paramThrowable))))
                {
                  paramaw = new Intent(a, CreateOAuthNetDisk.class);
                  paramaw.putExtra("nettype", paramThrowable);
                  paramaw.putExtra("editServer", true);
                  paramaw.putExtra("originalPath", paramString);
                  a.startActivity(paramaw);
                  ag.a(a, a.getString(2131428374), 1);
                  return true;
                }
              }
              if ((((String)localObject1).contains("UnknownHostException")) || (((String)localObject1).contains("timed out")) || (((String)localObject1).contains("ConnectException"))) {
                i = 1;
              }
              if ((i != 0) && (!a()))
              {
                ag.a(a, a.getString(2131427916), 1);
                return true;
              }
              if (((String)localObject1).contains("Error: oauth_problem=timestamp_refused"))
              {
                ag.a(a, a.getString(2131428247), 1);
                continue;
              }
              ag.a(a, am.bL(paramString) + "\n" + a.getString(2131427767), 1);
              continue;
            }
            if ((paramThrowable instanceof GeneralException))
            {
              paramaw = ad.a(a).h(paramString);
              paramThrowable = paramaw;
              if (paramaw == null) {
                paramThrowable = am.a(paramString);
              }
              new ey(a, paramString, paramThrowable, false).a();
              if (am.y(paramString) != null) {
                ag.a(a, a.getString(2131427906), 1);
              }
              return true;
            }
            if ((paramThrowable instanceof IOException))
            {
              if (((String)localObject1).contains("Invalid operation"))
              {
                paramString = "Invalid operation";
                break;
              }
              if (String.valueOf(550).equals(localObject1))
              {
                paramString = a.getString(2131427884);
                break;
              }
              if ((paramThrowable instanceof SmbAuthException))
              {
                if (((String)localObject1).indexOf("Logon failure") >= 0)
                {
                  a(paramString);
                  return true;
                }
                if (((String)localObject1).indexOf("Access is denied") < 0) {
                  break label1545;
                }
                paramString = a.getString(2131427884);
                break;
              }
              if ((paramThrowable instanceof SmbException))
              {
                paramString = (String)localObject2 + "\n" + a.getString(2131427887) + "\n" + a.getString(2131427881) + "\n" + a.getString(2131427883) + "\n" + a.getString(2131427886);
                break;
              }
              if (((paramThrowable instanceof ConnectException)) || ((paramThrowable instanceof SocketException)) || ((paramThrowable instanceof SocketTimeoutException)))
              {
                paramString = (String)localObject2 + "\n" + a.getString(2131427881) + "\n" + a.getString(2131427883) + "\n" + a.getString(2131427885);
                break;
              }
              if (!(paramThrowable instanceof FileNotFoundException)) {
                break label1545;
              }
              ag.a(a, String.format(a.getString(2131428087), new Object[] { am.bL(paramString) }), 1);
              return false;
            }
            if ((paramThrowable instanceof UsbFsException))
            {
              paramString = a.getText(2131427766);
              if (errorCode == UsbFsException.ERROR_CODE.USB_ERROR_TYPE_NOT_SUPPORTE)
              {
                paramString = a.getText(2131428474);
                ag.a(a, paramString, 1);
                return true;
              }
              if (errorCode != UsbFsException.ERROR_CODE.USB_ERROR_IO_ERROR) {
                break label1551;
              }
              paramString = a.getText(2131427851);
              continue;
            }
            if ((paramThrowable instanceof AdbFsException))
            {
              if ((errorCode == AdbFsException.ERROR_CODE.ADB_ERROR_ES_NOT_INSTALLED) || (errorCode == AdbFsException.ERROR_CODE.ADB_ERROR_ES_NEED_UPDATE))
              {
                paramaw = FileExplorerActivity.J();
                localObject1 = new ArrayList();
                ((ArrayList)localObject1).add(com.estrongs.fs.d.a().j(agetApplicationInfosourceDir));
                paramThrowable = new o(paramString);
                localObject1 = new com.estrongs.fs.b.a((List)localObject1, paramThrowable, true);
                ((com.estrongs.fs.b.a)localObject1).setDescription(String.format(a.getString(2131428727), new Object[] { am.bL(paramThrowable.getAbsolutePath()) }));
                ((com.estrongs.fs.b.a)localObject1).setTaskDecisionListener(new m(paramaw));
                ((com.estrongs.fs.b.a)localObject1).addTaskStatusChangeListener(new j(this, paramString));
                paramString = new ix(paramaw, paramaw.getString(2131427460), (com.estrongs.a.a)localObject1);
                paramString.a(String.format(a.getString(2131428727), new Object[] { am.bL(paramThrowable.getAbsolutePath()) }), null);
                paramString.a(false);
                paramString.show();
                ((com.estrongs.fs.b.a)localObject1).a(paramString);
                ((com.estrongs.fs.b.a)localObject1).execute();
                return true;
              }
              if (errorCode == AdbFsException.ERROR_CODE.ADB_ERROR_ES_AUTH_FAILED)
              {
                paramString = new com.estrongs.android.a.a(a, paramString, am.a(paramString));
                paramString.a(a.getString(2131428732));
                paramString.a(b);
                paramString.show();
                return true;
              }
            }
            else
            {
              if (bd.a((CharSequence)localObject1))
              {
                paramString = (String)localObject1 + "\n" + (String)localObject2 + "\n" + a.getString(2131427881) + "\n" + a.getString(2131427883) + "\n" + a.getString(2131427885);
                break;
              }
              if ("CannotGetHotRes".equals(localObject1)) {
                paramString = (String)localObject2 + "\n" + a.getString(2131427883) + "\n";
              }
            }
          }
          catch (Exception paramString)
          {
            paramString.printStackTrace();
            continue;
          }
          paramString = (String)localObject1;
          break;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */