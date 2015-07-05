.class public Lcom/estrongs/fs/impl/usb/fs/ntfs/z;
.super Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;


# instance fields
.field private final a:Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;


# direct methods
.method public constructor <init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;[BI)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;-><init>([BI)V

    iput-object p1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/z;->a:Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;

    invoke-direct {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/z;->a()V

    return-void
.end method

.method private a()V
    .locals 8

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/z;->p()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/z;->e(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/z;->q()I

    move-result v3

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/z;->r()Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;->a()Lcom/estrongs/fs/impl/usb/fs/ntfs/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a;->a()I

    move-result v4

    const/4 v0, 0x1

    :goto_0
    if-ge v0, v3, :cond_1

    mul-int v5, v0, v4

    add-int/lit8 v5, v5, -0x2

    mul-int/lit8 v6, v0, 0x2

    add-int/2addr v6, v1

    invoke-virtual {p0, v5}, Lcom/estrongs/fs/impl/usb/fs/ntfs/z;->e(I)I

    move-result v7

    if-ne v7, v2, :cond_0

    invoke-virtual {p0, v6}, Lcom/estrongs/fs/impl/usb/fs/ntfs/z;->e(I)I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/estrongs/fs/impl/usb/fs/ntfs/z;->a(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Fixup error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public o()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/z;->h(I)I

    move-result v0

    return v0
.end method

.method public p()I
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/z;->e(I)I

    move-result v0

    return v0
.end method

.method public q()I
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/z;->e(I)I

    move-result v0

    return v0
.end method

.method public r()Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/z;->a:Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;

    return-object v0
.end method
