.class Lcom/estrongs/android/ui/e/hc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/hb;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/hb;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/hc;->a:Lcom/estrongs/android/ui/e/hb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/hc;->a:Lcom/estrongs/android/ui/e/hb;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/hb;->b:Lcom/estrongs/android/ui/e/ha;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/ha;->a:Lcom/estrongs/android/ui/e/cr;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/cr;->b(Lcom/estrongs/android/ui/e/cr;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/view/cr;->p()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/cr;->b(Z)V

    :cond_0
    return-void
.end method
