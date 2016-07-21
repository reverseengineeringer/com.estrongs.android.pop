.class public Lcom/estrongs/fs/impl/usb/fs/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;Lcom/estrongs/fs/impl/usb/a/d;Lcom/estrongs/fs/impl/usb/driver/a;)Lcom/estrongs/fs/impl/usb/fs/a;
    .locals 4

    const/16 v0, 0x200

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {p2, v2, v3, v1}, Lcom/estrongs/fs/impl/usb/driver/a;->a(JLjava/nio/ByteBuffer;)V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/usb/fs/a/d;->a([B)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/a/d;

    invoke-direct {v0, p0, p2, v1}, Lcom/estrongs/fs/impl/usb/fs/a/d;-><init>(Ljava/lang/String;Lcom/estrongs/fs/impl/usb/driver/a;Ljava/nio/ByteBuffer;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/y;->a([B)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/y;

    invoke-direct {v0, p0, p2, v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/y;-><init>(Ljava/lang/String;Lcom/estrongs/fs/impl/usb/driver/a;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createFileSystem unsupported partition type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/estrongs/fs/impl/usb/a/d;->a()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/x;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/estrongs/fs/impl/usb/UsbFsException;

    const-string v1, "unsupported partition type"

    sget-object v2, Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;->USB_ERROR_TYPE_NOT_SUPPORTE:Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/impl/usb/UsbFsException;-><init>(Ljava/lang/String;Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;)V

    throw v0
.end method
