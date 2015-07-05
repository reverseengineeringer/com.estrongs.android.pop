.class Lcom/estrongs/android/ui/view/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/view/v;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/view/v;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/w;->a:Lcom/estrongs/android/ui/view/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/view/w;->a:Lcom/estrongs/android/ui/view/v;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/v;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->d(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
