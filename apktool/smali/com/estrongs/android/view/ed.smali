.class Lcom/estrongs/android/view/ed;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/estrongs/android/view/eb;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/eb;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ed;->b:Lcom/estrongs/android/view/eb;

    iput-object p2, p0, Lcom/estrongs/android/view/ed;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/ed;->b:Lcom/estrongs/android/view/eb;

    invoke-static {v0}, Lcom/estrongs/android/view/eb;->c(Lcom/estrongs/android/view/eb;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/ed;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/ed;->b:Lcom/estrongs/android/view/eb;

    const v1, 0x7f080316

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/eb;->f(I)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/ed;->b:Lcom/estrongs/android/view/eb;

    const v1, 0x7f0e0290

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/eb;->b(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
