.class Lcom/estrongs/android/ui/e/bm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/m;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/m;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/bm;->a:Lcom/estrongs/android/ui/e/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/e/bm;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->a(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v1

    const-string v0, ""

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {}, Lcom/estrongs/android/pop/app/analysis/a;->a()Lcom/estrongs/android/pop/app/analysis/a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/pop/app/analysis/a;->a(Ljava/lang/String;Lcom/estrongs/android/pop/app/analysis/y;)V

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/android/ui/e/bm;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v1}, Lcom/estrongs/android/ui/e/m;->a(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->at()Lcom/estrongs/android/j/c;

    move-result-object v1

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->ai(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "App_analysis"

    invoke-virtual {v1, v0}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_2
    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Sdcard_analysis"

    invoke-virtual {v1, v0}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
