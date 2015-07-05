.class public Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;
.super Ljava/lang/Object;


# instance fields
.field private a:[B

.field private b:I


# direct methods
.method public constructor <init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;->a:[B

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;->a:[B

    iget v0, p1, Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;->b:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;->b:I

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;->a:[B

    iput p2, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;->b:I

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;->a:[B

    iget v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;->b:I

    add-int/2addr v1, p1

    invoke-static {v0, v1, p2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/d;->a([BII)V

    return-void
.end method

.method public final a(I[BII)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;->a:[B

    iget v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;->b:I

    add-int/2addr v1, p1

    invoke-static {v0, v1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final d(I)I
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;->a:[B

    iget v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;->b:I

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/d;->a([BI)I

    move-result v0

    return v0
.end method

.method public final e(I)I
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;->a:[B

    iget v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;->b:I

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/d;->c([BI)I

    move-result v0

    return v0
.end method

.method public final f(I)I
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;->a:[B

    iget v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;->b:I

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/d;->e([BI)I

    move-result v0

    return v0
.end method

.method public final g(I)J
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;->a:[B

    iget v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;->b:I

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/d;->g([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final h(I)I
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;->a:[B

    iget v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;->b:I

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/d;->g([BI)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final i(I)J
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;->a:[B

    iget v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;->b:I

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/d;->i([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final j(I)I
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;->a:[B

    iget v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;->b:I

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/d;->b([BI)I

    move-result v0

    return v0
.end method

.method public final k(I)I
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;->a:[B

    iget v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;->b:I

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/d;->d([BI)I

    move-result v0

    return v0
.end method

.method public final l(I)I
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;->a:[B

    iget v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;->b:I

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/d;->f([BI)I

    move-result v0

    return v0
.end method

.method public final m(I)I
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;->a:[B

    iget v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;->b:I

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/d;->h([BI)I

    move-result v0

    return v0
.end method

.method public final n(I)J
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;->a:[B

    iget v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;->b:I

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/d;->j([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final o(I)C
    .locals 3

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;->a:[B

    iget v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;->b:I

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;->a:[B

    iget v2, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;->b:I

    add-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method public s()[B
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;->a:[B

    return-object v0
.end method
