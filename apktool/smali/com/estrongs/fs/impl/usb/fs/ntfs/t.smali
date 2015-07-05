.class Lcom/estrongs/fs/impl/usb/fs/ntfs/t;
.super Lcom/estrongs/fs/impl/usb/fs/ntfs/q;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

.field private b:I


# direct methods
.method private constructor <init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/t;->a:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    invoke-direct {p0, p1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/q;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;)V

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/t;->a:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->d()I

    move-result v0

    iput v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/t;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;Lcom/estrongs/fs/impl/usb/fs/ntfs/o;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/t;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;
    .locals 6

    const/4 v0, 0x0

    iget v2, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/t;->b:I

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/t;->a:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    add-int/lit8 v3, v2, 0x0

    invoke-virtual {v1, v3}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->h(I)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/t;->a:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    invoke-static {v1, v2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;->a(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;I)Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;

    move-result-object v1

    iget-object v3, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/t;->a:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    invoke-static {v3}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->a(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->m()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attribute: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v3, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/t;->a:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v3, v2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->h(I)I

    move-result v2

    if-gtz v2, :cond_3

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/t;->a:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    invoke-static {v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->a(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->m()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-positive offset, preventing infinite loop.  Data on disk may be corrupt.  referenceNumber = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/t;->a:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    invoke-static {v3}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->b(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/t;->b:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/t;->b:I

    move-object v0, v1

    goto :goto_0
.end method
