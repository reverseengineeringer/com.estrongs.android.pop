.class Lcom/estrongs/android/pop/app/c/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/c/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/c/d;->a:Lcom/estrongs/android/pop/app/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/c/d;->a:Lcom/estrongs/android/pop/app/c/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/c/a;->b(Lcom/estrongs/android/pop/app/c/a;)Lcom/estrongs/android/pop/app/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ag;->q()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/c/d;->a:Lcom/estrongs/android/pop/app/c/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/c/a;->a(Lcom/estrongs/android/pop/app/c/a;)Lcom/estrongs/android/pop/app/ai;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/c/d;->a:Lcom/estrongs/android/pop/app/c/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/c/a;->a(Lcom/estrongs/android/pop/app/c/a;)Lcom/estrongs/android/pop/app/ai;

    move-result-object v0

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/ai;->b()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/c/d;->a:Lcom/estrongs/android/pop/app/c/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/a;->c()V

    const/4 v0, 0x1

    return v0
.end method
