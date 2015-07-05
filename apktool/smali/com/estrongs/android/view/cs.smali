.class Lcom/estrongs/android/view/cs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/view/cb;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/cq;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/cq;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/cs;->a:Lcom/estrongs/android/view/cq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lcom/estrongs/android/view/aw;Z)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/cs;->a:Lcom/estrongs/android/view/cq;

    iget-object v0, v0, Lcom/estrongs/android/view/cq;->ad:Landroid/app/Activity;

    new-instance v1, Lcom/estrongs/android/view/ct;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/view/ct;-><init>(Lcom/estrongs/android/view/cs;Lcom/estrongs/android/view/aw;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
