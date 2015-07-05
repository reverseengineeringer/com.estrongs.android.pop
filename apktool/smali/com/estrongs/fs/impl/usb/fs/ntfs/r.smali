.class Lcom/estrongs/fs/impl/usb/fs/ntfs/r;
.super Lcom/estrongs/fs/impl/usb/fs/ntfs/q;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

.field private b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/estrongs/fs/impl/usb/fs/ntfs/a/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;)V
    .locals 4

    iput-object p1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/r;->a:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    invoke-direct {p0, p1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/q;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;)V

    :try_start_0
    iget-object v0, p1, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->a:Lcom/estrongs/fs/impl/usb/fs/ntfs/a/a;

    invoke-interface {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/a;->a()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/r;->b:Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->m()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error getting attributes from attribute list, file record "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/r;->b:Ljava/util/Iterator;

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;Lcom/estrongs/fs/impl/usb/fs/ntfs/o;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/r;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;
    .locals 6

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/r;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/r;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/g;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/g;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hit the same attribute ID more than once, aborting. ref = 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/g;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :try_start_0
    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/g;->c()J

    move-result-wide v2

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/r;->a:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    invoke-static {v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->b(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/r;->a:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    :goto_0
    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/g;->d()I

    move-result v2

    invoke-static {v1, v2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->a(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;I)Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/r;->a:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    invoke-static {v2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->a(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->m()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attribute: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/r;->a:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    invoke-static {v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->a(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->m()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Looking up MFT entry for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/g;->c()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/r;->a:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->r()Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/ab;->c()Lcom/estrongs/fs/impl/usb/fs/ntfs/u;

    move-result-object v1

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/g;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/fs/impl/usb/fs/ntfs/u;->c(J)Lcom/estrongs/fs/impl/usb/fs/ntfs/n;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error getting MFT or FileRecord for attribute in list, ref = 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/g;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method
