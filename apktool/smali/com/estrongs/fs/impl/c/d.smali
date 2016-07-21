.class public Lcom/estrongs/fs/impl/c/d;
.super Lcom/estrongs/fs/impl/c/b;


# instance fields
.field public a:Landroid/content/pm/ApplicationInfo;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/impl/c/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/pm/ApplicationInfo;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/impl/c/b;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/estrongs/fs/impl/c/b;-><init>()V

    iput-object p1, p0, Lcom/estrongs/fs/impl/c/d;->a:Landroid/content/pm/ApplicationInfo;

    iput-object p2, p0, Lcom/estrongs/fs/impl/c/d;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/estrongs/fs/impl/c/b;->absolutePath:Ljava/lang/String;

    invoke-virtual {p0, p4}, Lcom/estrongs/fs/impl/c/d;->setName(Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/estrongs/fs/impl/c/d;->size:J

    sget-object v0, Lcom/estrongs/fs/w;->a:Lcom/estrongs/fs/w;

    iput-object v0, p0, Lcom/estrongs/fs/impl/c/d;->type:Lcom/estrongs/fs/w;

    const-string v0, "child_count"

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/impl/c/d;->putExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/fs/impl/c/d;->lastModified:J

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/estrongs/fs/impl/b/d;
    .locals 5

    new-instance v0, Lcom/estrongs/fs/impl/b/d;

    iget-object v1, p0, Lcom/estrongs/fs/impl/c/d;->a:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    sget-object v2, Lcom/estrongs/fs/w;->b:Lcom/estrongs/fs/w;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/android/pop/FexApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/fs/impl/c/d;->a:Landroid/content/pm/ApplicationInfo;

    invoke-static {v3, v4}, Lcom/estrongs/android/pop/utils/w;->a(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/fs/impl/c/d;->a:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/estrongs/fs/impl/b/d;-><init>(Ljava/lang/String;Lcom/estrongs/fs/w;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V

    return-object v0
.end method

.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/estrongs/fs/impl/c/d;->size:J

    return-void
.end method

.method public exists()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/c/d;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/impl/c/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
