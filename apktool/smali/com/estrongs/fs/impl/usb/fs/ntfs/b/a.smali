.class public final Lcom/estrongs/fs/impl/usb/fs/ntfs/b/a;
.super Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;


# direct methods
.method public constructor <init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/i;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/fs/impl/usb/fs/ntfs/b/f;J)Lcom/estrongs/fs/impl/usb/fs/ntfs/b/b;
    .locals 12

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/a;->j()Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    move-result-object v0

    invoke-virtual {p1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/f;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/f;->b()I

    move-result v2

    div-int v4, v1, v2

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->r()Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;->b()I

    move-result v5

    int-to-long v2, v4

    mul-long/2addr v2, p2

    int-to-long v6, v5

    div-long/2addr v2, v6

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v1, v5

    add-int/lit8 v6, v1, 0x1

    int-to-long v8, v4

    mul-long/2addr v8, p2

    int-to-long v10, v5

    rem-long/2addr v8, v10

    long-to-int v7, v8

    mul-int v1, v6, v5

    new-array v4, v1, [B

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/a;->a(J[BII)I

    move-result v1

    if-eq v1, v6, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number of clusters read was not the number requested (requested "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/b;

    invoke-direct {v1, v0, v4, v7}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/b;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;[BI)V

    return-object v1
.end method
