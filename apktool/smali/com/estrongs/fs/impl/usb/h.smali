.class Lcom/estrongs/fs/impl/usb/h;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/impl/usb/g;


# direct methods
.method constructor <init>(Lcom/estrongs/fs/impl/usb/g;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/impl/usb/h;->a:Lcom/estrongs/fs/impl/usb/g;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.estrongs.fs.impl.usb.USB_PERMISSION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "device"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/h;->a:Lcom/estrongs/fs/impl/usb/g;

    invoke-static {v1}, Lcom/estrongs/fs/impl/usb/g;->e(Lcom/estrongs/fs/impl/usb/g;)Landroid/hardware/usb/UsbDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/h;->a:Lcom/estrongs/fs/impl/usb/g;

    invoke-static {v0}, Lcom/estrongs/fs/impl/usb/g;->f(Lcom/estrongs/fs/impl/usb/g;)Lcom/estrongs/fs/impl/usb/k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/h;->a:Lcom/estrongs/fs/impl/usb/g;

    invoke-static {v0}, Lcom/estrongs/fs/impl/usb/g;->f(Lcom/estrongs/fs/impl/usb/g;)Lcom/estrongs/fs/impl/usb/k;

    move-result-object v0

    const-string v1, "permission"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/estrongs/fs/impl/usb/k;->a(Z)V

    :cond_0
    return-void
.end method
