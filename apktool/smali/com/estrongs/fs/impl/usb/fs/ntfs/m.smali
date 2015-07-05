.class public final Lcom/estrongs/fs/impl/usb/fs/ntfs/m;
.super Lcom/estrongs/fs/impl/usb/fs/ntfs/a/j;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/j;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;I)V

    return-void
.end method

.method private n()[C
    .locals 5

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/m;->l()I

    move-result v0

    add-int/lit8 v1, v0, 0x40

    invoke-virtual {p0, v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/m;->d(I)I

    move-result v2

    new-array v3, v2, [C

    add-int/lit8 v1, v0, 0x42

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/m;->o(I)C

    move-result v4

    aput-char v4, v3, v0

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/m;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/m;->n()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/m;->a:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/m;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()J
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/m;->l()I

    move-result v0

    add-int/lit8 v0, v0, 0x30

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/m;->n(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()I
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/m;->l()I

    move-result v0

    add-int/lit8 v0, v0, 0x38

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/m;->h(I)I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/m;->l()I

    move-result v0

    add-int/lit8 v0, v0, 0x41

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/m;->d(I)I

    move-result v0

    return v0
.end method
