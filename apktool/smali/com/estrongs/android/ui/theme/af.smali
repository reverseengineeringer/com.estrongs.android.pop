.class Lcom/estrongs/android/ui/theme/af;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/theme/ThemeFolderActivity;

.field private b:Landroid/content/Context;

.field private c:[I

.field private d:[Ljava/lang/String;

.field private e:I


# direct methods
.method public constructor <init>(Lcom/estrongs/android/ui/theme/ThemeFolderActivity;Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/estrongs/android/ui/theme/af;->a:Lcom/estrongs/android/ui/theme/ThemeFolderActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/estrongs/android/ui/theme/af;->b:Landroid/content/Context;

    const/4 v1, 0x6

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/estrongs/android/ui/theme/af;->c:[I

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/af;->c:[I

    const v2, 0x7f020095

    aput v2, v1, v0

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/af;->c:[I

    const/4 v2, 0x1

    const v3, 0x7f02008e

    aput v3, v1, v2

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/af;->c:[I

    const/4 v2, 0x2

    const v3, 0x7f02008b

    aput v3, v1, v2

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/af;->c:[I

    const/4 v2, 0x3

    const v3, 0x7f02008d

    aput v3, v1, v2

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/af;->c:[I

    const/4 v2, 0x4

    const v3, 0x7f02008c

    aput v3, v1, v2

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/af;->c:[I

    const/4 v2, 0x5

    const v3, 0x7f02008a

    aput v3, v1, v2

    invoke-virtual {p1}, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/ui/theme/af;->d:[Ljava/lang/String;

    iput v0, p0, Lcom/estrongs/android/ui/theme/af;->e:I

    invoke-static {p1}, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->c(Lcom/estrongs/android/ui/theme/ThemeFolderActivity;)Lcom/estrongs/android/ui/theme/ai;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/ai;->g()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/estrongs/android/ui/theme/af;->c:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/theme/af;->c:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput v0, p0, Lcom/estrongs/android/ui/theme/af;->e:I

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/theme/af;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/af;->b:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/af;->c:[I

    iget v1, p0, Lcom/estrongs/android/ui/theme/af;->e:I

    aget v0, v0, v1

    return v0
.end method

.method public a(I)Landroid/graphics/drawable/Drawable;
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/af;->a:Lcom/estrongs/android/ui/theme/ThemeFolderActivity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->d(Lcom/estrongs/android/ui/theme/ThemeFolderActivity;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/af;->c:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/theme/al;->e(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/af;->a:Lcom/estrongs/android/ui/theme/ThemeFolderActivity;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->e(Lcom/estrongs/android/ui/theme/ThemeFolderActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "drawable"

    iget-object v3, p0, Lcom/estrongs/android/ui/theme/af;->a:Lcom/estrongs/android/ui/theme/ThemeFolderActivity;

    invoke-static {v3}, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->e(Lcom/estrongs/android/ui/theme/ThemeFolderActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/af;->a:Lcom/estrongs/android/ui/theme/ThemeFolderActivity;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->e(Lcom/estrongs/android/ui/theme/ThemeFolderActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    const v0, 0x7f02027e

    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/ui/theme/af;->a:Lcom/estrongs/android/ui/theme/ThemeFolderActivity;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->d(Lcom/estrongs/android/ui/theme/ThemeFolderActivity;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x7f02027d

    goto :goto_0
.end method

.method public c(I)V
    .locals 2

    iput p1, p0, Lcom/estrongs/android/ui/theme/af;->e:I

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/af;->a:Lcom/estrongs/android/ui/theme/ThemeFolderActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->a(Lcom/estrongs/android/ui/theme/ThemeFolderActivity;Z)Z

    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/af;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/theme/af;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v2, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/af;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03008b

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/theme/af;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0a029a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/theme/af;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0a029b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/af;->d:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a029c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iget v1, p0, Lcom/estrongs/android/ui/theme/af;->e:I

    if-ne v1, p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setClickable(Z)V

    new-instance v0, Lcom/estrongs/android/ui/theme/ag;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/android/ui/theme/ag;-><init>(Lcom/estrongs/android/ui/theme/af;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/estrongs/android/ui/theme/ah;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/android/ui/theme/ah;-><init>(Lcom/estrongs/android/ui/theme/af;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object p2

    :cond_1
    move v1, v2

    goto :goto_0
.end method
