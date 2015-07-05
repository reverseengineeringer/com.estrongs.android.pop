.class Lcom/estrongs/android/ui/c/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/c/a/h;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/c/a/h;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/a/i;->a:Lcom/estrongs/android/ui/c/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/ui/c/a/i;->a:Lcom/estrongs/android/ui/c/a/h;

    invoke-static {v1}, Lcom/estrongs/android/ui/c/a/h;->a(Lcom/estrongs/android/ui/c/a/h;)Landroid/view/View$OnLongClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/c/a/i;->a:Lcom/estrongs/android/ui/c/a/h;

    invoke-static {v1}, Lcom/estrongs/android/ui/c/a/h;->a(Lcom/estrongs/android/ui/c/a/h;)Landroid/view/View$OnLongClickListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    :cond_0
    const/4 v1, 0x0

    return v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method
