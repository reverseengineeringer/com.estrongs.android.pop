.class Lcom/estrongs/fs/impl/usb/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/fs/impl/usb/a;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# instance fields
.field final synthetic a:Lcom/estrongs/fs/impl/usb/g;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/estrongs/fs/impl/usb/g;I)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/fs/impl/usb/j;->a:Lcom/estrongs/fs/impl/usb/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/estrongs/fs/impl/usb/g;->l()I

    move-result v0

    iput v0, p0, Lcom/estrongs/fs/impl/usb/j;->b:I

    iput p2, p0, Lcom/estrongs/fs/impl/usb/j;->b:I

    return-void
.end method


# virtual methods
.method public a([BI)I
    .locals 4

    invoke-static {}, Lcom/estrongs/fs/impl/usb/g;->m()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/j;->a:Lcom/estrongs/fs/impl/usb/g;

    invoke-static {v0}, Lcom/estrongs/fs/impl/usb/g;->a(Lcom/estrongs/fs/impl/usb/g;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/j;->a:Lcom/estrongs/fs/impl/usb/g;

    invoke-static {v0}, Lcom/estrongs/fs/impl/usb/g;->b(Lcom/estrongs/fs/impl/usb/g;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Device is removed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/j;->a:Lcom/estrongs/fs/impl/usb/g;

    invoke-static {v0}, Lcom/estrongs/fs/impl/usb/g;->b(Lcom/estrongs/fs/impl/usb/g;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/j;->a:Lcom/estrongs/fs/impl/usb/g;

    invoke-static {v2}, Lcom/estrongs/fs/impl/usb/g;->c(Lcom/estrongs/fs/impl/usb/g;)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v2

    iget v3, p0, Lcom/estrongs/fs/impl/usb/j;->b:I

    invoke-virtual {v0, v2, p1, p2, v3}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0
.end method

.method public a([BII)I
    .locals 7

    invoke-static {}, Lcom/estrongs/fs/impl/usb/g;->m()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/j;->a:Lcom/estrongs/fs/impl/usb/g;

    invoke-static {v0}, Lcom/estrongs/fs/impl/usb/g;->a(Lcom/estrongs/fs/impl/usb/g;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/j;->a:Lcom/estrongs/fs/impl/usb/g;

    invoke-static {v0}, Lcom/estrongs/fs/impl/usb/g;->b(Lcom/estrongs/fs/impl/usb/g;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Device is removed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/j;->a:Lcom/estrongs/fs/impl/usb/g;

    invoke-static {v0}, Lcom/estrongs/fs/impl/usb/g;->b(Lcom/estrongs/fs/impl/usb/g;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/j;->a:Lcom/estrongs/fs/impl/usb/g;

    invoke-static {v1}, Lcom/estrongs/fs/impl/usb/g;->c(Lcom/estrongs/fs/impl/usb/g;)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v1

    iget v5, p0, Lcom/estrongs/fs/impl/usb/j;->b:I

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BIII)I

    move-result v0

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0
.end method

.method public b([BI)I
    .locals 4

    invoke-static {}, Lcom/estrongs/fs/impl/usb/g;->m()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/j;->a:Lcom/estrongs/fs/impl/usb/g;

    invoke-static {v0}, Lcom/estrongs/fs/impl/usb/g;->a(Lcom/estrongs/fs/impl/usb/g;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/j;->a:Lcom/estrongs/fs/impl/usb/g;

    invoke-static {v0}, Lcom/estrongs/fs/impl/usb/g;->b(Lcom/estrongs/fs/impl/usb/g;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Device is removed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/j;->a:Lcom/estrongs/fs/impl/usb/g;

    invoke-static {v0}, Lcom/estrongs/fs/impl/usb/g;->b(Lcom/estrongs/fs/impl/usb/g;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/j;->a:Lcom/estrongs/fs/impl/usb/g;

    invoke-static {v2}, Lcom/estrongs/fs/impl/usb/g;->d(Lcom/estrongs/fs/impl/usb/g;)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v2

    iget v3, p0, Lcom/estrongs/fs/impl/usb/j;->b:I

    invoke-virtual {v0, v2, p1, p2, v3}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0
.end method

.method public b([BII)I
    .locals 7

    invoke-static {}, Lcom/estrongs/fs/impl/usb/g;->m()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/j;->a:Lcom/estrongs/fs/impl/usb/g;

    invoke-static {v0}, Lcom/estrongs/fs/impl/usb/g;->a(Lcom/estrongs/fs/impl/usb/g;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/j;->a:Lcom/estrongs/fs/impl/usb/g;

    invoke-static {v0}, Lcom/estrongs/fs/impl/usb/g;->b(Lcom/estrongs/fs/impl/usb/g;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Device is removed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/j;->a:Lcom/estrongs/fs/impl/usb/g;

    invoke-static {v0}, Lcom/estrongs/fs/impl/usb/g;->b(Lcom/estrongs/fs/impl/usb/g;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/j;->a:Lcom/estrongs/fs/impl/usb/g;

    invoke-static {v1}, Lcom/estrongs/fs/impl/usb/g;->d(Lcom/estrongs/fs/impl/usb/g;)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v1

    iget v5, p0, Lcom/estrongs/fs/impl/usb/j;->b:I

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BIII)I

    move-result v0

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0
.end method
