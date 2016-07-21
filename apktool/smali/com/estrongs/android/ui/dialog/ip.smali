.class public Lcom/estrongs/android/ui/dialog/ip;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/estrongs/android/ui/dialog/ci;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ip;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/ip;->b()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/ip;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ip;->b:Landroid/content/Context;

    return-object v0
.end method

.method private b()V
    .locals 3

    new-instance v0, Lcom/estrongs/android/ui/dialog/cv;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ip;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0804e4

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->a(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v1, 0x7f080273

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->b(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v1, 0x7f080272

    new-instance v2, Lcom/estrongs/android/ui/dialog/ir;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/dialog/ir;-><init>(Lcom/estrongs/android/ui/dialog/ip;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v1, 0x7f080221

    new-instance v2, Lcom/estrongs/android/ui/dialog/iq;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/dialog/iq;-><init>(Lcom/estrongs/android/ui/dialog/ip;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cv;->b()Lcom/estrongs/android/ui/dialog/ci;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/ip;->a:Lcom/estrongs/android/ui/dialog/ci;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ip;->a:Lcom/estrongs/android/ui/dialog/ci;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ip;->a:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->show()V

    :cond_0
    return-void
.end method
