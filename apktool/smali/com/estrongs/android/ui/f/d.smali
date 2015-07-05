.class Lcom/estrongs/android/ui/f/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/f/c;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/f/c;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/f/d;->a:Lcom/estrongs/android/ui/f/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/util/be;->c()Lcom/estrongs/android/util/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/util/be;->f()V

    invoke-static {}, Lcom/estrongs/android/util/be;->c()Lcom/estrongs/android/util/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/util/be;->g()V

    invoke-static {}, Lcom/estrongs/android/util/be;->c()Lcom/estrongs/android/util/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/util/be;->d()V

    iget-object v0, p0, Lcom/estrongs/android/ui/f/d;->a:Lcom/estrongs/android/ui/f/c;

    invoke-static {v0}, Lcom/estrongs/android/ui/f/c;->a(Lcom/estrongs/android/ui/f/c;)Lcom/estrongs/android/ui/a/cx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/a/cx;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/estrongs/android/ui/f/d;->a:Lcom/estrongs/android/ui/f/c;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/f/c;->g()V

    return-void
.end method
