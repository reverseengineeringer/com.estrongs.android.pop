.class public Lcom/estrongs/android/pop/h;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/app/Activity;

.field b:Lcom/estrongs/android/a/d;

.field c:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/estrongs/android/a/d;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/h;->a:Landroid/app/Activity;

    iput-object v0, p0, Lcom/estrongs/android/pop/h;->c:Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/estrongs/android/pop/h;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/estrongs/android/pop/h;->b:Lcom/estrongs/android/a/d;

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 6

    const/4 v5, 0x0

    const v4, 0x7f0b000c

    new-instance v0, Lcom/estrongs/android/ui/dialog/ct;

    iget-object v1, p0, Lcom/estrongs/android/pop/h;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b004a

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;->a(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/pop/h;->a:Landroid/app/Activity;

    const v3, 0x7f0b0228

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;->b(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    if-eqz p2, :cond_0

    const v1, 0x7f0b02a9

    new-instance v2, Lcom/estrongs/android/pop/l;

    invoke-direct {v2, p0, p1}, Lcom/estrongs/android/pop/l;-><init>(Lcom/estrongs/android/pop/h;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ct;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    invoke-virtual {v0, v4, v5}, Lcom/estrongs/android/ui/dialog/ct;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    :goto_0
    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ct;->b()Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->show()V

    return-void

    :cond_0
    invoke-virtual {v0, v4, v5}, Lcom/estrongs/android/ui/dialog/ct;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    goto :goto_0
.end method

.method private a()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/h;->c:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/h;->a:Landroid/app/Activity;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/estrongs/android/pop/h;->c:Landroid/net/ConnectivityManager;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/h;->c:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/h;->c:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    goto :goto_1
.end method


# virtual methods
.method protected a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/estrongs/android/a/a;

    iget-object v1, p0, Lcom/estrongs/android/pop/h;->a:Landroid/app/Activity;

    invoke-direct {v0, v1, p1}, Lcom/estrongs/android/a/a;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/h;->b:Lcom/estrongs/android/a/d;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/a/a;->a(Lcom/estrongs/android/a/d;)V

    invoke-virtual {v0}, Lcom/estrongs/android/a/a;->show()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Throwable;Lcom/estrongs/android/view/aw;)Z
    .locals 9

    const v8, 0x7f0b022c

    const v7, 0x7f0b0229

    const v6, 0x7f0b022b

    const/4 v3, 0x0

    const/4 v4, 0x1

    instance-of v0, p2, Lcom/estrongs/fs/FsProviderNotFoundException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/h;->a:Landroid/app/Activity;

    invoke-static {p1}, Lcom/estrongs/android/util/am;->by(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    check-cast p2, Lcom/estrongs/fs/FsProviderNotFoundException;

    invoke-virtual {p2}, Lcom/estrongs/fs/FsProviderNotFoundException;->getFlagInstallOrUpdate()I

    move-result v2

    new-instance v4, Lcom/estrongs/android/pop/i;

    invoke-direct {v4, p0, p1}, Lcom/estrongs/android/pop/i;-><init>(Lcom/estrongs/android/pop/h;Ljava/lang/String;)V

    invoke-static {v0, v1, v2, v4}, Lcom/estrongs/android/pop/b/a;->a(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/Runnable;)V

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_25

    const-string v0, ""

    move-object v2, v0

    :goto_1
    const-string v0, "baidu-up-to-pcs"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->S()V

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    instance-of v0, p2, Lcom/estrongs/fs/FileSystemException;

    if-eqz v0, :cond_24

    check-cast p2, Lcom/estrongs/fs/FileSystemException;

    invoke-virtual {p2}, Lcom/estrongs/fs/FileSystemException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    :cond_3
    invoke-static {p2}, Lcom/estrongs/android/exception/a;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    :goto_2
    iget-object v0, p0, Lcom/estrongs/android/pop/h;->a:Landroid/app/Activity;

    const v5, 0x7f0b022a

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    instance-of v5, v1, Ljava/lang/IllegalArgumentException;

    if-eqz v5, :cond_8

    const/16 v0, 0x212

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/estrongs/android/pop/h;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/ad;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/estrongs/android/ui/dialog/ey;

    iget-object v1, p0, Lcom/estrongs/android/pop/h;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/estrongs/android/pop/h;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/estrongs/android/pop/ad;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/estrongs/android/ui/dialog/ey;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ey;->a()V

    invoke-static {p1}, Lcom/estrongs/android/util/am;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/h;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/android/pop/h;->a:Landroid/app/Activity;

    const v2, 0x7f0b0242

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :cond_4
    move v3, v4

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/pop/h;->a:Landroid/app/Activity;

    const v2, 0x7f0b0235

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/estrongs/android/util/am;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v0, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move v0, v3

    :goto_3
    instance-of v3, v1, Ljava/net/UnknownHostException;

    if-nez v3, :cond_6

    instance-of v1, v1, Lcom/estrongs/fs/FileSystemException;

    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    const-string v1, "Not result in the file system for "

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    iget-object v1, p0, Lcom/estrongs/android/pop/h;->a:Landroid/app/Activity;

    const v2, 0x7f0b0047

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_7
    :try_start_0
    invoke-direct {p0, v2, v0}, Lcom/estrongs/android/pop/h;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    move v3, v4

    goto/16 :goto_0

    :cond_8
    instance-of v5, v1, Lcom/estrongs/android/pop/netfs/NetFsException;

    if-eqz v5, :cond_10

    instance-of v0, v1, Lcom/estrongs/fs/impl/pcs/PcsFileSystem$PcsFileSystemException;

    if-eqz v0, :cond_9

    move-object v0, v1

    check-cast v0, Lcom/estrongs/fs/impl/pcs/PcsFileSystem$PcsFileSystemException;

    iget v5, v0, Lcom/estrongs/fs/impl/pcs/PcsFileSystem$PcsFileSystemException;->errorCode:I

    const/16 v0, 0x7941

    if-lt v5, v0, :cond_9

    const/16 v0, 0x7946

    if-gt v5, v0, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/pop/h;->a:Landroid/app/Activity;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->ab()Lcom/estrongs/android/pop/view/fh;

    move-result-object v0

    invoke-virtual {v0, p3, p1}, Lcom/estrongs/android/pop/view/fh;->a(Lcom/estrongs/android/view/aw;Ljava/lang/String;)V

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/estrongs/android/pop/h;->a:Landroid/app/Activity;

    const v8, 0x7f0b0518

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v5, v7}, Lcom/estrongs/android/pop/view/fh;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_9
    check-cast v1, Lcom/estrongs/android/pop/netfs/NetFsException;

    iget-object v0, v1, Lcom/estrongs/android/pop/netfs/NetFsException;->error:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    sget-object v1, Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;->NETFS_ERROR_AUTH_FAILED:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    if-ne v0, v1, :cond_b

    invoke-static {p1}, Lcom/estrongs/android/util/am;->ag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/estrongs/android/util/am;->an(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "dropbox"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "box"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/estrongs/android/pop/h;->a:Landroid/app/Activity;

    const-class v3, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "nettype"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "editServer"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "originalPath"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/h;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/h;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/android/pop/h;->a:Landroid/app/Activity;

    const v2, 0x7f0b0416

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    move v3, v4

    goto/16 :goto_0

    :cond_b
    const-string v0, "UnknownHostException"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "timed out"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "ConnectException"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    move v3, v4

    :cond_d
    if-eqz v3, :cond_e

    invoke-direct {p0}, Lcom/estrongs/android/pop/h;->a()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/estrongs/android/pop/h;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/android/pop/h;->a:Landroid/app/Activity;

    const v2, 0x7f0b024c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :goto_5
    move v3, v4

    goto/16 :goto_0

    :cond_e
    const-string v0, "Error: oauth_problem=timestamp_refused"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/estrongs/android/pop/h;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/android/pop/h;->a:Landroid/app/Activity;

    const v2, 0x7f0b0397

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_5

    :cond_f
    iget-object v0, p0, Lcom/estrongs/android/pop/h;->a:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/estrongs/android/util/am;->bL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/h;->a:Landroid/app/Activity;

    const v3, 0x7f0b01b7

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_5

    :cond_10
    instance-of v5, v1, Lcom/estrongs/android/exception/GeneralException;

    if-eqz v5, :cond_13

    iget-object v0, p0, Lcom/estrongs/android/pop/h;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/ad;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    invoke-static {p1}, Lcom/estrongs/android/util/am;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_11
    new-instance v1, Lcom/estrongs/android/ui/dialog/ey;

    iget-object v2, p0, Lcom/estrongs/android/pop/h;->a:Landroid/app/Activity;

    invoke-direct {v1, v2, p1, v0, v3}, Lcom/estrongs/android/ui/dialog/ey;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/ey;->a()V

    invoke-static {p1}, Lcom/estrongs/android/util/am;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/estrongs/android/pop/h;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/android/pop/h;->a:Landroid/app/Activity;

    const v2, 0x7f0b0242

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :cond_12
    move v3, v4

    goto/16 :goto_0

    :cond_13
    instance-of v5, v1, Ljava/io/IOException;

    if-eqz v5, :cond_1b

    const-string v5, "Invalid operation"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_14

    const-string v2, "Invalid operation"

    move v0, v3

    goto/16 :goto_3

    :cond_14
    const/16 v5, 0x226

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    iget-object v0, p0, Lcom/estrongs/android/pop/h;->a:Landroid/app/Activity;

    invoke-virtual {v0, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move v0, v3

    goto/16 :goto_3

    :cond_15
    instance-of v5, v1, Ljcifs/smb/SmbAuthException;

    if-eqz v5, :cond_17

    const-string v0, "Logon failure"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_16

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/h;->a(Ljava/lang/String;)V

    move v3, v4

    goto/16 :goto_0

    :cond_16
    const-string v0, "Access is denied"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_22

    iget-object v0, p0, Lcom/estrongs/android/pop/h;->a:Landroid/app/Activity;

    invoke-virtual {v0, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move v0, v3

    goto/16 :goto_3

    :cond_17
    instance-of v5, v1, Ljcifs/smb/SmbException;

    if-eqz v5, :cond_18

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/pop/h;->a:Landroid/app/Activity;

    const v5, 0x7f0b022f

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/pop/h;->a:Landroid/app/Activity;

    invoke-virtual {v2, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/pop/h;->a:Landroid/app/Activity;

    invoke-virtual {v2, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/pop/h;->a:Landroid/app/Activity;

    const v5, 0x7f0b022e

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move v0, v3

    goto/16 :goto_3

    :cond_18
    instance-of v5, v1, Ljava/net/ConnectException;

    if-nez v5, :cond_19

    instance-of v5, v1, Ljava/net/SocketException;

    if-nez v5, :cond_19

    instance-of v5, v1, Ljava/net/SocketTimeoutException;

    if-eqz v5, :cond_1a

    :cond_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/pop/h;->a:Landroid/app/Activity;

    invoke-virtual {v2, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/pop/h;->a:Landroid/app/Activity;

    invoke-virtual {v2, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/pop/h;->a:Landroid/app/Activity;

    const v5, 0x7f0b022d

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move v0, v3

    goto/16 :goto_3

    :cond_1a
    instance-of v0, v1, Ljava/io/FileNotFoundException;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/estrongs/android/pop/h;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/android/pop/h;->a:Landroid/app/Activity;

    const v2, 0x7f0b02f7

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/estrongs/android/util/am;->bL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto/16 :goto_0

    :cond_1b
    instance-of v5, v1, Lcom/estrongs/fs/impl/usb/UsbFsException;

    if-eqz v5, :cond_1d

    iget-object v0, p0, Lcom/estrongs/android/pop/h;->a:Landroid/app/Activity;

    const v2, 0x7f0b01b6

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/estrongs/fs/impl/usb/UsbFsException;

    iget-object v0, v0, Lcom/estrongs/fs/impl/usb/UsbFsException;->errorCode:Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;

    sget-object v3, Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;->USB_ERROR_TYPE_NOT_SUPPORTE:Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;

    if-ne v0, v3, :cond_1c

    iget-object v0, p0, Lcom/estrongs/android/pop/h;->a:Landroid/app/Activity;

    const v1, 0x7f0b047a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_6
    iget-object v1, p0, Lcom/estrongs/android/pop/h;->a:Landroid/app/Activity;

    invoke-static {v1, v0, v4}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    move v3, v4

    goto/16 :goto_0

    :cond_1c
    check-cast v1, Lcom/estrongs/fs/impl/usb/UsbFsException;

    iget-object v0, v1, Lcom/estrongs/fs/impl/usb/UsbFsException;->errorCode:Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;

    sget-object v1, Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;->USB_ERROR_IO_ERROR:Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;

    if-ne v0, v1, :cond_23

    iget-object v0, p0, Lcom/estrongs/android/pop/h;->a:Landroid/app/Activity;

    const v1, 0x7f0b020b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_6

    :cond_1d
    instance-of v5, v1, Lcom/estrongs/fs/impl/adb/AdbFsException;

    if-eqz v5, :cond_20

    move-object v0, v1

    check-cast v0, Lcom/estrongs/fs/impl/adb/AdbFsException;

    iget-object v0, v0, Lcom/estrongs/fs/impl/adb/AdbFsException;->errorCode:Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;

    sget-object v5, Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;->ADB_ERROR_ES_NOT_INSTALLED:Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;

    if-eq v0, v5, :cond_1e

    move-object v0, v1

    check-cast v0, Lcom/estrongs/fs/impl/adb/AdbFsException;

    iget-object v0, v0, Lcom/estrongs/fs/impl/adb/AdbFsException;->errorCode:Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;

    sget-object v5, Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;->ADB_ERROR_ES_NEED_UPDATE:Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;

    if-ne v0, v5, :cond_1f

    :cond_1e
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v2

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/estrongs/android/pop/FexApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/estrongs/fs/o;

    invoke-direct {v2, p1}, Lcom/estrongs/fs/o;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/estrongs/fs/b/a;

    invoke-direct {v5, v1, v2, v4}, Lcom/estrongs/fs/b/a;-><init>(Ljava/util/List;Lcom/estrongs/fs/h;Z)V

    iget-object v1, p0, Lcom/estrongs/android/pop/h;->a:Landroid/app/Activity;

    const v6, 0x7f0b0577

    invoke-virtual {v1, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v6, v4, [Ljava/lang/Object;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/estrongs/android/util/am;->bL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/estrongs/fs/b/a;->setDescription(Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/m;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/m;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v5, v1}, Lcom/estrongs/fs/b/a;->setTaskDecisionListener(Lcom/estrongs/a/a/a;)V

    new-instance v1, Lcom/estrongs/android/pop/j;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/pop/j;-><init>(Lcom/estrongs/android/pop/h;Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Lcom/estrongs/fs/b/a;->addTaskStatusChangeListener(Lcom/estrongs/a/a/p;)V

    new-instance v1, Lcom/estrongs/android/ui/dialog/ix;

    const v6, 0x7f0b0084

    invoke-virtual {v0, v6}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v0, v6, v5}, Lcom/estrongs/android/ui/dialog/ix;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/h;->a:Landroid/app/Activity;

    const v6, 0x7f0b0577

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v6, v4, [Ljava/lang/Object;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/am;->bL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v3

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/ui/dialog/ix;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/ui/dialog/ix;

    invoke-virtual {v1, v3}, Lcom/estrongs/android/ui/dialog/ix;->a(Z)Lcom/estrongs/android/ui/dialog/ix;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/ix;->show()V

    invoke-virtual {v5, v1}, Lcom/estrongs/fs/b/a;->a(Lcom/estrongs/android/ui/dialog/cg;)V

    invoke-virtual {v5}, Lcom/estrongs/fs/b/a;->execute()V

    move v3, v4

    goto/16 :goto_0

    :cond_1f
    move-object v0, v1

    check-cast v0, Lcom/estrongs/fs/impl/adb/AdbFsException;

    iget-object v0, v0, Lcom/estrongs/fs/impl/adb/AdbFsException;->errorCode:Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;

    sget-object v5, Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;->ADB_ERROR_ES_AUTH_FAILED:Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;

    if-ne v0, v5, :cond_22

    new-instance v0, Lcom/estrongs/android/a/a;

    iget-object v1, p0, Lcom/estrongs/android/pop/h;->a:Landroid/app/Activity;

    invoke-static {p1}, Lcom/estrongs/android/util/am;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/estrongs/android/a/a;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/h;->a:Landroid/app/Activity;

    const v2, 0x7f0b057c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/a/a;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/h;->b:Lcom/estrongs/android/a/d;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/a/a;->a(Lcom/estrongs/android/a/d;)V

    invoke-virtual {v0}, Lcom/estrongs/android/a/a;->show()V

    move v3, v4

    goto/16 :goto_0

    :cond_20
    invoke-static {v2}, Lcom/estrongs/android/util/bd;->a(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_21

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/pop/h;->a:Landroid/app/Activity;

    invoke-virtual {v2, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/pop/h;->a:Landroid/app/Activity;

    invoke-virtual {v2, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/pop/h;->a:Landroid/app/Activity;

    const v5, 0x7f0b022d

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move v0, v3

    goto/16 :goto_3

    :cond_21
    const-string v5, "CannotGetHotRes"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/pop/h;->a:Landroid/app/Activity;

    invoke-virtual {v2, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move v0, v3

    goto/16 :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    :cond_22
    move v0, v3

    goto/16 :goto_3

    :cond_23
    move-object v0, v2

    goto/16 :goto_6

    :cond_24
    move-object v1, p2

    goto/16 :goto_2

    :cond_25
    move-object v2, v0

    goto/16 :goto_1
.end method
