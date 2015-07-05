.class public Lcom/estrongs/android/ui/dialog/fq;
.super Lcom/estrongs/android/ui/dialog/cg;


# static fields
.field private static a:Lcom/estrongs/android/ui/dialog/fq;


# instance fields
.field private b:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/ui/dialog/fq;->a:Lcom/estrongs/android/ui/dialog/fq;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/dialog/cg;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fq;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/fq;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fq;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300ea

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/fq;->b:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fq;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/fq;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fq;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0401

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    new-instance v1, Lcom/estrongs/android/ui/a/d;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/fq;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/estrongs/android/ui/a/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/estrongs/android/ui/dialog/fr;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/fr;-><init>(Lcom/estrongs/android/ui/dialog/fq;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method
