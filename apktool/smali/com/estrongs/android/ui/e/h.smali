.class Lcom/estrongs/android/ui/e/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/f;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/f;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/h;->a:Lcom/estrongs/android/ui/e/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/h;->a:Lcom/estrongs/android/ui/e/f;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/f;->a(Lcom/estrongs/android/ui/e/f;)Lcom/estrongs/android/ui/e/ka;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/ka;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/h;->a:Lcom/estrongs/android/ui/e/f;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/f;->a(Lcom/estrongs/android/ui/e/f;)Lcom/estrongs/android/ui/e/ka;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/ka;->d()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/h;->a:Lcom/estrongs/android/ui/e/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/e/f;->a(Lcom/estrongs/android/ui/e/f;Z)V

    const/4 v0, 0x1

    return v0
.end method
