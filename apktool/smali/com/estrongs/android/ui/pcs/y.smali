.class Lcom/estrongs/android/ui/pcs/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/pcs/w;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/w;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/y;->a:Lcom/estrongs/android/ui/pcs/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/y;->a:Lcom/estrongs/android/ui/pcs/w;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/w;->c()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/y;->a:Lcom/estrongs/android/ui/pcs/w;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/w;->d(Lcom/estrongs/android/ui/pcs/w;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/y;->a:Lcom/estrongs/android/ui/pcs/w;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/w;->e(Lcom/estrongs/android/ui/pcs/w;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/y;->a:Lcom/estrongs/android/ui/pcs/w;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/w;->f(Lcom/estrongs/android/ui/pcs/w;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/y;->a:Lcom/estrongs/android/ui/pcs/w;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/w;->g(Lcom/estrongs/android/ui/pcs/w;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/y;->a:Lcom/estrongs/android/ui/pcs/w;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/w;->e(Lcom/estrongs/android/ui/pcs/w;)V

    goto :goto_0
.end method
