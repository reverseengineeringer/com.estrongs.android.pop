.class Lcom/estrongs/android/ui/drag/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/drag/d;

.field private b:I


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/drag/d;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/drag/i;->a:Lcom/estrongs/android/ui/drag/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/drag/i;->b:I

    return-void
.end method

.method public run()V
    .locals 6

    const-wide/16 v4, 0x19

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/i;->a:Lcom/estrongs/android/ui/drag/d;

    invoke-static {v0}, Lcom/estrongs/android/ui/drag/d;->b(Lcom/estrongs/android/ui/drag/d;)Lcom/estrongs/android/ui/drag/k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/estrongs/android/ui/drag/i;->b:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/i;->a:Lcom/estrongs/android/ui/drag/d;

    invoke-static {v0}, Lcom/estrongs/android/ui/drag/d;->b(Lcom/estrongs/android/ui/drag/d;)Lcom/estrongs/android/ui/drag/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/estrongs/android/ui/drag/k;->c_()V

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/i;->a:Lcom/estrongs/android/ui/drag/d;

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/drag/d;->a(Lcom/estrongs/android/ui/drag/d;I)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/estrongs/android/ui/drag/i;->b:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/i;->a:Lcom/estrongs/android/ui/drag/d;

    invoke-static {v0}, Lcom/estrongs/android/ui/drag/d;->b(Lcom/estrongs/android/ui/drag/d;)Lcom/estrongs/android/ui/drag/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/estrongs/android/ui/drag/k;->b()V

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/i;->a:Lcom/estrongs/android/ui/drag/d;

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/drag/d;->a(Lcom/estrongs/android/ui/drag/d;I)I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/estrongs/android/ui/drag/i;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/i;->a:Lcom/estrongs/android/ui/drag/d;

    invoke-static {v0}, Lcom/estrongs/android/ui/drag/d;->c(Lcom/estrongs/android/ui/drag/d;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/i;->a:Lcom/estrongs/android/ui/drag/d;

    invoke-static {v0}, Lcom/estrongs/android/ui/drag/d;->d(Lcom/estrongs/android/ui/drag/d;)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/i;->a:Lcom/estrongs/android/ui/drag/d;

    invoke-static {v0}, Lcom/estrongs/android/ui/drag/d;->b(Lcom/estrongs/android/ui/drag/d;)Lcom/estrongs/android/ui/drag/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/estrongs/android/ui/drag/k;->c()V

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/i;->a:Lcom/estrongs/android/ui/drag/d;

    invoke-static {v0}, Lcom/estrongs/android/ui/drag/d;->e(Lcom/estrongs/android/ui/drag/d;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/estrongs/android/ui/drag/i;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/i;->a:Lcom/estrongs/android/ui/drag/d;

    invoke-static {v0}, Lcom/estrongs/android/ui/drag/d;->c(Lcom/estrongs/android/ui/drag/d;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/i;->a:Lcom/estrongs/android/ui/drag/d;

    invoke-static {v0}, Lcom/estrongs/android/ui/drag/d;->d(Lcom/estrongs/android/ui/drag/d;)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/i;->a:Lcom/estrongs/android/ui/drag/d;

    invoke-static {v0}, Lcom/estrongs/android/ui/drag/d;->b(Lcom/estrongs/android/ui/drag/d;)Lcom/estrongs/android/ui/drag/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/estrongs/android/ui/drag/k;->d()V

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/i;->a:Lcom/estrongs/android/ui/drag/d;

    invoke-static {v0}, Lcom/estrongs/android/ui/drag/d;->e(Lcom/estrongs/android/ui/drag/d;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
