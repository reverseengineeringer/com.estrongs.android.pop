.class Lcom/estrongs/android/ui/view/az;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/fs/util/k;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/view/ax;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/view/ax;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/az;->a:Lcom/estrongs/android/ui/view/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([BII)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/az;->a:Lcom/estrongs/android/ui/view/ax;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/ax;->a:Lcom/estrongs/fs/util/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/az;->a:Lcom/estrongs/android/ui/view/ax;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/ax;->a:Lcom/estrongs/fs/util/k;

    invoke-interface {v0, p1, p2, p3}, Lcom/estrongs/fs/util/k;->a([BII)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/az;->a:Lcom/estrongs/android/ui/view/ax;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/ax;->b:Lcom/estrongs/fs/util/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/az;->a:Lcom/estrongs/android/ui/view/ax;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/ax;->b:Lcom/estrongs/fs/util/k;

    invoke-interface {v0, p1, p2, p3}, Lcom/estrongs/fs/util/k;->a([BII)V

    :cond_1
    return-void
.end method
