.class Lcom/estrongs/fs/impl/usb/fs/ntfs/p;
.super Lcom/estrongs/fs/impl/usb/fs/ntfs/s;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;


# direct methods
.method constructor <init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;Ljava/util/Iterator;ILjava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/p;->c:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    iput p3, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/p;->a:I

    iput-object p4, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/p;->b:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/s;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;Ljava/util/Iterator;Lcom/estrongs/fs/impl/usb/fs/ntfs/o;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;->e()I

    move-result v0

    iget v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/p;->a:I

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;->i()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/p;->b:Ljava/lang/String;

    if-nez v1, :cond_2

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/p;->c:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    invoke-static {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->a(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->m()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findAttributesByTypeAndName(0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/p;->a:I

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/e;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/p;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/p;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
