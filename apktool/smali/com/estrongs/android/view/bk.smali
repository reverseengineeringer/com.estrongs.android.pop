.class Lcom/estrongs/android/view/bk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/d/m;

.field final synthetic b:Lcom/estrongs/android/view/bj;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/bj;Lcom/estrongs/android/d/m;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/bk;->b:Lcom/estrongs/android/view/bj;

    iput-object p2, p0, Lcom/estrongs/android/view/bk;->a:Lcom/estrongs/android/d/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/bk;->b:Lcom/estrongs/android/view/bj;

    iget-object v0, v0, Lcom/estrongs/android/view/bj;->d:Lcom/estrongs/android/view/aw;

    iget-object v1, p0, Lcom/estrongs/android/view/bk;->a:Lcom/estrongs/android/d/m;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/aw;->b(Lcom/estrongs/android/d/m;)V

    return-void
.end method
