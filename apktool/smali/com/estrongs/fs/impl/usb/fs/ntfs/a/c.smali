.class final Lcom/estrongs/fs/impl/usb/fs/ntfs/a/c;
.super Lcom/estrongs/fs/impl/usb/fs/ntfs/a/j;

# interfaces
.implements Lcom/estrongs/fs/impl/usb/fs/ntfs/a/a;


# direct methods
.method public constructor <init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/j;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/estrongs/fs/impl/usb/fs/ntfs/a/g;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/c;->m()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/c;->l()I

    move-result v1

    array-length v2, v0

    invoke-virtual {p0, v1, v0, v4, v2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/c;->a(I[BII)V

    new-instance v1, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/d;

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/c;->m()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {v1, v0, v4, v2, v3}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/d;-><init>([BIJ)V

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/d;->a()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
