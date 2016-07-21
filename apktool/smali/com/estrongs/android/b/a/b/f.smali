.class Lcom/estrongs/android/b/a/b/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Landroid/content/Context;

.field final synthetic b:Lcom/estrongs/android/b/a/b/d;


# direct methods
.method constructor <init>(Lcom/estrongs/android/b/a/b/d;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/b/a/b/f;->b:Lcom/estrongs/android/b/a/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/estrongs/android/b/a/b/f;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/b/a/b/f;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/b/a/b/f;->a:Landroid/content/Context;

    const-string v2, "pname"

    invoke-static {v1, v0, v2}, Lcom/estrongs/android/pop/utils/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/b/a/b/f;->a:Landroid/content/Context;

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/b/a/b/f;->a:Landroid/content/Context;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->at()Lcom/estrongs/android/j/c;

    move-result-object v0

    :try_start_0
    const-string v1, "Card_Rate"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V

    const-string v1, "Card_Rate_UV"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->c(Ljava/lang/String;)V
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
