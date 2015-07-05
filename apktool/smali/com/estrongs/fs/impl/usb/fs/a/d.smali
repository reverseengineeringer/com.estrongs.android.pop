.class public Lcom/estrongs/fs/impl/usb/fs/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/fs/impl/usb/fs/a;


# instance fields
.field private a:Lcom/estrongs/fs/impl/usb/fs/a/c;

.field private b:Lcom/estrongs/fs/impl/usb/fs/a/b;

.field private c:Lcom/estrongs/fs/impl/usb/fs/a/i;

.field private d:Lcom/estrongs/fs/impl/usb/fs/a/e;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/estrongs/fs/impl/usb/driver/a;Ljava/nio/ByteBuffer;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p3, :cond_0

    const/16 v0, 0x200

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    const-wide/16 v0, 0x0

    invoke-interface {p2, v0, v1, p3}, Lcom/estrongs/fs/impl/usb/driver/a;->a(JLjava/nio/ByteBuffer;)V

    :cond_0
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/usb/fs/a/d;->a([B)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/estrongs/fs/impl/usb/UsbFsException;

    const-string v1, "unsupported partition type"

    sget-object v2, Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;->USB_ERROR_TYPE_NOT_SUPPORTE:Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/impl/usb/UsbFsException;-><init>(Ljava/lang/String;Lcom/estrongs/fs/impl/usb/UsbFsException$ERROR_CODE;)V

    throw v0

    :cond_1
    invoke-static {p3}, Lcom/estrongs/fs/impl/usb/fs/a/c;->a(Ljava/nio/ByteBuffer;)Lcom/estrongs/fs/impl/usb/fs/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/d;->a:Lcom/estrongs/fs/impl/usb/fs/a/c;

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/d;->a:Lcom/estrongs/fs/impl/usb/fs/a/c;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/a/c;->f()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/a/d;->a:Lcom/estrongs/fs/impl/usb/fs/a/c;

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/usb/fs/a/c;->a()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-static {p2, v0}, Lcom/estrongs/fs/impl/usb/fs/a/i;->a(Lcom/estrongs/fs/impl/usb/driver/a;I)Lcom/estrongs/fs/impl/usb/fs/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/d;->c:Lcom/estrongs/fs/impl/usb/fs/a/i;

    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/a/b;

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/a/d;->a:Lcom/estrongs/fs/impl/usb/fs/a/c;

    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/fs/a/d;->c:Lcom/estrongs/fs/impl/usb/fs/a/i;

    invoke-direct {v0, p2, v1, v2}, Lcom/estrongs/fs/impl/usb/fs/a/b;-><init>(Lcom/estrongs/fs/impl/usb/driver/a;Lcom/estrongs/fs/impl/usb/fs/a/c;Lcom/estrongs/fs/impl/usb/fs/a/i;)V

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/d;->b:Lcom/estrongs/fs/impl/usb/fs/a/b;

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/d;->b:Lcom/estrongs/fs/impl/usb/fs/a/b;

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/a/d;->a:Lcom/estrongs/fs/impl/usb/fs/a/c;

    invoke-static {p2, v0, v1}, Lcom/estrongs/fs/impl/usb/fs/a/e;->a(Lcom/estrongs/fs/impl/usb/driver/a;Lcom/estrongs/fs/impl/usb/fs/a/b;Lcom/estrongs/fs/impl/usb/fs/a/c;)Lcom/estrongs/fs/impl/usb/fs/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/d;->d:Lcom/estrongs/fs/impl/usb/fs/a/e;

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/d;->d:Lcom/estrongs/fs/impl/usb/fs/a/e;

    invoke-virtual {v0, p1}, Lcom/estrongs/fs/impl/usb/fs/a/e;->f(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/estrongs/fs/impl/usb/fs/a/d;->e:Ljava/lang/String;

    return-void
.end method

.method public static a([B)Z
    .locals 3

    new-instance v0, Ljava/lang/String;

    const/16 v1, 0x52

    const/4 v2, 0x5

    invoke-direct {v0, p0, v1, v2}, Ljava/lang/String;-><init>([BII)V

    const-string v1, "FAT32"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()Lcom/estrongs/fs/impl/usb/fs/c;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/d;->d:Lcom/estrongs/fs/impl/usb/fs/a/e;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/d;->d:Lcom/estrongs/fs/impl/usb/fs/a/e;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/a/e;->n()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/d;->a:Lcom/estrongs/fs/impl/usb/fs/a/c;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/a/c;->l()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public c()J
    .locals 4

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/d;->c:Lcom/estrongs/fs/impl/usb/fs/a/i;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/a/i;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/fs/a/d;->a:Lcom/estrongs/fs/impl/usb/fs/a/c;

    invoke-virtual {v2}, Lcom/estrongs/fs/impl/usb/fs/a/c;->i()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    return-wide v0
.end method
