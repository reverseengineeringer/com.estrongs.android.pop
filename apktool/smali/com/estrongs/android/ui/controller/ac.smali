.class Lcom/estrongs/android/ui/controller/ac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/controller/aa;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/controller/aa;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/controller/ac;->a:Lcom/estrongs/android/ui/controller/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/ac;->a:Lcom/estrongs/android/ui/controller/aa;

    iget-object v0, v0, Lcom/estrongs/android/ui/controller/aa;->a:Lcom/estrongs/android/ui/controller/h;

    invoke-static {v0}, Lcom/estrongs/android/ui/controller/h;->j(Lcom/estrongs/android/ui/controller/h;)Landroid/view/Menu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/ac;->a:Lcom/estrongs/android/ui/controller/aa;

    iget-object v0, v0, Lcom/estrongs/android/ui/controller/aa;->a:Lcom/estrongs/android/ui/controller/h;

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/ac;->a:Lcom/estrongs/android/ui/controller/aa;

    iget-object v1, v1, Lcom/estrongs/android/ui/controller/aa;->a:Lcom/estrongs/android/ui/controller/h;

    invoke-static {v1}, Lcom/estrongs/android/ui/controller/h;->j(Lcom/estrongs/android/ui/controller/h;)Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/controller/h;->b(Landroid/view/Menu;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/ac;->a:Lcom/estrongs/android/ui/controller/aa;

    iget-object v0, v0, Lcom/estrongs/android/ui/controller/aa;->a:Lcom/estrongs/android/ui/controller/h;

    iget-object v0, v0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->invalidateOptionsMenu()V

    goto :goto_0
.end method
