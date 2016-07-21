.class Lcom/estrongs/fs/impl/e/d;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/impl/e/a;


# direct methods
.method constructor <init>(Lcom/estrongs/fs/impl/e/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/impl/e/d;->a:Lcom/estrongs/fs/impl/e/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/16 v2, 0xa

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/impl/e/d;->a:Lcom/estrongs/fs/impl/e/a;

    invoke-static {v1}, Lcom/estrongs/fs/impl/e/a;->a(Lcom/estrongs/fs/impl/e/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/impl/e/d;->a:Lcom/estrongs/fs/impl/e/a;

    invoke-static {v0}, Lcom/estrongs/fs/impl/e/a;->b(Lcom/estrongs/fs/impl/e/a;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/impl/e/d;->a:Lcom/estrongs/fs/impl/e/a;

    invoke-static {v0}, Lcom/estrongs/fs/impl/e/a;->b(Lcom/estrongs/fs/impl/e/a;)V

    goto :goto_0
.end method
