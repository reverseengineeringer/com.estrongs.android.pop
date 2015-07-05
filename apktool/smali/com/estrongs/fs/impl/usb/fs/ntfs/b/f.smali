.class final Lcom/estrongs/fs/impl/usb/fs/ntfs/b/f;
.super Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;


# direct methods
.method public constructor <init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/b/g;)V
    .locals 1

    invoke-virtual {p1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/g;->l()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;I)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/f;->h(I)I

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/f;->j(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
