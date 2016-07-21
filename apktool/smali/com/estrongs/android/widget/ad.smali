.class public Lcom/estrongs/android/widget/ad;
.super Lcom/estrongs/android/widget/f;


# instance fields
.field private a:Landroid/content/Context;

.field private i:Lcom/estrongs/android/view/dx;

.field private j:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/fs/i;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/estrongs/android/widget/f;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/fs/i;I)V

    iput-object v0, p0, Lcom/estrongs/android/widget/ad;->i:Lcom/estrongs/android/view/dx;

    iput-object v0, p0, Lcom/estrongs/android/widget/ad;->j:Landroid/content/DialogInterface$OnClickListener;

    iput-object p1, p0, Lcom/estrongs/android/widget/ad;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/widget/ad;)Lcom/estrongs/android/view/dx;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/ad;->i:Lcom/estrongs/android/view/dx;

    return-object v0
.end method

.method private m()V
    .locals 3

    const/4 v2, 0x0

    const v1, 0x7f080221

    new-instance v0, Lcom/estrongs/android/widget/ae;

    invoke-direct {v0, p0}, Lcom/estrongs/android/widget/ae;-><init>(Lcom/estrongs/android/widget/ad;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/ad;->a(Lcom/estrongs/android/view/dx;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/ad;->j:Landroid/content/DialogInterface$OnClickListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/ad;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/estrongs/android/widget/ad;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/widget/ad;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/estrongs/android/widget/ad;->c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/ad;->a:Landroid/content/Context;

    const v1, 0x7f080226

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/widget/ad;->j:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/widget/ad;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/estrongs/android/view/dx;Landroid/content/DialogInterface$OnClickListener;Lcom/estrongs/android/widget/ab;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/ad;->i:Lcom/estrongs/android/view/dx;

    iput-object p2, p0, Lcom/estrongs/android/widget/ad;->j:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, p3}, Lcom/estrongs/android/widget/ad;->a(Lcom/estrongs/android/widget/ab;)V

    invoke-direct {p0}, Lcom/estrongs/android/widget/ad;->m()V

    return-void
.end method
