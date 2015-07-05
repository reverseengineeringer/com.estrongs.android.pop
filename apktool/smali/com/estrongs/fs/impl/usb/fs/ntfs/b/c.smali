.class public final Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;
.super Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;


# instance fields
.field private final a:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;


# direct methods
.method public constructor <init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;I)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;I)V

    iput-object p1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;->a:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    return-void
.end method

.method private m()[B
    .locals 4

    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;->d(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/16 v1, 0x52

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;->a(I[BII)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;->c()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;->e(I)I

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;->d(I)I

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;->c()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()I
    .locals 1

    const/16 v0, 0x51

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;->d(I)I

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 4

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;->i()J

    move-result-wide v0

    const-wide/32 v2, 0x10000000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;->m()[B

    move-result-object v1

    const-string v2, "UTF-16LE"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "UTF-16LE charset missing from JRE"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public h()J
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;->i(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public i()J
    .locals 2

    const/16 v0, 0x48

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;->n(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public j()J
    .locals 2

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;->n(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public k()Lcom/estrongs/fs/impl/usb/fs/ntfs/n;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;->a:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    return-object v0
.end method

.method public l()J
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;->n(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[fileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",indexFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",fileFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;->i()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
