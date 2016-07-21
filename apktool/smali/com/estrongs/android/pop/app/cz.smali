.class public Lcom/estrongs/android/pop/app/cz;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/estrongs/android/pop/utils/aj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/HideListActivity;

.field private b:[Lcom/estrongs/android/pop/utils/aj;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/app/HideListActivity;Landroid/content/Context;I[Lcom/estrongs/android/pop/utils/aj;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/cz;->a:Lcom/estrongs/android/pop/app/HideListActivity;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object p4, p0, Lcom/estrongs/android/pop/app/cz;->b:[Lcom/estrongs/android/pop/utils/aj;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    const/4 v5, 0x0

    const/16 v8, 0x8

    const/4 v11, -0x1

    const/4 v10, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/cz;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300de

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v10}, Landroid/view/View;->setFocusable(Z)V

    :cond_0
    const v0, 0x7f0e0411

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0800a2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cz;->a:Lcom/estrongs/android/pop/app/HideListActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/HideListActivity;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0e0412

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f080094

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/cz;->a:Lcom/estrongs/android/pop/app/HideListActivity;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/HideListActivity;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :try_start_0
    iget-object v2, p0, Lcom/estrongs/android/pop/app/cz;->b:[Lcom/estrongs/android/pop/utils/aj;

    aget-object v2, v2, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v2

    :goto_0
    if-eqz v6, :cond_6

    const v2, 0x7f0e040d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0e040f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0e0410

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v7, v6, Lcom/estrongs/android/pop/utils/aj;->b:Ljava/lang/String;

    if-eqz v7, :cond_5

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    :try_start_1
    iget-boolean v7, v6, Lcom/estrongs/android/pop/utils/aj;->a:Z

    if-eqz v7, :cond_2

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->X()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/estrongs/android/h/f;->a(Landroid/content/Context;)Lcom/estrongs/android/h/f;

    sget-object v7, Lcom/estrongs/fs/w;->a:Lcom/estrongs/fs/w;

    invoke-virtual {v7}, Lcom/estrongs/fs/w;->c()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/estrongs/android/h/f;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    :goto_1
    if-eqz v5, :cond_3

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    iget-object v2, v6, Lcom/estrongs/android/pop/utils/aj;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "/"

    :cond_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v6, Lcom/estrongs/android/pop/utils/aj;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->cc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    :goto_3
    invoke-virtual {p2, v10}, Landroid/view/View;->setBackgroundColor(I)V

    return-object p2

    :catch_0
    move-exception v2

    move-object v6, v5

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->X()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/estrongs/android/h/f;->a(Landroid/content/Context;)Lcom/estrongs/android/h/f;

    iget-object v7, v6, Lcom/estrongs/android/pop/utils/aj;->b:Ljava/lang/String;

    invoke-static {v7}, Lcom/estrongs/android/util/bg;->b(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/estrongs/android/h/f;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    goto :goto_1

    :cond_3
    iget-boolean v5, v6, Lcom/estrongs/android/pop/utils/aj;->a:Z

    if-eqz v5, :cond_4

    const v5, 0x7f020190

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_4
    const v5, 0x7f0201a4

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    const v4, 0x7f080347

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-double v6, v2

    const-wide/high16 v8, 0x4042000000000000L    # 36.0

    div-double/2addr v6, v8

    const-wide v8, 0x4045800000000000L    # 43.0

    mul-double/2addr v8, v6

    double-to-int v2, v8

    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    mul-double/2addr v4, v6

    double-to-int v2, v4

    invoke-virtual {v3, v10, v10, v10, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_3

    :catch_1
    move-exception v7

    goto/16 :goto_1
.end method
