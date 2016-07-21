.class Lcom/estrongs/android/ui/dialog/bv;
.super Landroid/widget/BaseExpandableListAdapter;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/bl;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/bl;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/bv;->a:Lcom/estrongs/android/ui/dialog/bl;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16

    if-nez p4, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/dialog/bv;->a:Lcom/estrongs/android/ui/dialog/bl;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/bl;->a:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03006c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    new-instance v3, Lcom/estrongs/android/ui/dialog/bz;

    invoke-direct {v3}, Lcom/estrongs/android/ui/dialog/bz;-><init>()V

    const v2, 0x7f0e0263

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/estrongs/android/ui/dialog/bz;->a:Landroid/widget/TextView;

    const v2, 0x7f0e01ca

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/estrongs/android/ui/dialog/bz;->b:Landroid/widget/TextView;

    const v2, 0x7f0e01c5

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v3, Lcom/estrongs/android/ui/dialog/bz;->c:Landroid/widget/ImageView;

    const v2, 0x7f0e01c9

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v3, Lcom/estrongs/android/ui/dialog/bz;->d:Landroid/view/View;

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v2, 0x7f0e01c8

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v4

    invoke-virtual {v4}, Lcom/estrongs/android/ui/theme/at;->n()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v4, -0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/android/ui/dialog/bv;->a:Lcom/estrongs/android/ui/dialog/bl;

    iget-object v5, v5, Lcom/estrongs/android/ui/dialog/bl;->a:Landroid/app/Activity;

    const/high16 v6, 0x42380000    # 46.0f

    invoke-static {v5, v6}, Lcom/estrongs/android/ui/d/g;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v2, v4, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v3, Lcom/estrongs/android/ui/dialog/bz;->c:Landroid/widget/ImageView;

    new-instance v4, Lcom/estrongs/android/ui/dialog/bw;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/estrongs/android/ui/dialog/bw;-><init>(Lcom/estrongs/android/ui/dialog/bv;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/estrongs/android/ui/dialog/bx;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/estrongs/android/ui/dialog/bx;-><init>(Lcom/estrongs/android/ui/dialog/bv;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v4, v3

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/dialog/bv;->a:Lcom/estrongs/android/ui/dialog/bl;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/bl;->i:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/android/ui/dialog/bu;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/bu;->c:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/dialog/bv;->a:Lcom/estrongs/android/ui/dialog/bl;

    iget-object v5, v2, Lcom/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder;->a:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/estrongs/android/ui/dialog/bl;->a(Lcom/estrongs/android/ui/dialog/bl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v3, ""

    invoke-virtual {v2}, Lcom/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/estrongs/fs/b/ao;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/estrongs/fs/b/ao;->b()Lcom/estrongs/fs/b/ap;

    move-result-object v9

    iget v5, v9, Lcom/estrongs/fs/b/ap;->e:I

    iget v3, v9, Lcom/estrongs/fs/b/ap;->f:I

    iget-wide v6, v9, Lcom/estrongs/fs/b/ap;->c:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/estrongs/android/ui/dialog/bv;->a:Lcom/estrongs/android/ui/dialog/bl;

    iget-boolean v10, v10, Lcom/estrongs/android/ui/dialog/bl;->f:Z

    if-eqz v10, :cond_0

    int-to-long v10, v5

    iget-wide v12, v9, Lcom/estrongs/fs/b/ap;->h:J

    iget-wide v14, v9, Lcom/estrongs/fs/b/ap;->j:J

    add-long/2addr v12, v14

    iget-wide v14, v9, Lcom/estrongs/fs/b/ap;->l:J

    add-long/2addr v12, v14

    sub-long/2addr v10, v12

    long-to-int v5, v10

    iget v3, v9, Lcom/estrongs/fs/b/ap;->f:I

    iget-wide v10, v9, Lcom/estrongs/fs/b/ap;->g:J

    iget-wide v12, v9, Lcom/estrongs/fs/b/ap;->i:J

    add-long/2addr v10, v12

    iget-wide v12, v9, Lcom/estrongs/fs/b/ap;->k:J

    add-long/2addr v10, v12

    sub-long/2addr v6, v10

    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/estrongs/android/ui/dialog/bv;->a:Lcom/estrongs/android/ui/dialog/bl;

    iget-object v9, v9, Lcom/estrongs/android/ui/dialog/bl;->d:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ", "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/android/ui/dialog/bv;->a:Lcom/estrongs/android/ui/dialog/bl;

    iget-object v5, v5, Lcom/estrongs/android/ui/dialog/bl;->e:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " ("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v6, v7}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    iget-object v6, v4, Lcom/estrongs/android/ui/dialog/bz;->a:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v4, Lcom/estrongs/android/ui/dialog/bz;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/dialog/bv;->a:Lcom/estrongs/android/ui/dialog/bl;

    iget-object v3, v3, Lcom/estrongs/android/ui/dialog/bl;->b:Ljava/util/Set;

    iget-object v2, v2, Lcom/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder;->a:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, v4, Lcom/estrongs/android/ui/dialog/bz;->c:Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    const v2, 0x7f020315

    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    move/from16 v0, p1

    iput v0, v4, Lcom/estrongs/android/ui/dialog/bz;->e:I

    move/from16 v0, p2

    iput v0, v4, Lcom/estrongs/android/ui/dialog/bz;->f:I

    iget-object v2, v4, Lcom/estrongs/android/ui/dialog/bz;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const v2, 0x7f0e01c9

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz p3, :cond_4

    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    return-object p4

    :cond_1
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/android/ui/dialog/bz;

    move-object v4, v2

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/dialog/bv;->a:Lcom/estrongs/android/ui/dialog/bl;

    iget-object v3, v3, Lcom/estrongs/android/ui/dialog/bl;->a:Landroid/app/Activity;

    const v5, 0x7f080402

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v5, v8

    goto :goto_1

    :cond_3
    const v2, 0x7f020318

    goto :goto_2

    :cond_4
    const/16 v2, 0x8

    goto :goto_3
.end method

.method public getChildrenCount(I)I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bv;->a:Lcom/estrongs/android/ui/dialog/bl;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/bl;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/dialog/bu;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/bu;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bv;->a:Lcom/estrongs/android/ui/dialog/bl;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/bl;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v3, 0x0

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bv;->a:Lcom/estrongs/android/ui/dialog/bl;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/bl;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03006a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/bv;->a:Lcom/estrongs/android/ui/dialog/bl;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/bl;->a:Landroid/app/Activity;

    const/high16 v4, 0x42580000    # 54.0f

    invoke-static {v2, v4}, Lcom/estrongs/android/ui/d/g;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bv;->a:Lcom/estrongs/android/ui/dialog/bl;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/bl;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/dialog/bu;

    const v1, 0x7f0e0175

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0e01c8

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/bu;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/bu;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->d()Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    move-result-object v1

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/bu;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/estrongs/fs/impl/local/f;

    invoke-direct {v0, v1}, Lcom/estrongs/fs/impl/local/f;-><init>(Ljava/io/File;)V

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v0}, Lcom/estrongs/android/h/a/e;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/estrongs/fs/h;)V

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bv;->a:Lcom/estrongs/android/ui/dialog/bl;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/bl;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020187

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const v0, 0x7f0e0260

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz p2, :cond_2

    const v1, 0x7f02021c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    const v0, 0x7f0e01c9

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p2, :cond_3

    const/16 v0, 0x8

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-object p3

    :cond_2
    const v1, 0x7f0201f8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_2

    :cond_4
    move v0, v3

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
