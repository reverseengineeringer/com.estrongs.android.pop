.class Lcom/estrongs/android/ui/controller/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/estrongs/android/ui/controller/h;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/controller/h;Z)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/controller/v;->b:Lcom/estrongs/android/ui/controller/h;

    iput-boolean p2, p0, Lcom/estrongs/android/ui/controller/v;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/v;->b:Lcom/estrongs/android/ui/controller/h;

    iget-object v0, v0, Lcom/estrongs/android/ui/controller/h;->i:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/v;->b:Lcom/estrongs/android/ui/controller/h;

    iget-object v0, v0, Lcom/estrongs/android/ui/controller/h;->i:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    iget-boolean v1, p0, Lcom/estrongs/android/ui/controller/v;->a:Z

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->setIsLoading(Z)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/v;->b:Lcom/estrongs/android/ui/controller/h;

    iget-object v0, v0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/estrongs/android/ui/controller/v;->a:Z

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/cr;->j(Z)V

    :cond_1
    return-void
.end method
