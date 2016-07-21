.class public Lcom/estrongs/android/ui/view/TripleStateCheckBox;
.super Landroid/widget/ImageView;


# instance fields
.field a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/ui/view/TripleStateCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/estrongs/android/ui/view/TripleStateCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/ui/view/TripleStateCheckBox;->a:I

    invoke-direct {p0}, Lcom/estrongs/android/ui/view/TripleStateCheckBox;->a()V

    return-void
.end method

.method private a()V
    .locals 0

    return-void
.end method


# virtual methods
.method public getCheckBoxState()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/view/TripleStateCheckBox;->a:I

    return v0
.end method

.method public setChecked(I)V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x1

    if-ne p1, v2, :cond_1

    const v0, 0x7f0200e5

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/TripleStateCheckBox;->setImageResource(I)V

    iput v2, p0, Lcom/estrongs/android/ui/view/TripleStateCheckBox;->a:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p1, v1, :cond_2

    const v0, 0x7f0200e4

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/TripleStateCheckBox;->setImageResource(I)V

    iput v1, p0, Lcom/estrongs/android/ui/view/TripleStateCheckBox;->a:I

    goto :goto_0

    :cond_2
    if-nez p1, :cond_0

    const v0, 0x7f0200e3

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/TripleStateCheckBox;->setImageResource(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/ui/view/TripleStateCheckBox;->a:I

    goto :goto_0
.end method
