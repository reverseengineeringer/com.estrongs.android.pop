.class Lcom/estrongs/android/ui/dialog/ak;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/ae;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/ae;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ak;->a:Lcom/estrongs/android/ui/dialog/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->d()Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    move-result-object v0

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/ak;->a:Lcom/estrongs/android/ui/dialog/ae;

    iget-object v3, v3, Lcom/estrongs/android/ui/dialog/ae;->f:Lcom/estrongs/fs/h;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(Lcom/estrongs/fs/h;)Lcom/estrongs/android/appinfo/m;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/estrongs/android/appinfo/m;->a:Ljava/lang/String;

    :goto_0
    invoke-static {}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->d()Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/ui/dialog/ak;->a:Lcom/estrongs/android/ui/dialog/ae;

    iget-object v4, v4, Lcom/estrongs/android/ui/dialog/ae;->f:Lcom/estrongs/fs/h;

    invoke-virtual {v3, v4}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->b(Lcom/estrongs/fs/h;)Lcom/estrongs/android/appinfo/r;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/estrongs/android/ui/dialog/an;->a:Ljava/lang/String;

    if-nez v3, :cond_0

    move-object v0, v1

    :goto_1
    sput-object v0, Lcom/estrongs/android/ui/dialog/an;->b:Ljava/lang/String;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ak;->a:Lcom/estrongs/android/ui/dialog/ae;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/ae;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v0, 0x2000

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    invoke-static {v1, v0}, Lcom/estrongs/android/ui/dialog/an;->a(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Lcom/estrongs/android/ui/dialog/an;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    iget-object v0, v3, Lcom/estrongs/android/appinfo/r;->a:Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v1, v2

    :goto_3
    if-ge v1, v5, :cond_3

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/dialog/an;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/estrongs/android/ui/dialog/an;->e:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_4
    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ak;->a:Lcom/estrongs/android/ui/dialog/ae;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/ae;->a:Landroid/os/Handler;

    new-instance v2, Lcom/estrongs/android/ui/dialog/al;

    invoke-direct {v2, p0, v4, v3, v0}, Lcom/estrongs/android/ui/dialog/al;-><init>(Lcom/estrongs/android/ui/dialog/ak;Ljava/util/List;Lcom/estrongs/android/appinfo/r;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    move v0, v2

    goto :goto_4

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method
