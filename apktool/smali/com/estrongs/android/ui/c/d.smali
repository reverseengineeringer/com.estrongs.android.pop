.class Lcom/estrongs/android/ui/c/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/app/a/a/d;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/estrongs/android/ui/c/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/c/a;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/d;->b:Lcom/estrongs/android/ui/c/a;

    iput p2, p0, Lcom/estrongs/android/ui/c/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget v0, p0, Lcom/estrongs/android/ui/c/d;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/c/d;->b:Lcom/estrongs/android/ui/c/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/a;->b(Lcom/estrongs/android/ui/c/a;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/android/ui/c/d;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/ui/c/d;->b:Lcom/estrongs/android/ui/c/a;

    iget v1, p0, Lcom/estrongs/android/ui/c/d;->a:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a;->notifyItemRemoved(I)V

    :cond_0
    return-void
.end method
