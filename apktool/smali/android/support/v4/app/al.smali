.class Landroid/support/v4/app/al;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/app/ah;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/af;)Landroid/app/Notification;
    .locals 18

    new-instance v1, Landroid/support/v4/app/ap;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/af;->a:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/af;->r:Landroid/app/Notification;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/af;->b:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/support/v4/app/af;->c:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/support/v4/app/af;->h:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/support/v4/app/af;->f:Landroid/widget/RemoteViews;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/support/v4/app/af;->i:I

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/support/v4/app/af;->d:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/support/v4/app/af;->e:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/support/v4/app/af;->g:Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/support/v4/app/af;->n:I

    move-object/from16 v0, p1

    iget v13, v0, Landroid/support/v4/app/af;->o:I

    move-object/from16 v0, p1

    iget-boolean v14, v0, Landroid/support/v4/app/af;->p:Z

    move-object/from16 v0, p1

    iget-boolean v15, v0, Landroid/support/v4/app/af;->k:Z

    move-object/from16 v0, p1

    iget v0, v0, Landroid/support/v4/app/af;->j:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/af;->m:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    invoke-direct/range {v1 .. v17}, Landroid/support/v4/app/ap;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZILjava/lang/CharSequence;)V

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/af;->q:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/ac;

    iget v4, v2, Landroid/support/v4/app/ac;->a:I

    iget-object v5, v2, Landroid/support/v4/app/ac;->b:Ljava/lang/CharSequence;

    iget-object v2, v2, Landroid/support/v4/app/ac;->c:Landroid/app/PendingIntent;

    invoke-virtual {v1, v4, v5, v2}, Landroid/support/v4/app/ap;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_0

    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/af;->l:Landroid/support/v4/app/am;

    if-eqz v2, :cond_1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/af;->l:Landroid/support/v4/app/am;

    instance-of v2, v2, Landroid/support/v4/app/ae;

    if-eqz v2, :cond_2

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/af;->l:Landroid/support/v4/app/am;

    check-cast v2, Landroid/support/v4/app/ae;

    iget-object v3, v2, Landroid/support/v4/app/ae;->d:Ljava/lang/CharSequence;

    iget-boolean v4, v2, Landroid/support/v4/app/ae;->f:Z

    iget-object v5, v2, Landroid/support/v4/app/ae;->e:Ljava/lang/CharSequence;

    iget-object v2, v2, Landroid/support/v4/app/ae;->a:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/support/v4/app/ap;->a(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :cond_1
    :goto_1
    invoke-virtual {v1}, Landroid/support/v4/app/ap;->a()Landroid/app/Notification;

    move-result-object v1

    return-object v1

    :cond_2
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/af;->l:Landroid/support/v4/app/am;

    instance-of v2, v2, Landroid/support/v4/app/ag;

    if-eqz v2, :cond_3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/af;->l:Landroid/support/v4/app/am;

    check-cast v2, Landroid/support/v4/app/ag;

    iget-object v3, v2, Landroid/support/v4/app/ag;->d:Ljava/lang/CharSequence;

    iget-boolean v4, v2, Landroid/support/v4/app/ag;->f:Z

    iget-object v5, v2, Landroid/support/v4/app/ag;->e:Ljava/lang/CharSequence;

    iget-object v2, v2, Landroid/support/v4/app/ag;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/support/v4/app/ap;->a(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/af;->l:Landroid/support/v4/app/am;

    instance-of v2, v2, Landroid/support/v4/app/ad;

    if-eqz v2, :cond_1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/af;->l:Landroid/support/v4/app/am;

    move-object v7, v2

    check-cast v7, Landroid/support/v4/app/ad;

    iget-object v2, v7, Landroid/support/v4/app/ad;->d:Ljava/lang/CharSequence;

    iget-boolean v3, v7, Landroid/support/v4/app/ad;->f:Z

    iget-object v4, v7, Landroid/support/v4/app/ad;->e:Ljava/lang/CharSequence;

    iget-object v5, v7, Landroid/support/v4/app/ad;->a:Landroid/graphics/Bitmap;

    iget-object v6, v7, Landroid/support/v4/app/ad;->b:Landroid/graphics/Bitmap;

    iget-boolean v7, v7, Landroid/support/v4/app/ad;->c:Z

    invoke-virtual/range {v1 .. v7}, Landroid/support/v4/app/ap;->a(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    goto :goto_1
.end method
