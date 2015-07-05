.class Lcom/estrongs/android/ui/e/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/c;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/c;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/e;->a:Lcom/estrongs/android/ui/e/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/e;->a:Lcom/estrongs/android/ui/e/c;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/c;->a(Lcom/estrongs/android/ui/e/c;)Lcom/estrongs/android/ui/e/jc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/jc;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/e;->a:Lcom/estrongs/android/ui/e/c;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/c;->a(Lcom/estrongs/android/ui/e/c;)Lcom/estrongs/android/ui/e/jc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/jc;->d()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/e;->a:Lcom/estrongs/android/ui/e/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/e/c;->a(Lcom/estrongs/android/ui/e/c;Z)V

    const/4 v0, 0x1

    return v0
.end method
