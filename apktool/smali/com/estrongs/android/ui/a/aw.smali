.class Lcom/estrongs/android/ui/a/aw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/utils/v;

.field final synthetic b:Lcom/estrongs/android/ui/a/aa;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/a/aa;Lcom/estrongs/android/pop/view/utils/v;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/a/aw;->b:Lcom/estrongs/android/ui/a/aa;

    iput-object p2, p0, Lcom/estrongs/android/ui/a/aw;->a:Lcom/estrongs/android/pop/view/utils/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/a/aw;->a:Lcom/estrongs/android/pop/view/utils/v;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/utils/v;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/w;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/aw;->b:Lcom/estrongs/android/ui/a/aa;

    invoke-static {v0}, Lcom/estrongs/android/ui/a/aa;->a(Lcom/estrongs/android/ui/a/aa;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/a/aw;->a:Lcom/estrongs/android/pop/view/utils/v;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/utils/v;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/a/aw;->b:Lcom/estrongs/android/ui/a/aa;

    invoke-static {v1}, Lcom/estrongs/android/ui/a/aa;->a(Lcom/estrongs/android/ui/a/aa;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    const-string v0, "Sidebar_Baidu_Security"

    const-string v1, "Sidebar_Baidu_Security"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Sidebar_Baidu_Security_UV"

    const-string v1, "Sidebar_Baidu_Security_UV"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/a/aw;->b:Lcom/estrongs/android/ui/a/aa;

    invoke-static {v0}, Lcom/estrongs/android/ui/a/aa;->a(Lcom/estrongs/android/ui/a/aa;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/a/aw;->a:Lcom/estrongs/android/pop/view/utils/v;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/utils/w;->a(Landroid/content/Context;Lcom/estrongs/android/pop/view/utils/v;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
