.class Lcom/estrongs/android/ui/dialog/eg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/eb;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/eb;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/eg;->a:Lcom/estrongs/android/ui/dialog/eb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/eg;->a:Lcom/estrongs/android/ui/dialog/eb;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/eb;->h:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/eg;->a:Lcom/estrongs/android/ui/dialog/eb;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/eb;->h:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/eg;->a:Lcom/estrongs/android/ui/dialog/eb;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/eb;->c(Lcom/estrongs/android/ui/dialog/eb;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e(Ljava/lang/String;)Lcom/estrongs/android/view/aw;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
