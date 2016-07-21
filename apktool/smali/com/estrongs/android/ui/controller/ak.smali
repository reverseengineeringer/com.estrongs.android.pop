.class Lcom/estrongs/android/ui/controller/ak;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/estrongs/android/ui/controller/aj;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/controller/aj;Z)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/controller/ak;->b:Lcom/estrongs/android/ui/controller/aj;

    iput-boolean p2, p0, Lcom/estrongs/android/ui/controller/ak;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/ak;->b:Lcom/estrongs/android/ui/controller/aj;

    iget-object v0, v0, Lcom/estrongs/android/ui/controller/aj;->i:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/ak;->b:Lcom/estrongs/android/ui/controller/aj;

    iget-object v0, v0, Lcom/estrongs/android/ui/controller/aj;->i:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    iget-boolean v1, p0, Lcom/estrongs/android/ui/controller/ak;->a:Z

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->setIsLoading(Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/ak;->b:Lcom/estrongs/android/ui/controller/aj;

    iget-object v0, v0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/estrongs/android/ui/controller/ak;->a:Z

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/cr;->j(Z)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/ak;->b:Lcom/estrongs/android/ui/controller/aj;

    invoke-static {v0}, Lcom/estrongs/android/ui/controller/aj;->a(Lcom/estrongs/android/ui/controller/aj;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/ak;->b:Lcom/estrongs/android/ui/controller/aj;

    invoke-static {v0}, Lcom/estrongs/android/ui/controller/aj;->a(Lcom/estrongs/android/ui/controller/aj;)Landroid/widget/ProgressBar;

    move-result-object v1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/controller/ak;->a:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x8

    goto :goto_1
.end method
