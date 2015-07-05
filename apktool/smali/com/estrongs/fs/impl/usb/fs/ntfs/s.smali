.class abstract Lcom/estrongs/fs/impl/usb/fs/ntfs/s;
.super Lcom/estrongs/fs/impl/usb/fs/ntfs/q;


# instance fields
.field private a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic e:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;


# direct methods
.method private constructor <init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/s;->e:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    invoke-direct {p0, p1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/q;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;)V

    iput-object p2, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/s;->a:Ljava/util/Iterator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;Ljava/util/Iterator;Lcom/estrongs/fs/impl/usb/fs/ntfs/o;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/s;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;
    .locals 2

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/s;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/s;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/s;->a(Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract a(Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;)Z
.end method
