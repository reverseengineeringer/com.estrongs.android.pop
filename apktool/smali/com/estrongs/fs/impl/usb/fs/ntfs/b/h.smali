.class public final Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Z

.field private final c:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

.field private d:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/g;

.field private e:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;->b:Z

    iput-object p1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;->c:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    invoke-virtual {p1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->c()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "fileRecord is not a directory"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;->b:Z

    return v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/estrongs/fs/impl/usb/fs/ntfs/b/g;
    .locals 3

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;->d:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/g;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;->c:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->b(I)Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/g;

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;->d:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/g;

    iget-boolean v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIndexRootAttribute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;->d:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;->d:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/g;

    return-object v0
.end method

.method public b()Lcom/estrongs/fs/impl/usb/fs/ntfs/b/a;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;->e:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;->c:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->b(I)Lcom/estrongs/fs/impl/usb/fs/ntfs/a/h;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/a;

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;->e:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/a;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;->e:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/a;

    return-object v0
.end method

.method public c()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/estrongs/fs/impl/usb/fs/ntfs/b/c;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;->a:Ljava/lang/String;

    const-string v1, "iterator"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/i;

    invoke-direct {v0, p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/i;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;)V

    return-object v0
.end method
