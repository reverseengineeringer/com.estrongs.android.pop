.class public Lcom/estrongs/android/widget/ae;
.super Lcom/estrongs/android/widget/g;


# instance fields
.field private a:Landroid/content/Context;

.field private i:Lcom/estrongs/android/view/cc;

.field private j:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/fs/i;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/estrongs/android/widget/g;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/fs/i;I)V

    iput-object v0, p0, Lcom/estrongs/android/widget/ae;->i:Lcom/estrongs/android/view/cc;

    iput-object v0, p0, Lcom/estrongs/android/widget/ae;->j:Landroid/content/DialogInterface$OnClickListener;

    iput-object p1, p0, Lcom/estrongs/android/widget/ae;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/widget/ae;)Lcom/estrongs/android/view/cc;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/ae;->i:Lcom/estrongs/android/view/cc;

    return-object v0
.end method

.method private m()V
    .locals 3

    const/4 v2, 0x0

    const v1, 0x7f0b000c

    new-instance v0, Lcom/estrongs/android/widget/af;

    invoke-direct {v0, p0}, Lcom/estrongs/android/widget/af;-><init>(Lcom/estrongs/android/widget/ae;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/ae;->a(Lcom/estrongs/android/view/cc;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/ae;->j:Landroid/content/DialogInterface$OnClickListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/ae;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/estrongs/android/widget/ae;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/widget/ae;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/estrongs/android/widget/ae;->c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/ae;->a:Landroid/content/Context;

    const v1, 0x7f0b000b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/widget/ae;->j:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/widget/ae;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/estrongs/android/view/cc;Landroid/content/DialogInterface$OnClickListener;Lcom/estrongs/android/widget/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/ae;->i:Lcom/estrongs/android/view/cc;

    iput-object p2, p0, Lcom/estrongs/android/widget/ae;->j:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, p3}, Lcom/estrongs/android/widget/ae;->a(Lcom/estrongs/android/widget/ac;)V

    invoke-direct {p0}, Lcom/estrongs/android/widget/ae;->m()V

    return-void
.end method
