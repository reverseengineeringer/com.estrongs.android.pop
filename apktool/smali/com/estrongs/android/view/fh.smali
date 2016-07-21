.class Lcom/estrongs/android/view/fh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/eu;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/eu;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/fh;->a:Lcom/estrongs/android/view/eu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/view/fh;->a:Lcom/estrongs/android/view/eu;

    iget-object v0, v0, Lcom/estrongs/android/view/eu;->ag:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/fh;->a:Lcom/estrongs/android/view/eu;

    iget-object v0, v0, Lcom/estrongs/android/view/eu;->ag:Landroid/app/Activity;

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/fh;->a:Lcom/estrongs/android/view/eu;

    iget-object v0, v0, Lcom/estrongs/android/view/eu;->ag:Landroid/app/Activity;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->P()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/app/f/f;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Ljava/util/ArrayList;)Z

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/fh;->a:Lcom/estrongs/android/view/eu;

    iget-object v0, v0, Lcom/estrongs/android/view/eu;->ah:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    const-string v1, "network"

    const-string v2, "lp_scan"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
