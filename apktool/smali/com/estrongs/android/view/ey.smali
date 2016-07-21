.class Lcom/estrongs/android/view/ey;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/view/dw;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/eu;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/eu;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ey;->a:Lcom/estrongs/android/view/eu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lcom/estrongs/android/view/cr;Z)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/ey;->a:Lcom/estrongs/android/view/eu;

    iget-object v0, v0, Lcom/estrongs/android/view/eu;->ag:Landroid/app/Activity;

    new-instance v1, Lcom/estrongs/android/view/ez;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/view/ez;-><init>(Lcom/estrongs/android/view/ey;Lcom/estrongs/android/view/cr;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
