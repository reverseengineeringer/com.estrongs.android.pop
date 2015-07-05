.class public Lcom/estrongs/fs/impl/b/c;
.super Lcom/estrongs/fs/n;


# instance fields
.field a:Lcom/estrongs/fs/impl/b/g;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/content/pm/ApplicationInfo;

.field private e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/estrongs/fs/m;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/fs/n;-><init>(Ljava/lang/String;Lcom/estrongs/fs/m;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/fs/impl/b/c;->a:Lcom/estrongs/fs/impl/b/g;

    iput-object p4, p0, Lcom/estrongs/fs/impl/b/c;->d:Landroid/content/pm/ApplicationInfo;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/fs/impl/b/c;->size:J

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/estrongs/fs/impl/b/c;->lastModified:J

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/fs/impl/b/c;->size:J

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/estrongs/fs/impl/b/g;)Lcom/estrongs/fs/impl/b/c;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/impl/b/c;->a:Lcom/estrongs/fs/impl/b/g;

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/b/c;->a:Lcom/estrongs/fs/impl/b/g;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/fs/impl/b/c;->a:Lcom/estrongs/fs/impl/b/g;

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/b/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/impl/b/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/b/c;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/fs/impl/b/c;->e:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/impl/b/c;->b:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/b/c;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/estrongs/fs/impl/b/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/fs/impl/b/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/impl/b/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/fs/impl/b/c;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/impl/b/c;->c:Ljava/lang/String;

    return-void
.end method

.method public c()Landroid/content/pm/ApplicationInfo;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/b/c;->d:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/b/c;->a:Lcom/estrongs/fs/impl/b/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/fs/impl/b/c;->a:Lcom/estrongs/fs/impl/b/g;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/b/g;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/estrongs/fs/impl/b/c;->e:I

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/b/c;->a:Lcom/estrongs/fs/impl/b/g;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Lcom/estrongs/fs/impl/b/g;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/b/c;->a:Lcom/estrongs/fs/impl/b/g;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/b/c;->f()Lcom/estrongs/fs/impl/b/g;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/b/c;->f()Lcom/estrongs/fs/impl/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/b/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/b/c;->f()Lcom/estrongs/fs/impl/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/b/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/util/j;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lastModified()J
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/b/c;->a:Lcom/estrongs/fs/impl/b/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/impl/b/c;->a:Lcom/estrongs/fs/impl/b/g;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/b/g;->f()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/estrongs/fs/impl/b/c;->lastModified:J

    goto :goto_0
.end method

.method public length()J
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/b/c;->a:Lcom/estrongs/fs/impl/b/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/impl/b/c;->a:Lcom/estrongs/fs/impl/b/g;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/b/g;->e()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/estrongs/fs/impl/b/c;->size:J

    goto :goto_0
.end method
