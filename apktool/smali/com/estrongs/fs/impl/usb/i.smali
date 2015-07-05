.class Lcom/estrongs/fs/impl/usb/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/fs/impl/usb/a;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/impl/usb/g;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/estrongs/fs/impl/usb/g;I)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/fs/impl/usb/i;->a:Lcom/estrongs/fs/impl/usb/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/estrongs/fs/impl/usb/g;->l()I

    move-result v0

    iput v0, p0, Lcom/estrongs/fs/impl/usb/i;->b:I

    iput p2, p0, Lcom/estrongs/fs/impl/usb/i;->b:I

    return-void
.end method


# virtual methods
.method public a([BI)I
    .locals 4

    invoke-static {}, Lcom/estrongs/fs/impl/usb/g;->m()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/i;->a:Lcom/estrongs/fs/impl/usb/g;

    invoke-static {v0}, Lcom/estrongs/fs/impl/usb/g;->a(Lcom/estrongs/fs/impl/usb/g;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/i;->a:Lcom/estrongs/fs/impl/usb/g;

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
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/i;->a:Lcom/estrongs/fs/impl/usb/g;

    invoke-static {v0}, Lcom/estrongs/fs/impl/usb/g;->b(Lcom/estrongs/fs/impl/usb/g;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/i;->a:Lcom/estrongs/fs/impl/usb/g;

    invoke-static {v2}, Lcom/estrongs/fs/impl/usb/g;->c(Lcom/estrongs/fs/impl/usb/g;)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v2

    iget v3, p0, Lcom/estrongs/fs/impl/usb/i;->b:I

    invoke-virtual {v0, v2, p1, p2, v3}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0
.end method

.method public a([BII)I
    .locals 5

    invoke-static {}, Lcom/estrongs/fs/impl/usb/g;->m()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/i;->a:Lcom/estrongs/fs/impl/usb/g;

    invoke-static {v0}, Lcom/estrongs/fs/impl/usb/g;->a(Lcom/estrongs/fs/impl/usb/g;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/i;->a:Lcom/estrongs/fs/impl/usb/g;

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
    if-nez p2, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/i;->a:Lcom/estrongs/fs/impl/usb/g;

    invoke-static {v0}, Lcom/estrongs/fs/impl/usb/g;->b(Lcom/estrongs/fs/impl/usb/g;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/i;->a:Lcom/estrongs/fs/impl/usb/g;

    invoke-static {v2}, Lcom/estrongs/fs/impl/usb/g;->c(Lcom/estrongs/fs/impl/usb/g;)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v2

    iget v3, p0, Lcom/estrongs/fs/impl/usb/i;->b:I

    invoke-virtual {v0, v2, p1, p3, v3}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v0

    monitor-exit v1

    :goto_0
    return v0

    :cond_2
    new-array v0, p3, [B

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/i;->a:Lcom/estrongs/fs/impl/usb/g;

    invoke-static {v2}, Lcom/estrongs/fs/impl/usb/g;->b(Lcom/estrongs/fs/impl/usb/g;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/fs/impl/usb/i;->a:Lcom/estrongs/fs/impl/usb/g;

    invoke-static {v3}, Lcom/estrongs/fs/impl/usb/g;->c(Lcom/estrongs/fs/impl/usb/g;)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v3

    invoke-static {}, Lcom/estrongs/fs/impl/usb/g;->l()I

    move-result v4

    invoke-virtual {v2, v3, v0, p3, v4}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public b([BI)I
    .locals 4

    invoke-static {}, Lcom/estrongs/fs/impl/usb/g;->m()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/i;->a:Lcom/estrongs/fs/impl/usb/g;

    invoke-static {v0}, Lcom/estrongs/fs/impl/usb/g;->a(Lcom/estrongs/fs/impl/usb/g;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/i;->a:Lcom/estrongs/fs/impl/usb/g;

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
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/i;->a:Lcom/estrongs/fs/impl/usb/g;

    invoke-static {v0}, Lcom/estrongs/fs/impl/usb/g;->b(Lcom/estrongs/fs/impl/usb/g;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/i;->a:Lcom/estrongs/fs/impl/usb/g;

    invoke-static {v2}, Lcom/estrongs/fs/impl/usb/g;->d(Lcom/estrongs/fs/impl/usb/g;)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v2

    iget v3, p0, Lcom/estrongs/fs/impl/usb/i;->b:I

    invoke-virtual {v0, v2, p1, p2, v3}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0
.end method

.method public b([BII)I
    .locals 5

    invoke-static {}, Lcom/estrongs/fs/impl/usb/g;->m()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/i;->a:Lcom/estrongs/fs/impl/usb/g;

    invoke-static {v0}, Lcom/estrongs/fs/impl/usb/g;->a(Lcom/estrongs/fs/impl/usb/g;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/i;->a:Lcom/estrongs/fs/impl/usb/g;

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
    if-nez p2, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/i;->a:Lcom/estrongs/fs/impl/usb/g;

    invoke-static {v0}, Lcom/estrongs/fs/impl/usb/g;->b(Lcom/estrongs/fs/impl/usb/g;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/i;->a:Lcom/estrongs/fs/impl/usb/g;

    invoke-static {v2}, Lcom/estrongs/fs/impl/usb/g;->d(Lcom/estrongs/fs/impl/usb/g;)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v2

    iget v3, p0, Lcom/estrongs/fs/impl/usb/i;->b:I

    invoke-virtual {v0, v2, p1, p3, v3}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v0

    monitor-exit v1

    :goto_0
    return v0

    :cond_2
    new-array v2, p3, [B

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/i;->a:Lcom/estrongs/fs/impl/usb/g;

    invoke-static {v0}, Lcom/estrongs/fs/impl/usb/g;->b(Lcom/estrongs/fs/impl/usb/g;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v0

    iget-object v3, p0, Lcom/estrongs/fs/impl/usb/i;->a:Lcom/estrongs/fs/impl/usb/g;

    invoke-static {v3}, Lcom/estrongs/fs/impl/usb/g;->d(Lcom/estrongs/fs/impl/usb/g;)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v3

    invoke-static {}, Lcom/estrongs/fs/impl/usb/g;->l()I

    move-result v4

    invoke-virtual {v0, v3, v2, p3, v4}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v0

    const/4 v3, 0x0

    invoke-static {v2, v3, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
