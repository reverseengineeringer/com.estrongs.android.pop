.class Lcom/estrongs/android/pop/app/dj;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

.field private b:Landroid/graphics/Bitmap;

.field private c:Lcom/estrongs/android/util/as;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ImageCommentActivity;)V
    .locals 3

    iput-object p1, p0, Lcom/estrongs/android/pop/app/dj;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Lcom/estrongs/android/util/as;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/dj;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/ad;->E()Ljava/text/DateFormat;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/dj;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->l(Lcom/estrongs/android/pop/app/ImageCommentActivity;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/util/as;-><init>(Ljava/text/DateFormat;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/dj;->c:Lcom/estrongs/android/util/as;

    return-void
.end method

.method private a()I
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dj;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/dj;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v1, v2}, Lcom/estrongs/android/ui/d/a;->a(Landroid/content/Context;F)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/dj;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/dj;->b:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/dj;)Lcom/estrongs/android/util/as;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dj;->c:Lcom/estrongs/android/util/as;

    return-object v0
.end method

.method private a(Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 3

    if-eqz p2, :cond_0

    const v0, 0x7f0a027a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/dj;->a()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const v0, 0x7f0a012c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v1, Lcom/estrongs/android/pop/app/do;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/do;-><init>(Lcom/estrongs/android/pop/app/dj;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/dj;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/app/dj;->a(Landroid/view/View;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/dj;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dj;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dj;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->g(Lcom/estrongs/android/pop/app/ImageCommentActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dj;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->g(Lcom/estrongs/android/pop/app/ImageCommentActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const/4 v7, 0x0

    if-nez p1, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dj;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->m(Lcom/estrongs/android/pop/app/ImageCommentActivity;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300b1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dj;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "is_dir"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a012c

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020027

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_0
    const v0, 0x7f0a0021

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v0, 0x7f0a032f

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v0, 0x7f0a0341

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dj;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dj;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/dj;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->n(Lcom/estrongs/android/pop/app/ImageCommentActivity;)Lcom/estrongs/android/util/m;

    move-result-object v0

    if-nez v0, :cond_4

    const/16 v0, 0xa

    invoke-static {v0}, Lcom/estrongs/a/b/a;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "makeAndAddView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_4

    new-instance v6, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/dj;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    invoke-static {v1}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/dj;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->c(Lcom/estrongs/android/pop/app/ImageCommentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v0, v1, v2}, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;-><init>(Lcom/estrongs/android/pop/app/imageviewer/gallery/f;Lcom/estrongs/fs/d;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/estrongs/android/pop/app/dj;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    new-instance v0, Lcom/estrongs/android/pop/app/dk;

    const-string v2, "PicComment-ImageLoader"

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/estrongs/android/pop/app/dk;-><init>(Lcom/estrongs/android/pop/app/dj;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/estrongs/android/pop/app/imageviewer/gallery/c;Landroid/view/View;)V

    invoke-static {v8, v0}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->c(Lcom/estrongs/android/pop/app/ImageCommentActivity;Lcom/estrongs/android/util/m;)Lcom/estrongs/android/util/m;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dj;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->n(Lcom/estrongs/android/pop/app/ImageCommentActivity;)Lcom/estrongs/android/util/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/util/m;->start()V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/dj;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->a:Lcom/estrongs/android/pop/spfs/SPFileInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dj;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->a:Lcom/estrongs/android/pop/spfs/SPFileInfo;

    iget-object v0, v0, Lcom/estrongs/android/pop/spfs/SPFileInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dj;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->a:Lcom/estrongs/android/pop/spfs/SPFileInfo;

    iget-wide v0, v0, Lcom/estrongs/android/pop/spfs/SPFileInfo;->lastModifiedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dj;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->a:Lcom/estrongs/android/pop/spfs/SPFileInfo;

    iget-wide v0, v0, Lcom/estrongs/android/pop/spfs/SPFileInfo;->lastModifiedTime:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/estrongs/android/pop/app/dj;->c:Lcom/estrongs/android/util/as;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Lcom/estrongs/android/util/as;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/dj;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    const v1, 0x7f0a02d6

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/dj;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/ImageCommentActivity;->a:Lcom/estrongs/android/pop/spfs/SPFileInfo;

    iget-object v1, v1, Lcom/estrongs/android/pop/spfs/SPFileInfo;->ownerUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dj;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->a:Lcom/estrongs/android/pop/spfs/SPFileInfo;

    iget-object v0, v0, Lcom/estrongs/android/pop/spfs/SPFileInfo;->description:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v0, ""

    iget-object v1, p0, Lcom/estrongs/android/pop/app/dj;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/ImageCommentActivity;->a:Lcom/estrongs/android/pop/spfs/SPFileInfo;

    iget-object v1, v1, Lcom/estrongs/android/pop/spfs/SPFileInfo;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dj;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->a:Lcom/estrongs/android/pop/spfs/SPFileInfo;

    iget-object v0, v0, Lcom/estrongs/android/pop/spfs/SPFileInfo;->description:Ljava/lang/String;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_2
    return-object v7

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/dj;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0, v7, v0}, Lcom/estrongs/android/pop/app/dj;->a(Landroid/view/View;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    const/16 v0, 0x8

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/pop/app/dj;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->g(Lcom/estrongs/android/pop/app/ImageCommentActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/gmail/yuyang226/flickr/a/a/a;

    if-eqz v1, :cond_8

    check-cast v0, Lcom/gmail/yuyang226/flickr/a/a/a;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/dj;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->m(Lcom/estrongs/android/pop/app/ImageCommentActivity;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300ae

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    const v1, 0x7f0a032e

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a032f

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a0330

    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/gmail/yuyang226/flickr/a/a/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/dj;->c:Lcom/estrongs/android/util/as;

    invoke-virtual {v0}, Lcom/gmail/yuyang226/flickr/a/a/a;->b()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/estrongs/android/util/as;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/gmail/yuyang226/flickr/a/a/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lcom/estrongs/android/pop/app/dj;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->j(Lcom/estrongs/android/pop/app/ImageCommentActivity;)Landroid/view/View;

    move-result-object v1

    if-ne v0, v1, :cond_3

    check-cast v0, Landroid/view/View;

    move-object v7, v0

    goto :goto_2
.end method
