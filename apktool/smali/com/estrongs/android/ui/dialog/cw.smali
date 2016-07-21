.class Lcom/estrongs/android/ui/dialog/cw;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/ci;

.field private b:Landroid/content/Context;

.field private c:[Ljava/lang/CharSequence;

.field private d:[Landroid/graphics/drawable/Drawable;

.field private e:I


# direct methods
.method public constructor <init>(Lcom/estrongs/android/ui/dialog/ci;Landroid/content/Context;[Landroid/graphics/drawable/Drawable;[Ljava/lang/CharSequence;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/cw;->a:Lcom/estrongs/android/ui/dialog/ci;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/cw;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/estrongs/android/ui/dialog/cw;->d:[Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/estrongs/android/ui/dialog/cw;->c:[Ljava/lang/CharSequence;

    iput p5, p0, Lcom/estrongs/android/ui/dialog/cw;->e:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/dialog/cw;->e:I

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/cw;->c:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/cw;->c:[Ljava/lang/CharSequence;

    array-length v0, v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/16 v5, 0x8

    const/4 v3, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/cw;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300f0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const v0, 0x7f0e0455

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/cw;->d:[Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    const v1, 0x7f0e0456

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/cw;->c:[Ljava/lang/CharSequence;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0e0457

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/estrongs/android/ui/dialog/cw;->a:Lcom/estrongs/android/ui/dialog/ci;

    # getter for: Lcom/estrongs/android/ui/dialog/ci;->mSelectable:Z
    invoke-static {v4}, Lcom/estrongs/android/ui/dialog/ci;->access$500(Lcom/estrongs/android/ui/dialog/ci;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setVisibility(I)V

    :cond_1
    iget v4, p0, Lcom/estrongs/android/ui/dialog/cw;->e:I

    if-ne v4, p1, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/cw;->a:Lcom/estrongs/android/ui/dialog/ci;

    iget-boolean v2, v2, Lcom/estrongs/android/ui/dialog/ci;->itemsEnable:Z

    if-eqz v2, :cond_4

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/cw;->a:Lcom/estrongs/android/ui/dialog/ci;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/ci;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    const v2, 0x7f0d0105

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    return-object p2

    :cond_3
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/cw;->d:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_4
    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    const v0, -0x777778

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method
