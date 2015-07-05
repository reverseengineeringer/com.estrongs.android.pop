.class Lcom/estrongs/fs/impl/usb/fs/ntfs/o;
.super Lcom/estrongs/fs/impl/usb/fs/ntfs/s;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;


# direct methods
.method constructor <init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;Ljava/util/Iterator;I)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/o;->b:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    iput p3, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/o;->a:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/s;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;Ljava/util/Iterator;Lcom/estrongs/fs/impl/usb/fs/ntfs/o;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;->e()I

    move-result v0

    iget v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/o;->a:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
