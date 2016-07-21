.class Lcom/estrongs/android/ui/f/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/a/a;

.field final synthetic b:Lcom/estrongs/android/ui/f/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/f/a;Lcom/estrongs/android/view/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/f/d;->b:Lcom/estrongs/android/ui/f/a;

    iput-object p2, p0, Lcom/estrongs/android/ui/f/d;->a:Lcom/estrongs/android/view/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/f/d;->a:Lcom/estrongs/android/view/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/view/a/a;->c()Landroid/view/MenuItem$OnMenuItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/f/d;->a:Lcom/estrongs/android/view/a/a;

    invoke-interface {v0, v1}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/f/d;->b:Lcom/estrongs/android/ui/f/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/f/a;->a(Lcom/estrongs/android/ui/f/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
