.class Lcom/estrongs/fs/impl/usb/fs/ntfs/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:[B

.field private b:I


# direct methods
.method private constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/d;->a:[B

    return-void
.end method

.method synthetic constructor <init>([BLcom/estrongs/fs/impl/usb/fs/ntfs/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/d;-><init>([B)V

    return-void
.end method

.method private a(I)B
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/d;->a:[B

    iget v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/d;->b:I

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    return v0
.end method

.method static synthetic a(Lcom/estrongs/fs/impl/usb/fs/ntfs/d;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/d;->b:I

    return v0
.end method

.method static synthetic a(Lcom/estrongs/fs/impl/usb/fs/ntfs/d;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/d;->b:I

    return p1
.end method

.method private a(IB)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/d;->a:[B

    iget v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/d;->b:I

    add-int/2addr v1, p1

    aput-byte p2, v0, v1

    return-void
.end method

.method private a(II)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/d;->a:[B

    iget v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/d;->b:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/d;->b:I

    add-int/2addr v2, p1

    add-int/2addr v2, p2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/fs/impl/usb/fs/ntfs/d;IB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/d;->a(IB)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/fs/impl/usb/fs/ntfs/d;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/d;->a(II)V

    return-void
.end method

.method private a(Lcom/estrongs/fs/impl/usb/fs/ntfs/d;III)V
    .locals 7

    iget v0, p1, Lcom/estrongs/fs/impl/usb/fs/ntfs/d;->b:I

    add-int v1, v0, p2

    iget v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/d;->b:I

    add-int v2, v0, p3

    iget-object v3, p1, Lcom/estrongs/fs/impl/usb/fs/ntfs/d;->a:[B

    iget-object v4, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/d;->a:[B

    if-ne v3, v4, :cond_2

    if-ge v1, v2, :cond_0

    add-int v0, v1, p4

    if-gt v0, v2, :cond_1

    :cond_0
    if-ge v2, v1, :cond_2

    add-int v0, v2, p4

    if-le v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_3

    add-int v5, v2, v0

    add-int v6, v1, v0

    aget-byte v6, v3, v6

    aput-byte v6, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v3, v1, v4, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/estrongs/fs/impl/usb/fs/ntfs/d;Lcom/estrongs/fs/impl/usb/fs/ntfs/d;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/estrongs/fs/impl/usb/fs/ntfs/d;->a(Lcom/estrongs/fs/impl/usb/fs/ntfs/d;III)V

    return-void
.end method

.method private b(I)I
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/d;->a:[B

    iget v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/d;->b:I

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/d;->c([BI)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/estrongs/fs/impl/usb/fs/ntfs/d;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/d;->b(I)I

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/estrongs/fs/impl/usb/fs/ntfs/d;I)B
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/d;->a(I)B

    move-result v0

    return v0
.end method
