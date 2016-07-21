.class public Lcom/estrongs/android/pop/app/a/a/a;
.super Lcom/estrongs/android/ui/c/c/a;


# instance fields
.field private b:Lcom/estrongs/android/pop/app/a/a/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f030059

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/ui/c/c/a;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/a/a/a;)Lcom/estrongs/android/pop/app/a/a/d;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/a/a;->b:Lcom/estrongs/android/pop/app/a/a/d;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/a/a;->itemView:Landroid/view/View;

    const-string v1, "homepage"

    new-instance v2, Lcom/estrongs/android/pop/app/a/a/b;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/a/a/b;-><init>(Lcom/estrongs/android/pop/app/a/a/a;)V

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/app/a/a;->a(Landroid/view/View;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/estrongs/android/pop/app/a/a/c;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/a/a/c;-><init>(Lcom/estrongs/android/pop/app/a/a/a;)V

    invoke-static {v0}, Lcom/estrongs/android/pop/app/a/a;->a(Lcom/estrongs/android/pop/app/a/k;)V

    return-void
.end method

.method public a(Lcom/estrongs/android/pop/app/a/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/a/a/a;->b:Lcom/estrongs/android/pop/app/a/a/d;

    return-void
.end method
