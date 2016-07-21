.class Lcom/estrongs/fs/impl/usb/fs/ntfs/b/i;
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
.field final synthetic a:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;

.field private final b:Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/f",
            "<",
            "Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;


# direct methods
.method public constructor <init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;)V
    .locals 3

    iput-object p1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/i;->a:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/f;

    invoke-direct {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/f;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/i;->b:Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/f;

    invoke-static {p1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;->a(Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FullIndexEntryIterator"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;->a()Lcom/estrongs/fs/impl/usb/fs/ntfs/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/g;->d()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/i;->c:Ljava/util/Iterator;

    invoke-static {p1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;->a(Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentIterator="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/i;->c:Ljava/util/Iterator;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/i;->b()V

    return-void
.end method

.method private b()V
    .locals 6

    :goto_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/i;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/i;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/i;->d:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/i;->d:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/i;->a:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;

    invoke-static {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;->a(Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "next has subnode"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/i;->b:Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/f;

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/i;->d:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/f;->a(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/i;->d:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;->d()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/i;->d:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/i;->b:Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/f;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/f;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/i;->a:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;

    invoke-static {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;->a(Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "end of list"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/i;->a:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;

    invoke-static {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;->a(Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hasNext: read next indexblock"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/i;->b:Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/f;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/i;->a:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;->a()Lcom/estrongs/fs/impl/usb/fs/ntfs/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/g;->a()Lcom/estrongs/fs/impl/usb/fs/ntfs/b/f;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/i;->a:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;

    invoke-virtual {v2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;->b()Lcom/estrongs/fs/impl/usb/fs/ntfs/b/a;

    move-result-object v2

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;->l()J

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/a;->a(Lcom/estrongs/fs/impl/usb/fs/ntfs/b/f;J)Lcom/estrongs/fs/impl/usb/fs/ntfs/b/b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/b;->b()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/i;->c:Ljava/util/Iterator;

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/i;->a:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;

    invoke-static {v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;->a(Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cannot read next index block"

    invoke-static {v1, v2, v0}, Lcom/estrongs/android/util/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public a()Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/i;->d:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/i;->b()V

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/i;->d:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;

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

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/i;->a()Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
