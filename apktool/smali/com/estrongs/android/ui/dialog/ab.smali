.class Lcom/estrongs/android/ui/dialog/ab;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/aa;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/aa;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ab;->a:Lcom/estrongs/android/ui/dialog/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ab;->a:Lcom/estrongs/android/ui/dialog/aa;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/aa;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/FexApplication;->a(I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/ab;->a:Lcom/estrongs/android/ui/dialog/aa;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/estrongs/android/ui/dialog/aa;->a(Lcom/estrongs/android/ui/dialog/aa;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-gtz v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ab;->a:Lcom/estrongs/android/ui/dialog/aa;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/aa;->a:Landroid/os/Handler;

    new-instance v2, Lcom/estrongs/android/ui/dialog/ac;

    invoke-direct {v2, p0, v1}, Lcom/estrongs/android/ui/dialog/ac;-><init>(Lcom/estrongs/android/ui/dialog/ab;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
