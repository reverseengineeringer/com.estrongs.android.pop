.class Lcom/estrongs/android/view/ga;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/fy;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/fy;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ga;->a:Lcom/estrongs/android/view/fy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/ga;->a:Lcom/estrongs/android/view/fy;

    invoke-static {v0}, Lcom/estrongs/android/view/fy;->a(Lcom/estrongs/android/view/fy;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/ga;->a:Lcom/estrongs/android/view/fy;

    invoke-static {v0}, Lcom/estrongs/android/view/fy;->a(Lcom/estrongs/android/view/fy;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/ga;->a:Lcom/estrongs/android/view/fy;

    invoke-static {v0}, Lcom/estrongs/android/view/fy;->a(Lcom/estrongs/android/view/fy;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method
