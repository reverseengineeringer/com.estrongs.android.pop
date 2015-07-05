.class final Lcom/estrongs/fs/impl/usb/fs/ntfs/b/b;
.super Lcom/estrongs/fs/impl/usb/fs/ntfs/z;


# instance fields
.field private a:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/e;

.field private final b:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;


# direct methods
.method public constructor <init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;[BI)V
    .locals 1

    invoke-virtual {p1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->r()Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/estrongs/fs/impl/usb/fs/ntfs/z;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;[BI)V

    iput-object p1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/b;->b:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    return-void
.end method


# virtual methods
.method public a()Lcom/estrongs/fs/impl/usb/fs/ntfs/b/e;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/b;->a:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/e;

    const/16 v1, 0x18

    invoke-direct {v0, p0, v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/e;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/b/b;I)V

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/b;->a:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/e;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/b;->a:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/e;

    return-object v0
.end method

.method public b()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/d;

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/b;->b:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/b;->a()Lcom/estrongs/fs/impl/usb/fs/ntfs/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/e;->a()I

    move-result v2

    add-int/lit8 v2, v2, 0x18

    invoke-direct {v0, v1, p0, v2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/d;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;I)V

    return-object v0
.end method
