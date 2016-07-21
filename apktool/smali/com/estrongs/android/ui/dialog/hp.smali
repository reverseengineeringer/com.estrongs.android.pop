.class Lcom/estrongs/android/ui/dialog/hp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/hf;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/hf;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/hp;->a:Lcom/estrongs/android/ui/dialog/hf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hp;->a:Lcom/estrongs/android/ui/dialog/hf;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/hf;->c(Lcom/estrongs/android/ui/dialog/hf;)Lcom/estrongs/android/ui/dialog/hq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/hq;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->X()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/cr;->b(Z)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hp;->a:Lcom/estrongs/android/ui/dialog/hf;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/hf;->c(Lcom/estrongs/android/ui/dialog/hf;)Lcom/estrongs/android/ui/dialog/hq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/hq;->b()V

    return-void
.end method
