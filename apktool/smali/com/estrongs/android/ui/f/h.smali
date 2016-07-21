.class Lcom/estrongs/android/ui/f/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/f/g;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/f/g;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/f/h;->a:Lcom/estrongs/android/ui/f/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/util/bm;->c()Lcom/estrongs/android/util/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/util/bm;->f()V

    invoke-static {}, Lcom/estrongs/android/util/bm;->c()Lcom/estrongs/android/util/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/util/bm;->g()V

    invoke-static {}, Lcom/estrongs/android/util/bm;->c()Lcom/estrongs/android/util/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/util/bm;->d()V

    iget-object v0, p0, Lcom/estrongs/android/ui/f/h;->a:Lcom/estrongs/android/ui/f/g;

    invoke-static {v0}, Lcom/estrongs/android/ui/f/g;->a(Lcom/estrongs/android/ui/f/g;)Lcom/estrongs/android/ui/adapter/dn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/adapter/dn;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/estrongs/android/ui/f/h;->a:Lcom/estrongs/android/ui/f/g;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/f/g;->g()V

    return-void
.end method
