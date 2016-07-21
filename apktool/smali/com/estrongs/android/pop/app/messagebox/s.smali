.class Lcom/estrongs/android/pop/app/messagebox/s;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;

.field private b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/pop/app/messagebox/s;->a:Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-virtual {p1}, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/s;->b:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/s;->a:Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->e(Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/s;->a:Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->e(Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    const/16 v10, 0x8

    const/4 v9, 0x4

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/s;->a:Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->e(Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/estrongs/android/pop/app/messagebox/ah;

    if-nez p2, :cond_2

    new-instance v7, Lcom/estrongs/android/pop/app/messagebox/v;

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Lcom/estrongs/android/pop/app/messagebox/v;-><init>(Lcom/estrongs/android/pop/app/messagebox/p;)V

    iput p1, v7, Lcom/estrongs/android/pop/app/messagebox/v;->g:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/s;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030121

    invoke-virtual {v0, v1, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/s;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030122

    invoke-virtual {v0, v1, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    new-instance v0, Lcom/estrongs/android/pop/app/messagebox/f;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/messagebox/s;->a:Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/messagebox/s;->a:Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->f(Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;)Lcom/estrongs/android/pop/app/messagebox/DisableScrollListView;

    move-result-object v2

    new-instance v5, Lcom/estrongs/android/pop/app/messagebox/t;

    invoke-direct {v5, p0, v3, v7}, Lcom/estrongs/android/pop/app/messagebox/t;-><init>(Lcom/estrongs/android/pop/app/messagebox/s;Landroid/view/View;Lcom/estrongs/android/pop/app/messagebox/v;)V

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/app/messagebox/f;-><init>(Landroid/content/Context;Lcom/estrongs/android/pop/app/messagebox/DisableScrollListView;Landroid/view/View;Landroid/view/View;Lcom/estrongs/android/pop/app/messagebox/l;)V

    const v1, 0x7f0e04e3

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v7, Lcom/estrongs/android/pop/app/messagebox/v;->a:Landroid/widget/ImageView;

    const v1, 0x7f0e04e6

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v7, Lcom/estrongs/android/pop/app/messagebox/v;->b:Landroid/widget/ImageView;

    const v1, 0x7f0e04e5

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v7, Lcom/estrongs/android/pop/app/messagebox/v;->c:Landroid/widget/TextView;

    const v1, 0x7f0e04e4

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v7, Lcom/estrongs/android/pop/app/messagebox/v;->d:Landroid/widget/TextView;

    const v1, 0x7f0e04e7

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v7, Lcom/estrongs/android/pop/app/messagebox/v;->e:Landroid/widget/ImageView;

    const v1, 0x7f0e04e8

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v7, Lcom/estrongs/android/pop/app/messagebox/v;->f:Landroid/widget/LinearLayout;

    iput-object v3, v7, Lcom/estrongs/android/pop/app/messagebox/v;->h:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/messagebox/s;->a:Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->h(Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;)Ljava/util/List;

    move-result-object v2

    move-object v1, v0

    check-cast v1, Lcom/estrongs/android/pop/app/messagebox/f;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v7

    move-object p2, v0

    :goto_0
    iget-object v0, v1, Lcom/estrongs/android/pop/app/messagebox/v;->f:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/estrongs/android/pop/app/messagebox/u;

    invoke-direct {v2, p0, v6}, Lcom/estrongs/android/pop/app/messagebox/u;-><init>(Lcom/estrongs/android/pop/app/messagebox/s;Lcom/estrongs/android/pop/app/messagebox/ah;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/estrongs/android/pop/app/messagebox/ah;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    move v4, v0

    :goto_1
    if-eqz v4, :cond_0

    iget-object v0, v1, Lcom/estrongs/android/pop/app/messagebox/v;->c:Landroid/widget/TextView;

    iget-object v2, v6, Lcom/estrongs/android/pop/app/messagebox/ah;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, v1, Lcom/estrongs/android/pop/app/messagebox/v;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v2, v6, Lcom/estrongs/android/pop/app/messagebox/ah;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/messagebox/s;->a:Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;

    const/high16 v3, 0x41500000    # 13.0f

    invoke-static {v2, v3}, Lcom/estrongs/android/ui/d/g;->a(Landroid/content/Context;F)I

    move-result v2

    add-int v3, v0, v2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/s;->a:Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/cu;->e(Landroid/content/Context;)I

    move-result v0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/messagebox/s;->a:Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;

    const/high16 v5, 0x41d00000    # 26.0f

    invoke-static {v2, v5}, Lcom/estrongs/android/ui/d/g;->a(Landroid/content/Context;F)I

    move-result v2

    sub-int v2, v0, v2

    iget-object v0, v1, Lcom/estrongs/android/pop/app/messagebox/v;->h:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v5, p0, Lcom/estrongs/android/pop/app/messagebox/s;->a:Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;

    invoke-static {v5}, Lcom/estrongs/android/pop/utils/cu;->e(Landroid/content/Context;)I

    move-result v5

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v5, v1, Lcom/estrongs/android/pop/app/messagebox/v;->c:Landroid/widget/TextView;

    if-le v3, v2, :cond_4

    move v0, v2

    :goto_2
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setWidth(I)V

    iget-object v3, v1, Lcom/estrongs/android/pop/app/messagebox/v;->c:Landroid/widget/TextView;

    if-eqz v4, :cond_5

    move v0, v8

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/s;->a:Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;

    iget-wide v4, v6, Lcom/estrongs/android/pop/app/messagebox/ah;->h:J

    invoke-static {v0, v4, v5}, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    const-string v3, "text"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/estrongs/android/pop/app/messagebox/v;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/messagebox/s;->a:Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;

    iget-wide v4, v6, Lcom/estrongs/android/pop/app/messagebox/ah;->h:J

    invoke-static {v3, v4, v5}, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/estrongs/android/pop/app/messagebox/v;->d:Landroid/widget/TextView;

    iget-boolean v3, v6, Lcom/estrongs/android/pop/app/messagebox/ah;->j:Z

    if-eqz v3, :cond_1

    move v9, v8

    :cond_1
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget v0, v6, Lcom/estrongs/android/pop/app/messagebox/ah;->g:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    iget-object v0, v1, Lcom/estrongs/android/pop/app/messagebox/v;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v1, Lcom/estrongs/android/pop/app/messagebox/v;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_4
    iget-object v0, v6, Lcom/estrongs/android/pop/app/messagebox/ah;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/messagebox/ai;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/s;->a:Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v0, v4}, Lcom/estrongs/android/ui/d/g;->a(Landroid/content/Context;F)I

    move-result v4

    if-eqz v3, :cond_7

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/estrongs/android/pop/app/messagebox/s;->a:Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;

    invoke-virtual {v5}, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v3, v4}, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v0, v5, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, v1, Lcom/estrongs/android/pop/app/messagebox/v;->a:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    const/high16 v7, 0x3f800000    # 1.0f

    int-to-float v2, v2

    mul-float/2addr v2, v7

    int-to-float v4, v4

    div-float/2addr v2, v4

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, v1, Lcom/estrongs/android/pop/app/messagebox/v;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/s;->a:Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07004b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/messagebox/s;->a:Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070047

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/messagebox/s;->a:Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->e(Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_8

    iget-object v1, v1, Lcom/estrongs/android/pop/app/messagebox/v;->h:Landroid/view/View;

    invoke-virtual {v1, v0, v2, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    :goto_6
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "msgID"

    iget-object v2, v6, Lcom/estrongs/android/pop/app/messagebox/ah;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/messagebox/s;->a:Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;

    invoke-static {v1}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v1

    const-string v2, "mbx_bns"

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/messagebox/s;->a:Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;

    invoke-static {v1}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v1

    const-string v2, "mbx"

    const-string v3, "mbx_pub"

    invoke-virtual {v1, v2, v3, v0}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_7
    return-object p2

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/messagebox/v;

    iput p1, v0, Lcom/estrongs/android/pop/app/messagebox/v;->g:I

    move-object v1, v0

    goto/16 :goto_0

    :cond_3
    move v4, v8

    goto/16 :goto_1

    :cond_4
    move v0, v3

    goto/16 :goto_2

    :cond_5
    move v0, v9

    goto/16 :goto_3

    :cond_6
    iget-object v0, v1, Lcom/estrongs/android/pop/app/messagebox/v;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v1, Lcom/estrongs/android/pop/app/messagebox/v;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/s;->a:Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->a()[I

    move-result-object v3

    iget v5, v6, Lcom/estrongs/android/pop/app/messagebox/ah;->a:I

    add-int/lit8 v5, v5, -0x1

    invoke-static {}, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->a()[I

    move-result-object v7

    array-length v7, v7

    rem-int/2addr v5, v7

    aget v3, v3, v5

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/estrongs/android/pop/app/messagebox/s;->a:Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;

    invoke-virtual {v5}, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v3, v4}, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v0, v5, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v3, v6, Lcom/estrongs/android/pop/app/messagebox/ah;->e:Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/messagebox/ai;->a(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_8
    iget-object v1, v1, Lcom/estrongs/android/pop/app/messagebox/v;->h:Landroid/view/View;

    invoke-virtual {v1, v0, v2, v0, v8}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_6

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_7
.end method
