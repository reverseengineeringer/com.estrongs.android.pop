.class Lcom/estrongs/android/pop/app/compress/aq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/compress/ai;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/compress/ai;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/aq;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance v0, Lcom/estrongs/android/ui/dialog/ct;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/aq;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/ai;->d(Lcom/estrongs/android/pop/app/compress/ai;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b017f

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;->a(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/aq;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/ai;->m(Lcom/estrongs/android/pop/app/compress/ai;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/aq;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/ai;->n(Lcom/estrongs/android/pop/app/compress/ai;)I

    move-result v2

    new-instance v3, Lcom/estrongs/android/pop/app/compress/at;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/compress/at;-><init>(Lcom/estrongs/android/pop/app/compress/aq;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/ui/dialog/ct;->a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    const v1, 0x7f0b000b

    new-instance v2, Lcom/estrongs/android/pop/app/compress/as;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/compress/as;-><init>(Lcom/estrongs/android/pop/app/compress/aq;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ct;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    const v1, 0x7f0b000c

    new-instance v2, Lcom/estrongs/android/pop/app/compress/ar;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/compress/ar;-><init>(Lcom/estrongs/android/pop/app/compress/aq;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ct;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ct;->c()Lcom/estrongs/android/ui/dialog/cg;

    return-void
.end method
