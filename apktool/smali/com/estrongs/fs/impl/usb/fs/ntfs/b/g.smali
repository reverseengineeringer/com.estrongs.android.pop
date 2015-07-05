.class public final Lcom/estrongs/fs/impl/usb/fs/ntfs/b/g;
.super Lcom/estrongs/fs/impl/usb/fs/ntfs/a/j;


# instance fields
.field private a:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/f;

.field private b:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/e;


# direct methods
.method public constructor <init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/j;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;I)V

    return-void
.end method


# virtual methods
.method public a()Lcom/estrongs/fs/impl/usb/fs/ntfs/b/f;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/g;->a:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/f;

    invoke-direct {v0, p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/f;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/b/g;)V

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/g;->a:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/f;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/g;->a:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/f;

    return-object v0
.end method

.method public b()Lcom/estrongs/fs/impl/usb/fs/ntfs/b/e;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/g;->b:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/e;

    invoke-direct {v0, p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/e;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/b/g;)V

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/g;->b:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/e;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/g;->b:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/e;

    return-object v0
.end method

.method public d()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/g;->l()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    new-instance v1, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/d;

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/g;->j()Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    move-result-object v2

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/g;->b()Lcom/estrongs/fs/impl/usb/fs/ntfs/b/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/e;->a()I

    move-result v3

    add-int/2addr v0, v3

    invoke-direct {v1, v2, p0, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/d;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;I)V

    return-object v1
.end method
