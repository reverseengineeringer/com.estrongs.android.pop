.class Lcom/estrongs/android/ui/view/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/view/b;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/view/b;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/k;->a:Lcom/estrongs/android/ui/view/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance v0, Lcom/estrongs/android/util/c;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/k;->a:Lcom/estrongs/android/ui/view/b;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/b;->h(Lcom/estrongs/android/ui/view/b;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/view/k;->a:Lcom/estrongs/android/ui/view/b;

    invoke-static {v2}, Lcom/estrongs/android/ui/view/b;->i(Lcom/estrongs/android/ui/view/b;)I

    move-result v2

    new-instance v3, Lcom/estrongs/android/ui/view/l;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/view/l;-><init>(Lcom/estrongs/android/ui/view/k;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/util/c;-><init>(Landroid/content/Context;ILcom/estrongs/android/util/e;)V

    invoke-virtual {v0}, Lcom/estrongs/android/util/c;->a()V

    return-void
.end method
