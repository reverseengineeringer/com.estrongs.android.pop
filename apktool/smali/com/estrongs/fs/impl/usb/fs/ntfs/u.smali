.class public final Lcom/estrongs/fs/impl/usb/fs/ntfs/u;
.super Lcom/estrongs/fs/impl/usb/fs/ntfs/n;


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/u;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/u;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;[BI)V
    .locals 6

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;J[BI)V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;)Lcom/estrongs/fs/impl/usb/fs/ntfs/n;
    .locals 2

    invoke-virtual {p1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;->h()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/u;->c(J)Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    move-result-object v0

    return-object v0
.end method

.method public a(J)[B
    .locals 7

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/u;->r()Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;->a()Lcom/estrongs/fs/impl/usb/fs/ntfs/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a;->c()I

    move-result v6

    int-to-long v0, v6

    mul-long v2, v0, p1

    int-to-long v0, v6

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/u;->n()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt to read past the end of the MFT, offset: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-array v4, v6, [B

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/estrongs/fs/impl/usb/fs/ntfs/u;->a(J[BII)V

    return-object v4
.end method

.method public b(J)Lcom/estrongs/fs/impl/usb/fs/ntfs/n;
    .locals 7

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/u;->r()Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;

    move-result-object v1

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/u;->a(J)[B

    move-result-object v4

    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    const/4 v5, 0x0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;J[BI)V

    return-object v0
.end method

.method public c(J)Lcom/estrongs/fs/impl/usb/fs/ntfs/n;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/u;->b(J)Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->a()V

    return-object v0
.end method

.method public n()J
    .locals 4

    iget-wide v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/u;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/16 v0, 0x80

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/u;->b(ILjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/u;->d:J

    :cond_0
    iget-wide v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/u;->d:J

    return-wide v0
.end method
