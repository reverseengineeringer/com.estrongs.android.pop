.class Lcom/estrongs/android/pop/app/f/ae;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/f/y;

.field final synthetic b:Landroid/widget/Button;

.field final synthetic c:Lcom/estrongs/android/pop/app/f/ad;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/f/ad;Lcom/estrongs/android/pop/app/f/y;Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/f/ae;->c:Lcom/estrongs/android/pop/app/f/ad;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/f/ae;->a:Lcom/estrongs/android/pop/app/f/y;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/f/ae;->b:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance v0, Lcom/estrongs/android/ui/dialog/cv;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/f/ae;->c:Lcom/estrongs/android/pop/app/f/ad;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/f/ad;->j:Lcom/estrongs/android/pop/app/f/y;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/f/y;->e(Lcom/estrongs/android/pop/app/f/y;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/f/ae;->c:Lcom/estrongs/android/pop/app/f/ad;

    iget v1, v1, Lcom/estrongs/android/pop/app/f/ad;->i:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->a(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/ae;->c:Lcom/estrongs/android/pop/app/f/ad;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/f/ad;->f:Ljava/util/List;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/f/ae;->c:Lcom/estrongs/android/pop/app/f/ad;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/f/ad;->f:Ljava/util/List;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/f/ae;->b:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    new-instance v3, Lcom/estrongs/android/pop/app/f/af;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/f/af;-><init>(Lcom/estrongs/android/pop/app/f/ae;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/estrongs/android/ui/dialog/cv;->a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cv;->c()Lcom/estrongs/android/ui/dialog/ci;

    return-void
.end method
