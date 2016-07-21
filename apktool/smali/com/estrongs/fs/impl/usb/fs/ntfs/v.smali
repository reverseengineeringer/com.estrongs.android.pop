.class public Lcom/estrongs/fs/impl/usb/fs/ntfs/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/fs/impl/usb/fs/c;
.implements Lcom/estrongs/fs/impl/usb/fs/ntfs/h;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Z

.field private final c:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;

.field private d:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

.field private e:Lcom/estrongs/fs/impl/usb/fs/c;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/fs/impl/usb/fs/c;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/estrongs/fs/impl/usb/fs/ntfs/y;

.field private final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/v;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/v;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/y;Lcom/estrongs/fs/impl/usb/fs/ntfs/n;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/v;->b:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/v;->f:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/v;->g:Lcom/estrongs/fs/impl/usb/fs/ntfs/y;

    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;

    invoke-direct {v0, p2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/n;)V

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/v;->c:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;

    iput-object p2, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/v;->d:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    invoke-virtual {p2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->f()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/v;->h:Ljava/lang/String;

    return-void
.end method

.method private n()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/v;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/v;->m()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/w;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/w;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/w;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/w;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/w;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/w;->a()Lcom/estrongs/fs/impl/usb/fs/ntfs/h;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/usb/fs/c;

    invoke-interface {v0, p0}, Lcom/estrongs/fs/impl/usb/fs/c;->a(Lcom/estrongs/fs/impl/usb/fs/c;)V

    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/v;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/w;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/w;->e()Lcom/estrongs/fs/impl/usb/fs/ntfs/j;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/usb/fs/c;

    invoke-interface {v0, p0}, Lcom/estrongs/fs/impl/usb/fs/c;->a(Lcom/estrongs/fs/impl/usb/fs/c;)V

    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/v;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public a(JLjava/nio/ByteBuffer;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported operation"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/estrongs/fs/impl/usb/fs/c;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/v;->e:Lcom/estrongs/fs/impl/usb/fs/c;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported operation"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(Ljava/lang/String;)Lcom/estrongs/fs/impl/usb/fs/c;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported operation"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/v;->e:Lcom/estrongs/fs/impl/usb/fs/c;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/v;->g:Lcom/estrongs/fs/impl/usb/fs/ntfs/y;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/y;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/v;->d:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->i()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b(JLjava/nio/ByteBuffer;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported operation"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Lcom/estrongs/fs/impl/usb/fs/c;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported operation"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()Lcom/estrongs/fs/impl/usb/fs/c;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/v;->e:Lcom/estrongs/fs/impl/usb/fs/c;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/estrongs/fs/impl/usb/fs/c;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported operation"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/estrongs/fs/impl/usb/fs/ntfs/i;
    .locals 3

    iget-boolean v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/v;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/v;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEntry("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/v;->m()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/w;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/w;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()[Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/v;->n()V

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/v;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/v;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/v;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/usb/fs/c;

    invoke-interface {v0}, Lcom/estrongs/fs/impl/usb/fs/c;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public e()[Lcom/estrongs/fs/impl/usb/fs/c;
    .locals 2

    invoke-direct {p0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/v;->n()V

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/v;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/estrongs/fs/impl/usb/fs/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/estrongs/fs/impl/usb/fs/c;

    return-object v0
.end method

.method public f()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported operation"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i()J
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/v;->d:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->j()Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public j()J
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/v;->d:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->j()Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public k()Z
    .locals 2

    sget-object v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;->READ_ONLY:Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/v;->d:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->j()Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 2

    sget-object v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;->HIDDEN:Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/v;->d:Lcom/estrongs/fs/impl/usb/fs/ntfs/n;

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/n;->j()Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/StandardInformationAttribute$Flags;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public m()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/estrongs/fs/impl/usb/fs/ntfs/i;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/ntfs/g;

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/v;->g:Lcom/estrongs/fs/impl/usb/fs/ntfs/y;

    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/fs/ntfs/v;->c:Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/g;-><init>(Lcom/estrongs/fs/impl/usb/fs/ntfs/y;Lcom/estrongs/fs/impl/usb/fs/ntfs/b/h;)V

    return-object v0
.end method
