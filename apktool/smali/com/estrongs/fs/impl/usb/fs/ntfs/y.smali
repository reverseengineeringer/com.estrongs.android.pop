.class public Lcom/estrongs/fs/impl/usb/fs/ntfs/y;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/fs/impl/usb/fs/a;


# instance fields
.field private final a:Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;

.field private b:Lcom/estrongs/fs/impl/usb/fs/c;

.field private c:Lcom/estrongs/fs/impl/usb/fs/ntfs/i;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/estrongs/fs/impl/usb/driver/a;Ljava/nio/ByteBuffer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;

    invoke-direct {v0, p1, p2, p3}, Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;-><init>(Ljava/lang/String;Lcom/estrongs/fs/impl/usb/driver/a;Ljava/nio/ByteBuffer;)V

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/y;->a:Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;

    iput-object p1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/y;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/y;->c:Lcom/estrongs/fs/impl/usb/fs/ntfs/i;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/v;

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/y;->a:Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;->d()Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/v;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/y;Lcom/estrongs/fs/impl/usb/fs/ntfs/n;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/v;->d(Ljava/lang/String;)Lcom/estrongs/fs/impl/usb/fs/ntfs/i;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/y;->c:Lcom/estrongs/fs/impl/usb/fs/ntfs/i;

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/y;->c:Lcom/estrongs/fs/impl/usb/fs/ntfs/i;

    invoke-interface {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/i;->a()Lcom/estrongs/fs/impl/usb/fs/ntfs/h;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/usb/fs/c;

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/y;->b:Lcom/estrongs/fs/impl/usb/fs/c;

    :cond_0
    return-void
.end method

.method public static a([B)Z
    .locals 1

    invoke-static {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;->a([B)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()Lcom/estrongs/fs/impl/usb/fs/c;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/y;->b:Lcom/estrongs/fs/impl/usb/fs/c;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 6

    const-string v1, "UsbStorage"

    :try_start_0
    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/y;->d()Lcom/estrongs/fs/impl/usb/fs/ntfs/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/i;->a()Lcom/estrongs/fs/impl/usb/fs/ntfs/h;

    move-result-object v0

    const-string v2, "$Volume"

    invoke-interface {v0, v2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/h;->d(Ljava/lang/String;)Lcom/estrongs/fs/impl/usb/fs/ntfs/i;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/w;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/w;->f()Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    move-result-object v0

    const/16 v2, 0x60

    invoke-virtual {v0, v2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->b(I)Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;

    move-result-object v0

    instance-of v2, v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/j;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/j;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/j;->m()I

    move-result v2

    new-array v2, v2, [B

    array-length v3, v2

    if-lez v3, :cond_1

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/j;->l()I

    move-result v3

    const/4 v4, 0x0

    array-length v5, v2

    invoke-virtual {v0, v3, v2, v4, v5}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/j;->a(I[BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v0, Ljava/lang/String;

    const-string v3, "UTF-16LE"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "UTF-16LE charset missing from JRE"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public c()J
    .locals 8

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/y;->a:Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;->c()Lcom/estrongs/fs/impl/usb/fs/ntfs/u;

    move-result-object v0

    const-wide/16 v2, 0x6

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/fs/impl/usb/fs/ntfs/u;->c(J)Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    move-result-object v1

    const/16 v0, 0x80

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->b(ILjava/lang/String;)J

    move-result-wide v2

    long-to-int v0, v2

    new-array v4, v0, [B

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    array-length v6, v4

    invoke-virtual/range {v1 .. v6}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->a(J[BII)V

    array-length v5, v4

    move v3, v7

    move v1, v7

    :goto_0
    if-ge v3, v5, :cond_2

    aget-byte v0, v4, v3

    move v2, v0

    move v0, v1

    move v1, v7

    :goto_1
    const/16 v6, 0x8

    if-ge v1, v6, :cond_1

    and-int/lit8 v6, v2, 0x1

    if-eqz v6, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    shr-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    :cond_2
    int-to-long v0, v1

    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/y;->a:Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;

    invoke-virtual {v2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;->b()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/y;->e()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    sub-long v0, v2, v0

    :goto_2
    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 v0, -0x1

    goto :goto_2
.end method

.method public d()Lcom/estrongs/fs/impl/usb/fs/ntfs/i;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/y;->c:Lcom/estrongs/fs/impl/usb/fs/ntfs/i;

    return-object v0
.end method

.method public e()J
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/y;->a:Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;->c()Lcom/estrongs/fs/impl/usb/fs/ntfs/u;

    move-result-object v0

    const-wide/16 v2, 0x6

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/fs/impl/usb/fs/ntfs/u;->c(J)Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->k()Lcom/estrongs/fs/impl/usb/fs/ntfs/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/m;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    mul-long/2addr v0, v2

    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/y;->a:Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;

    invoke-virtual {v2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;->b()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 v0, -0x1

    goto :goto_0
.end method
