.class public Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/nio/ByteBuffer;)Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/c;
    .locals 2

    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/c;-><init>(Ljava/nio/ByteBuffer;Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/b;)V

    return-object v0
.end method

.method public static b(Ljava/nio/ByteBuffer;)[B
    .locals 1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method
