.class Lcom/estrongs/android/pop/view/fa;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/fa;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v0, "device"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/estrongs/android/pop/view/fa;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->f(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/navigation/n;

    move-result-object v3

    const-string v4, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/estrongs/fs/impl/usb/e;->e()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/estrongs/fs/impl/usb/e;->a()[Lcom/estrongs/fs/impl/usb/g;

    invoke-static {v0}, Lcom/estrongs/fs/impl/usb/e;->a(Landroid/hardware/usb/UsbDevice;)Lcom/estrongs/fs/impl/usb/g;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/g;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/g;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lcom/estrongs/android/ui/navigation/n;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v4, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/estrongs/fs/impl/usb/g;->a(Landroid/hardware/usb/UsbDevice;)Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_3

    invoke-virtual {v3, v2}, Lcom/estrongs/android/ui/navigation/n;->b(Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/estrongs/fs/a/b;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/fa;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v3, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->x:Ljava/util/List;

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/aw;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/estrongs/android/view/aw;->c()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lcom/estrongs/android/view/aw;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v1, p0, Lcom/estrongs/android/pop/view/fa;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Lcom/estrongs/android/view/aw;)V

    :cond_4
    invoke-static {}, Lcom/estrongs/fs/impl/usb/e;->a()[Lcom/estrongs/fs/impl/usb/g;

    move-result-object v0

    if-eqz v0, :cond_5

    array-length v0, v0

    if-nez v0, :cond_0

    :cond_5
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/estrongs/fs/impl/usb/e;->a(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method
