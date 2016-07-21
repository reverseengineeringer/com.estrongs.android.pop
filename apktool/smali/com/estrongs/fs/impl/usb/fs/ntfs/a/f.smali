.class Lcom/estrongs/fs/impl/usb/fs/ntfs/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/estrongs/fs/impl/usb/fs/ntfs/a/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/estrongs/fs/impl/usb/fs/ntfs/a/d;

.field private b:Lcom/estrongs/fs/impl/usb/fs/ntfs/a/g;

.field private c:I


# direct methods
.method private constructor <init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/a/d;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/f;->a:Lcom/estrongs/fs/impl/usb/fs/ntfs/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/f;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/a/d;Lcom/estrongs/fs/impl/usb/fs/ntfs/a/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/f;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/a/d;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/estrongs/fs/impl/usb/fs/ntfs/a/g;
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/f;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/f;->b:Lcom/estrongs/fs/impl/usb/fs/ntfs/a/g;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/f;->b:Lcom/estrongs/fs/impl/usb/fs/ntfs/a/g;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Iterator has no more entries"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasNext()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/f;->b:Lcom/estrongs/fs/impl/usb/fs/ntfs/a/g;

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v2, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/f;->c:I

    add-int/lit8 v2, v2, 0x4

    int-to-long v2, v2

    iget-object v4, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/f;->a:Lcom/estrongs/fs/impl/usb/fs/ntfs/a/d;

    invoke-static {v4}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/d;->a(Lcom/estrongs/fs/impl/usb/fs/ntfs/a/d;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/f;->a:Lcom/estrongs/fs/impl/usb/fs/ntfs/a/d;

    iget v3, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/f;->c:I

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {v2, v3}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/d;->e(I)I

    move-result v2

    if-gtz v2, :cond_2

    invoke-static {}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/d;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Invalid attribute length, preventing infinite loop. Data on disk may be corrupt."

    invoke-static {v0, v2}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/g;

    iget-object v3, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/f;->a:Lcom/estrongs/fs/impl/usb/fs/ntfs/a/d;

    iget v4, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/f;->c:I

    invoke-direct {v1, v3, v4}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/g;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/a/d;I)V

    iput-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/f;->b:Lcom/estrongs/fs/impl/usb/fs/ntfs/a/g;

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/f;->a:Lcom/estrongs/fs/impl/usb/fs/ntfs/a/d;

    invoke-static {v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/d;->b(Lcom/estrongs/fs/impl/usb/fs/ntfs/a/d;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/d;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/f;->b:Lcom/estrongs/fs/impl/usb/fs/ntfs/a/g;

    invoke-virtual {v3}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/g;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/f;->c:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/f;->c:I

    goto :goto_0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/a/f;->a()Lcom/estrongs/fs/impl/usb/fs/ntfs/a/g;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
