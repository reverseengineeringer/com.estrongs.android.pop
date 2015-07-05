.class final Lcom/estrongs/fs/impl/usb/fs/ntfs/b/e;
.super Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;


# direct methods
.method public constructor <init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/b/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;I)V

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/b/g;)V
    .locals 1

    invoke-virtual {p1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/g;->l()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    invoke-direct {p0, p1, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;I)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/e;->h(I)I

    move-result v0

    return v0
.end method
