.class public Lcom/estrongs/fs/impl/usb/a/e;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/estrongs/fs/impl/usb/driver/a;)Lcom/estrongs/fs/impl/usb/a/c;
    .locals 4

    const/16 v0, 0x200

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-interface {p0, v2, v3, v0}, Lcom/estrongs/fs/impl/usb/driver/a;->a(JLjava/nio/ByteBuffer;)V

    invoke-static {v0}, Lcom/estrongs/fs/impl/usb/a/a;->a(Ljava/nio/ByteBuffer;)Lcom/estrongs/fs/impl/usb/a/a;

    move-result-object v0

    return-object v0
.end method
