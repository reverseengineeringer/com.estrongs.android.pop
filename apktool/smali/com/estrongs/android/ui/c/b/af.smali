.class Lcom/estrongs/android/ui/c/b/af;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/c/a/h;

.field final synthetic b:Lcom/estrongs/android/ui/c/b/u;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/c/b/u;Lcom/estrongs/android/ui/c/a/h;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/b/af;->b:Lcom/estrongs/android/ui/c/b/u;

    iput-object p2, p0, Lcom/estrongs/android/ui/c/b/af;->a:Lcom/estrongs/android/ui/c/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/af;->b:Lcom/estrongs/android/ui/c/b/u;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/af;->a:Lcom/estrongs/android/ui/c/a/h;

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/c/b/u;->a(Lcom/estrongs/android/ui/c/b/u;Lcom/estrongs/android/ui/c/a/h;)V

    const/4 v0, 0x0

    return v0
.end method
