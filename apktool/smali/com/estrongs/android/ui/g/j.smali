.class Lcom/estrongs/android/ui/g/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/g/h;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/g/h;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/g/j;->a:Lcom/estrongs/android/ui/g/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/g/j;->a:Lcom/estrongs/android/ui/g/h;

    invoke-static {v0}, Lcom/estrongs/android/ui/g/h;->f(Lcom/estrongs/android/ui/g/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/g/j;->a:Lcom/estrongs/android/ui/g/h;

    invoke-static {v0}, Lcom/estrongs/android/ui/g/h;->d(Lcom/estrongs/android/ui/g/h;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/g/j;->a:Lcom/estrongs/android/ui/g/h;

    invoke-static {v0}, Lcom/estrongs/android/ui/g/h;->g(Lcom/estrongs/android/ui/g/h;)V

    goto :goto_0
.end method
