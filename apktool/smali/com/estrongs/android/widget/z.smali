.class Lcom/estrongs/android/widget/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/g;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/g;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/z;->a:Lcom/estrongs/android/widget/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Lcom/estrongs/android/ui/dialog/gs;

    iget-object v1, p0, Lcom/estrongs/android/widget/z;->a:Lcom/estrongs/android/widget/g;

    invoke-static {v1}, Lcom/estrongs/android/widget/g;->d(Lcom/estrongs/android/widget/g;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/widget/z;->a:Lcom/estrongs/android/widget/g;

    invoke-static {v2}, Lcom/estrongs/android/widget/g;->d(Lcom/estrongs/android/widget/g;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/ad;->L()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/gs;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/estrongs/android/widget/aa;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/widget/aa;-><init>(Lcom/estrongs/android/widget/z;Lcom/estrongs/android/ui/dialog/gs;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/gs;->a(Lcom/estrongs/android/ui/dialog/gx;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/gs;->show()V

    return-void
.end method
