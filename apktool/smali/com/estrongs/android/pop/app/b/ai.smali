.class Lcom/estrongs/android/pop/app/b/ai;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Landroid/widget/Button;

.field final synthetic c:Lcom/estrongs/android/pop/app/b/ad;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/b/ad;[Ljava/lang/String;Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/b/ai;->c:Lcom/estrongs/android/pop/app/b/ad;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/b/ai;->a:[Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/b/ai;->b:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance v0, Lcom/estrongs/android/ui/dialog/ct;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/ai;->c:Lcom/estrongs/android/pop/app/b/ad;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/b/ad;->j:Lcom/estrongs/android/pop/app/b/y;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/b/y;->e(Lcom/estrongs/android/pop/app/b/y;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b03bc

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;->a(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/ai;->a:[Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/b/ai;->c:Lcom/estrongs/android/pop/app/b/ad;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/b/ad;->b(Lcom/estrongs/android/pop/app/b/ad;)I

    move-result v2

    new-instance v3, Lcom/estrongs/android/pop/app/b/aj;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/b/aj;-><init>(Lcom/estrongs/android/pop/app/b/ai;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/ui/dialog/ct;->a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ct;->c()Lcom/estrongs/android/ui/dialog/cg;

    return-void
.end method
