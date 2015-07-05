.class Lcom/estrongs/android/view/bc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/l;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/aw;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/aw;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/bc;->a:Lcom/estrongs/android/view/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;Lcom/estrongs/a/a/m;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/bc;->a:Lcom/estrongs/android/view/aw;

    iget-object v0, v0, Lcom/estrongs/android/view/aw;->T:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/view/bd;

    invoke-direct {v1, p0, p2}, Lcom/estrongs/android/view/bd;-><init>(Lcom/estrongs/android/view/bc;Lcom/estrongs/a/a/m;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
