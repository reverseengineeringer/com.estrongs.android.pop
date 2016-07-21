.class Lcom/estrongs/android/widget/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/f;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/f;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/w;->a:Lcom/estrongs/android/widget/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const v4, 0x7f08019d

    new-instance v0, Lcom/estrongs/android/ui/dialog/er;

    iget-object v1, p0, Lcom/estrongs/android/widget/w;->a:Lcom/estrongs/android/widget/f;

    invoke-static {v1}, Lcom/estrongs/android/widget/f;->d(Lcom/estrongs/android/widget/f;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/widget/w;->a:Lcom/estrongs/android/widget/f;

    invoke-static {v2}, Lcom/estrongs/android/widget/f;->d(Lcom/estrongs/android/widget/f;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f080093

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/widget/w;->a:Lcom/estrongs/android/widget/f;

    invoke-static {v3}, Lcom/estrongs/android/widget/f;->d(Lcom/estrongs/android/widget/f;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/ui/dialog/er;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/widget/w;->a:Lcom/estrongs/android/widget/f;

    iget-object v2, p0, Lcom/estrongs/android/widget/w;->a:Lcom/estrongs/android/widget/f;

    invoke-static {v2}, Lcom/estrongs/android/widget/f;->d(Lcom/estrongs/android/widget/f;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/estrongs/android/widget/f;->b:Ljava/lang/String;

    new-instance v1, Lcom/estrongs/android/widget/x;

    invoke-direct {v1, p0}, Lcom/estrongs/android/widget/x;-><init>(Lcom/estrongs/android/widget/w;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/er;->a(Lcom/estrongs/android/ui/dialog/eu;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/er;->show()V

    return-void
.end method
