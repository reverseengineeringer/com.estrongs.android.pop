.class Lcom/estrongs/android/view/cl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/estrongs/android/view/cd;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/cd;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/cl;->b:Lcom/estrongs/android/view/cd;

    iput-object p2, p0, Lcom/estrongs/android/view/cl;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/cl;->b:Lcom/estrongs/android/view/cd;

    invoke-static {v0}, Lcom/estrongs/android/view/cd;->a(Lcom/estrongs/android/view/cd;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cl;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cl;->b:Lcom/estrongs/android/view/cd;

    const v1, 0x7f0b01f1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/cd;->f(I)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/cl;->b:Lcom/estrongs/android/view/cd;

    const v1, 0x7f0a0100

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/cd;->k(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
