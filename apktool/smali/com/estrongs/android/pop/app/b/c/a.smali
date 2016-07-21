.class public Lcom/estrongs/android/pop/app/b/c/a;
.super Lcom/estrongs/android/pop/app/b/c/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/b/c/h;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a(I)V
    .locals 3

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "open_format"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c/a;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    const-string v2, "log"

    invoke-virtual {v0, v2, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_0
    :goto_1
    return-void

    :sswitch_0
    const-string v0, "pic"

    goto :goto_0

    :sswitch_1
    const-string v0, "mus"

    goto :goto_0

    :sswitch_2
    const-string v0, "vid"

    goto :goto_0

    :sswitch_3
    const-string v0, "doc"

    goto :goto_0

    :sswitch_4
    const-string v0, "cld"

    goto :goto_0

    :sswitch_5
    const-string v0, "apk"

    goto :goto_0

    :sswitch_6
    const-string v0, "srv"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x6 -> :sswitch_5
        0x33 -> :sswitch_4
        0x34 -> :sswitch_6
    .end sparse-switch
.end method

.method private a(Lcom/estrongs/android/pop/app/b/b;ILandroid/view/View;)V
    .locals 11

    const v10, 0x7f08025d

    iget-object v0, p1, Lcom/estrongs/android/pop/app/b/b;->i:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/b/i;

    const v1, 0x7f0e04c9

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0e04ca

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const v3, 0x7f0e04cb

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0e04cc

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget v5, p1, Lcom/estrongs/android/pop/app/b/b;->c:I

    sparse-switch v5, :sswitch_data_0

    new-instance v5, Lcom/estrongs/fs/impl/local/f;

    new-instance v6, Ljava/io/File;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/b/i;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/estrongs/fs/impl/local/f;-><init>(Ljava/io/File;)V

    invoke-static {v5, v1}, Lcom/estrongs/android/h/a/e;->a(Lcom/estrongs/fs/h;Landroid/widget/ImageView;)V

    :goto_0
    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/b/i;->length()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v1, v6, v8

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/b/i;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/estrongs/android/pop/app/b/c/a;->n:Landroid/content/Context;

    invoke-virtual {v3, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-boolean v1, v0, Lcom/estrongs/android/pop/app/b/i;->a:Z

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v1, Lcom/estrongs/android/pop/app/b/c/b;

    invoke-direct {v1, p0, v0, p1}, Lcom/estrongs/android/pop/app/b/c/b;-><init>(Lcom/estrongs/android/pop/app/b/c/a;Lcom/estrongs/android/pop/app/b/i;Lcom/estrongs/android/pop/app/b/b;)V

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v1, Lcom/estrongs/android/pop/app/b/c/c;

    invoke-direct {v1, p0, p1, v0}, Lcom/estrongs/android/pop/app/b/c/c;-><init>(Lcom/estrongs/android/pop/app/b/c/a;Lcom/estrongs/android/pop/app/b/b;Lcom/estrongs/android/pop/app/b/i;)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :sswitch_0
    new-instance v5, Lcom/estrongs/fs/impl/local/f;

    new-instance v6, Ljava/io/File;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/b/i;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/estrongs/fs/impl/local/f;-><init>(Ljava/io/File;)V

    invoke-static {v5, v1}, Lcom/estrongs/android/h/a/e;->a(Lcom/estrongs/fs/h;Landroid/widget/ImageView;)V

    goto :goto_0

    :sswitch_1
    new-instance v5, Lcom/estrongs/fs/impl/v/a;

    new-instance v6, Ljava/io/File;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/b/i;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/estrongs/fs/impl/v/a;-><init>(Ljava/io/File;)V

    invoke-static {v5, v1}, Lcom/estrongs/android/h/a/e;->a(Lcom/estrongs/fs/h;Landroid/widget/ImageView;)V

    goto :goto_0

    :sswitch_2
    new-instance v5, Lcom/estrongs/fs/impl/n/a;

    new-instance v6, Ljava/io/File;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/b/i;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/estrongs/fs/impl/n/a;-><init>(Ljava/io/File;)V

    invoke-static {v5, v1}, Lcom/estrongs/android/h/a/e;->a(Lcom/estrongs/fs/h;Landroid/widget/ImageView;)V

    goto/16 :goto_0

    :sswitch_3
    new-instance v5, Lcom/estrongs/fs/impl/f/a;

    new-instance v6, Lcom/estrongs/fs/impl/local/f;

    new-instance v7, Ljava/io/File;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/b/i;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lcom/estrongs/fs/impl/local/f;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Lcom/estrongs/fs/impl/f/a;-><init>(Lcom/estrongs/fs/h;)V

    invoke-static {v5, v1}, Lcom/estrongs/android/h/a/e;->a(Lcom/estrongs/fs/h;Landroid/widget/ImageView;)V

    goto/16 :goto_0

    :sswitch_4
    new-instance v5, Lcom/estrongs/fs/impl/local/f;

    new-instance v6, Ljava/io/File;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/b/i;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/estrongs/fs/impl/local/f;-><init>(Ljava/io/File;)V

    invoke-static {v5, v1}, Lcom/estrongs/android/h/a/e;->a(Lcom/estrongs/fs/h;Landroid/widget/ImageView;)V

    goto/16 :goto_0

    :sswitch_5
    new-instance v5, Lcom/estrongs/fs/x;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/b/i;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/estrongs/fs/x;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v1}, Lcom/estrongs/android/h/a/e;->a(Lcom/estrongs/fs/h;Landroid/widget/ImageView;)V

    goto/16 :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/estrongs/android/pop/app/b/c/a;->n:Landroid/content/Context;

    invoke-virtual {v3, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/b/i;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/b/i;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/estrongs/fs/util/j;->e(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x4 -> :sswitch_3
        0x6 -> :sswitch_4
        0x32 -> :sswitch_5
    .end sparse-switch
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/b/c/a;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/b/c/a;->a(I)V

    return-void
.end method


# virtual methods
.method protected a()Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c/a;->n:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030117

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/estrongs/android/pop/app/b/c/a;->n:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070079

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/b/c/a;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected a(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/app/b/c/h;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c/a;->h:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x4

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/app/b/c/h;->a(Ljava/lang/Object;)V

    check-cast p1, Lcom/estrongs/android/pop/app/b/b;

    iget-object v1, p1, Lcom/estrongs/android/pop/app/b/b;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    return-void

    :cond_0
    iget-object v0, p1, Lcom/estrongs/android/pop/app/b/b;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/c/a;->m:Landroid/view/View;

    invoke-direct {p0, p1, v0, v1}, Lcom/estrongs/android/pop/app/b/c/a;->a(Lcom/estrongs/android/pop/app/b/b;ILandroid/view/View;)V

    :pswitch_1
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/c/a;->l:Landroid/view/View;

    invoke-direct {p0, p1, v0, v1}, Lcom/estrongs/android/pop/app/b/c/a;->a(Lcom/estrongs/android/pop/app/b/b;ILandroid/view/View;)V

    :pswitch_2
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/c/a;->k:Landroid/view/View;

    invoke-direct {p0, p1, v0, v1}, Lcom/estrongs/android/pop/app/b/c/a;->a(Lcom/estrongs/android/pop/app/b/b;ILandroid/view/View;)V

    :pswitch_3
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/c/a;->j:Landroid/view/View;

    invoke-direct {p0, p1, v0, v1}, Lcom/estrongs/android/pop/app/b/c/a;->a(Lcom/estrongs/android/pop/app/b/b;ILandroid/view/View;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected b()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c/a;->h:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method
