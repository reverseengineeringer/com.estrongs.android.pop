.class final Lcom/estrongs/fs/impl/usb/fs/ntfs/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/estrongs/fs/impl/usb/fs/ntfs/i;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/estrongs/fs/impl/usb/fs/ntfs/y;

.field private c:Lcom/estrongs/fs/impl/usb/fs/ntfs/w;


# direct methods
.method public constructor <init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/y;Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/g;->b:Lcom/estrongs/fs/impl/usb/fs/ntfs/y;

    invoke-virtual {p2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;->c()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/g;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/g;->b()V

    return-void
.end method

.method private final b()V
    .locals 3

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/g;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/g;->c:Lcom/estrongs/fs/impl/usb/fs/ntfs/w;

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/g;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;->e()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    new-instance v1, Lcom/estrongs/fs/impl/usb/fs/ntfs/w;

    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/g;->b:Lcom/estrongs/fs/impl/usb/fs/ntfs/y;

    invoke-direct {v1, v2, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/w;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/y;Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;)V

    iput-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/g;->c:Lcom/estrongs/fs/impl/usb/fs/ntfs/w;

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/estrongs/fs/impl/usb/fs/ntfs/i;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/g;->c:Lcom/estrongs/fs/impl/usb/fs/ntfs/w;

    invoke-direct {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/g;->b()V

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/g;->c:Lcom/estrongs/fs/impl/usb/fs/ntfs/w;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/g;->a()Lcom/estrongs/fs/impl/usb/fs/ntfs/i;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
