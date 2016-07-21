.class Lcom/estrongs/android/ui/controller/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/a/a;

.field final synthetic b:Lcom/estrongs/android/ui/controller/h;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/controller/h;Lcom/estrongs/android/view/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/controller/t;->b:Lcom/estrongs/android/ui/controller/h;

    iput-object p2, p0, Lcom/estrongs/android/ui/controller/t;->a:Lcom/estrongs/android/view/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/t;->a:Lcom/estrongs/android/view/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/view/a/a;->c()Landroid/view/MenuItem$OnMenuItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/t;->a:Lcom/estrongs/android/view/a/a;

    invoke-interface {v0, v1}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    const-string v0, "#home_page#"

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/t;->b:Lcom/estrongs/android/ui/controller/h;

    iget-object v1, v1, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->P()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/t;->b:Lcom/estrongs/android/ui/controller/h;

    iget-object v0, v0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->at()Lcom/estrongs/android/j/c;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Home_FAB"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V

    const-string v1, "Home_FAB_UV"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
