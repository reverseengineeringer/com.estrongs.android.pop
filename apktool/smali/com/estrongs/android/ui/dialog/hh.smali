.class Lcom/estrongs/android/ui/dialog/hh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/hg;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/hg;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/hh;->a:Lcom/estrongs/android/ui/dialog/hg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hh;->a:Lcom/estrongs/android/ui/dialog/hg;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hg;->a:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hh;->a:Lcom/estrongs/android/ui/dialog/hg;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hg;->a:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->dismiss()V

    :cond_0
    return-void
.end method
