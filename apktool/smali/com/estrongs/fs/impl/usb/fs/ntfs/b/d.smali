.class public final Lcom/estrongs/fs/impl/usb/fs/ntfs/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;

.field private final c:Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;

.field private final d:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;


# direct methods
.method public constructor <init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/d;->a:I

    iput-object p1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/d;->d:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    iput-object p2, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/d;->c:Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;

    invoke-direct {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/d;->b()V

    return-void
.end method

.method private b()V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/d;->d:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/d;->c:Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;

    iget v3, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/d;->a:I

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;Lcom/estrongs/fs/impl/usb/fs/ntfs/aa;I)V

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/d;->b:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/d;->b:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/d;->b:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/d;->b:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iput-object v4, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/d;->b:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;
    .locals 6

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/d;->b:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/d;->b:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/d;->b:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;->b()I

    move-result v1

    if-gtz v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Index entry size is 0, filesystem is corrupt.  Parent directory: \'%s\', reference number \'%d\'"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/d;->b:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;

    invoke-virtual {v4}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;->k()Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    move-result-object v4

    invoke-virtual {v4}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->i()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/d;->b:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;

    invoke-virtual {v4}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;->k()Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    move-result-object v4

    invoke-virtual {v4}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->f()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v2, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/d;->a:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/d;->a:I

    invoke-direct {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/d;->b()V

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/d;->b:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/d;->b:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/d;->b:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/d;->a()Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
