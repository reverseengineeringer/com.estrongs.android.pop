.class public Lcom/estrongs/android/pop/app/kn;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/pop/app/kn;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/estrongs/android/pop/app/kn;->b:Landroid/content/Context;

    sget-object v0, Lcom/estrongs/android/pop/ah;->b:[I

    invoke-virtual {p1, v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/kn;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->a(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;)Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/view/utils/v;->l:[Landroid/graphics/Bitmap;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    new-instance v0, Lcom/estrongs/android/pop/esclasses/ESImageView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/kn;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/esclasses/ESImageView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/estrongs/android/pop/view/utils/n;->b()Lcom/estrongs/android/pop/view/utils/n;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/kn;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->a(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;)Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/estrongs/android/pop/view/utils/n;->e(Lcom/estrongs/android/pop/view/utils/v;I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    const v1, 0x7f0201ee

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v1, Landroid/widget/Gallery$LayoutParams;

    const/16 v2, 0x96

    const/16 v3, 0x112

    invoke-direct {v1, v2, v3}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
