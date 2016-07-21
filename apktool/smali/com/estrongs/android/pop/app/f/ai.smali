.class Lcom/estrongs/android/pop/app/f/ai;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Landroid/widget/Button;

.field final synthetic c:Lcom/estrongs/android/pop/app/f/ad;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/f/ad;[Ljava/lang/String;Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/f/ai;->c:Lcom/estrongs/android/pop/app/f/ad;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/f/ai;->a:[Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/f/ai;->b:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance v0, Lcom/estrongs/android/ui/dialog/cv;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/f/ai;->c:Lcom/estrongs/android/pop/app/f/ad;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/f/ad;->j:Lcom/estrongs/android/pop/app/f/y;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/f/y;->e(Lcom/estrongs/android/pop/app/f/y;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0806f0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->a(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/f/ai;->a:[Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/f/ai;->c:Lcom/estrongs/android/pop/app/f/ad;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/f/ad;->b(Lcom/estrongs/android/pop/app/f/ad;)I

    move-result v2

    new-instance v3, Lcom/estrongs/android/pop/app/f/aj;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/f/aj;-><init>(Lcom/estrongs/android/pop/app/f/ai;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/ui/dialog/cv;->a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cv;->c()Lcom/estrongs/android/ui/dialog/ci;

    return-void
.end method
