.class public Lcom/estrongs/android/pop/utils/ao;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/estrongs/fs/h;)I
    .locals 4

    new-instance v1, Ljava/io/File;

    invoke-interface {p0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    const-string v2, "child_count"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Lcom/estrongs/fs/h;->putExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v2, p0, Lcom/estrongs/fs/impl/local/f;

    if-eqz v2, :cond_0

    check-cast p0, Lcom/estrongs/fs/impl/local/f;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/estrongs/fs/impl/local/f;->a(J)V

    :cond_0
    return v0

    :cond_1
    array-length v0, v0

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Lcom/estrongs/android/ui/pcs/q;)Lcom/estrongs/android/ui/dialog/cv;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/estrongs/android/pop/utils/ao;->a(Landroid/app/Activity;Lcom/estrongs/android/ui/pcs/q;Ljava/lang/String;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Lcom/estrongs/android/ui/pcs/q;Ljava/lang/String;)Lcom/estrongs/android/ui/dialog/cv;
    .locals 10

    const v9, 0x7f08060b

    const v8, 0x7f0804d5

    const v5, 0x7f08008f

    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/Boolean;

    const/4 v0, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v0

    new-instance v0, Lcom/estrongs/android/pop/utils/bh;

    invoke-direct {v0, p0, p1, v1}, Lcom/estrongs/android/pop/utils/bh;-><init>(Landroid/app/Activity;Lcom/estrongs/android/ui/pcs/q;[Ljava/lang/Boolean;)V

    new-instance v2, Lcom/estrongs/android/pop/utils/bi;

    invoke-direct {v2, p0, p1, v1}, Lcom/estrongs/android/pop/utils/bi;-><init>(Landroid/app/Activity;Lcom/estrongs/android/ui/pcs/q;[Ljava/lang/Boolean;)V

    new-instance v3, Lcom/estrongs/android/pop/utils/bj;

    invoke-direct {v3, p0, p1, v1}, Lcom/estrongs/android/pop/utils/bj;-><init>(Landroid/app/Activity;Lcom/estrongs/android/ui/pcs/q;[Ljava/lang/Boolean;)V

    if-nez p2, :cond_0

    const v4, 0x7f0801f5

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-static {p0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Lcom/estrongs/android/pop/ad;->a(J)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v4, Lcom/estrongs/android/ui/dialog/cv;

    invoke-direct {v4, p0}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, p2}, Lcom/estrongs/android/ui/dialog/cv;->a(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/estrongs/android/ui/dialog/cv;->b(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v4

    invoke-virtual {v4, v9, v2}, Lcom/estrongs/android/ui/dialog/cv;->d(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v2

    const v4, 0x7f0806d4

    invoke-virtual {v2, v4, v3}, Lcom/estrongs/android/ui/dialog/cv;->e(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v2

    invoke-virtual {v2, v5, v0}, Lcom/estrongs/android/ui/dialog/cv;->f(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    :goto_0
    new-instance v2, Lcom/estrongs/android/pop/utils/bk;

    invoke-direct {v2, v1, p0}, Lcom/estrongs/android/pop/utils/bk;-><init>([Ljava/lang/Boolean;Landroid/app/Activity;)V

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/dialog/cv;->a(Landroid/content/DialogInterface$OnDismissListener;)Lcom/estrongs/android/ui/dialog/cv;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cv;->c()Lcom/estrongs/android/ui/dialog/ci;

    return-object v0

    :cond_1
    new-instance v3, Lcom/estrongs/android/ui/dialog/cv;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, p2}, Lcom/estrongs/android/ui/dialog/cv;->a(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/estrongs/android/ui/dialog/cv;->b(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v3

    invoke-virtual {v3, v9, v2}, Lcom/estrongs/android/ui/dialog/cv;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v2

    invoke-virtual {v2, v5, v0}, Lcom/estrongs/android/ui/dialog/cv;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    goto :goto_0
.end method

.method private static a()Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/estrongs/android/pop/a;->k:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v0
.end method

.method public static a(Landroid/app/Activity;Lcom/estrongs/android/ui/pcs/u;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/estrongs/android/ui/pcs/u;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->ad()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const v0, 0x7f0804ad

    new-array v1, v4, [Ljava/lang/Object;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/dialog/dl;

    const v2, 0x7f0804ae

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/estrongs/android/ui/dialog/dl;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/estrongs/android/pop/utils/bf;

    invoke-direct {v0, p0, p1, p2}, Lcom/estrongs/android/pop/utils/bf;-><init>(Landroid/app/Activity;Lcom/estrongs/android/ui/pcs/u;Ljava/util/List;)V

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/dialog/dl;->a(Lcom/estrongs/android/ui/dialog/do;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/dl;->a()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/estrongs/android/ui/pcs/u;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/files"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/d;->m(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v1

    invoke-static {p0, p2, v1, v4}, Lcom/estrongs/android/pop/utils/ao;->a(Landroid/app/Activity;Ljava/util/List;Lcom/estrongs/fs/h;Z)V

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/fs/a/b;->h(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->ce(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/fs/a/b;->h(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    new-instance v2, Lcom/estrongs/fs/z;

    invoke-direct {v2, v0, v3}, Lcom/estrongs/fs/z;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Lcom/estrongs/fs/a/b;->a(Lcom/estrongs/fs/h;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Lcom/estrongs/fs/h;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    instance-of v1, p0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v1, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->P()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bg(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f080163

    invoke-static {p0, v0, v4}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/estrongs/android/ui/dialog/er;

    const v2, 0x7f0800a1

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/estrongs/android/ui/dialog/er;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/estrongs/android/pop/utils/ap;

    invoke-direct {v2, p1, p0, v0}, Lcom/estrongs/android/pop/utils/ap;-><init>(Lcom/estrongs/fs/h;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/dialog/er;->a(Lcom/estrongs/android/ui/dialog/eu;)V

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/w;->b()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/dialog/er;->b(Z)V

    invoke-virtual {v1, v4}, Lcom/estrongs/android/ui/dialog/er;->a(Z)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/er;->show()V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/estrongs/android/pop/utils/ao;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 3

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->cd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/ui/pcs/u;->a()Lcom/estrongs/android/ui/pcs/u;

    move-result-object v1

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aL(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/estrongs/android/ui/pcs/u;->b()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v1, Lcom/estrongs/android/ui/dialog/ca;

    invoke-direct {v1, p0, v0, p2}, Lcom/estrongs/android/ui/dialog/ca;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/ca;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/util/ap;->bm(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/util/ap;->v(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/estrongs/fs/impl/o/b;->o(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/util/ap;->aL(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/estrongs/android/ui/pcs/u;->a()Lcom/estrongs/android/ui/pcs/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/ui/pcs/u;->b()Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Lcom/estrongs/android/pop/utils/bb;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/estrongs/android/pop/utils/bb;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    const-string v3, "\u4e34\u65f6\u7528\u6237"

    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/util/ap;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static/range {p0 .. p0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/estrongs/android/pop/ad;->a(J)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    new-instance v3, Lcom/estrongs/android/ui/pcs/c;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/estrongs/android/ui/pcs/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Lcom/estrongs/android/ui/pcs/c;->a(Lcom/estrongs/android/ui/pcs/q;)V

    invoke-virtual {v3}, Lcom/estrongs/android/ui/pcs/c;->a()V

    goto :goto_0

    :cond_3
    new-instance v3, Lcom/estrongs/android/ui/pcs/l;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/estrongs/android/ui/pcs/l;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Lcom/estrongs/android/ui/pcs/l;->a(Lcom/estrongs/android/ui/pcs/q;)V

    invoke-virtual {v3}, Lcom/estrongs/android/ui/pcs/l;->show()V

    goto :goto_0

    :cond_4
    invoke-static/range {p0 .. p1}, Lcom/estrongs/android/pop/utils/ao;->b(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-static/range {p0 .. p0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v3

    :try_start_0
    invoke-interface {v3}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "[@\\/:*?\"<>|()\u3000 ]"

    const-string v5, "_"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {v2}, Lcom/estrongs/fs/util/j;->f(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_6
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd_HHmmss_SSS"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "download_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/util/ap;->aQ(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v3}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/estrongs/android/pop/spfs/PhotoInfoManager;->getPhotoExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_8
    invoke-static/range {p2 .. p2}, Lcom/estrongs/android/util/bk;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    move-object/from16 v0, p2

    invoke-static {v2, v0}, Lcom/estrongs/android/util/ap;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/estrongs/fs/h;->setName(Ljava/lang/String;)V

    :cond_9
    const-string v4, "item_paste_name"

    invoke-interface {v3, v4, v2}, Lcom/estrongs/fs/h;->putExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/estrongs/android/pop/spfs/PhotoInfoException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static/range {p0 .. p0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v2

    invoke-static {}, Lcom/estrongs/android/pop/utils/ao;->a()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v2

    new-instance v4, Lcom/estrongs/fs/b/r;

    invoke-static/range {p0 .. p0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v5

    invoke-direct {v4, v5, v3, v2}, Lcom/estrongs/fs/b/r;-><init>(Lcom/estrongs/fs/d;Lcom/estrongs/fs/h;Lcom/estrongs/fs/h;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/estrongs/fs/b/r;->c(Z)V

    iget-object v5, v4, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/estrongs/a/a/m;->k:Z

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/estrongs/fs/b/r;->b(Z)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/estrongs/fs/b/r;->setCanHide(Z)V

    const v5, 0x7f080236

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/estrongs/android/util/ap;->cc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/estrongs/fs/b/r;->setDescription(Ljava/lang/String;)V

    new-instance v5, Lcom/estrongs/android/pop/utils/bc;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v2, v3}, Lcom/estrongs/android/pop/utils/bc;-><init>(Landroid/app/Activity;Lcom/estrongs/fs/h;Lcom/estrongs/fs/h;)V

    invoke-virtual {v4, v5}, Lcom/estrongs/fs/b/r;->addTaskStatusChangeListener(Lcom/estrongs/a/a/p;)V

    new-instance v2, Lcom/estrongs/android/pop/utils/bd;

    const v3, 0x7f0805ad

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/estrongs/android/pop/utils/bd;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;Z)V

    const v3, 0x7f080505

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Lcom/estrongs/android/pop/utils/bd;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/ui/dialog/jh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/ui/dialog/jh;->show()V

    invoke-virtual {v4}, Lcom/estrongs/fs/b/r;->execute()V

    goto/16 :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;->printStackTrace()V

    goto :goto_1

    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/util/ap;->bV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v13, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    invoke-static {v12}, Lcom/estrongs/fs/util/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v11, 0x0

    const/4 v2, 0x0

    invoke-static {v14}, Lcom/estrongs/android/pop/utils/ao;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2a

    invoke-static {v12}, Lcom/estrongs/android/util/bg;->b(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/estrongs/android/util/bg;->H(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_29

    invoke-static {v12}, Lcom/estrongs/android/util/bg;->U(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_29

    const-string v3, "*/*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    const/4 v2, 0x0

    move-object v8, v2

    :goto_2
    const/4 v9, 0x0

    const/4 v2, 0x1

    :try_start_1
    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const-string v5, "_data=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v12, v6, v2

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_28

    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_28

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    move-result-object v4

    if-eqz v8, :cond_11

    :try_start_3
    const-string v2, "image/"

    invoke-virtual {v8, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_d
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    move-result v2

    if-eqz v2, :cond_11

    move-object v11, v8

    :goto_3
    if-eqz v3, :cond_27

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move-object v10, v4

    :goto_4
    if-nez v11, :cond_c

    const/4 v9, 0x0

    const/4 v2, 0x1

    :try_start_4
    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const-string v5, "_data=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v12, v6, v2

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v3

    if-eqz v3, :cond_b

    :try_start_5
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_b

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_a
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    move-result-object v4

    if-eqz v8, :cond_13

    :try_start_6
    const-string v2, "audio/"

    invoke-virtual {v8, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    move-result v2

    if-eqz v2, :cond_13

    move-object v11, v8

    move-object v10, v4

    :cond_b
    :goto_5
    if-eqz v3, :cond_c

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_c
    :goto_6
    if-nez v11, :cond_25

    const/4 v9, 0x0

    const/4 v2, 0x1

    :try_start_7
    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const-string v5, "_data=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v12, v6, v2

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v3

    if-eqz v3, :cond_24

    :try_start_8
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_24

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    sget-object v4, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move-result-object v4

    if-eqz v8, :cond_17

    :try_start_9
    const-string v2, "video/"

    invoke-virtual {v8, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    move-result v2

    if-eqz v2, :cond_17

    move-object v10, v8

    :goto_7
    if-eqz v3, :cond_23

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move-object v11, v4

    :goto_8
    if-nez v10, :cond_21

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v2

    const/16 v3, 0xb

    if-lt v2, v3, :cond_21

    const/4 v9, 0x0

    const/4 v2, 0x2

    :try_start_a
    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "mime_type"

    aput-object v3, v4, v2

    const-string v5, "_data=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v12, v6, v2

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "external"

    invoke-static {v3}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-result-object v3

    if-eqz v3, :cond_20

    :try_start_b
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_20

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    const/4 v2, 0x1

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    move-result-object v4

    :try_start_c
    const-string v2, "external"

    invoke-static {v2}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :goto_9
    if-eqz v3, :cond_1f

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move-object v2, v4

    :goto_a
    if-nez v2, :cond_d

    move-object v2, v8

    :cond_d
    if-nez v2, :cond_e

    invoke-static {v12}, Lcom/estrongs/android/pop/utils/ao;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_e
    if-eqz v2, :cond_f

    invoke-virtual {v13, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :cond_f
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v13, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v13, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1e

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_1e

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v6, "bluetooth"

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_1a

    const/4 v2, 0x1

    :goto_c
    if-nez v2, :cond_10

    invoke-virtual {v13}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_10

    const-string v3, "image/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const-string v2, "image/*"

    invoke-virtual {v13, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :cond_10
    :goto_d
    const v2, 0x7f0800ad

    :try_start_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_d .. :try_end_d} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :cond_11
    :try_start_e
    const-string v11, "image/*"
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_d
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    goto/16 :goto_3

    :catch_2
    move-exception v2

    move-object v3, v9

    move-object v4, v10

    :goto_e
    :try_start_f
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    if-eqz v3, :cond_27

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move-object v10, v4

    goto/16 :goto_4

    :catchall_0
    move-exception v2

    move-object v3, v9

    :goto_f
    if-eqz v3, :cond_12

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_12
    throw v2

    :cond_13
    :try_start_10
    const-string v2, "3gpp"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v11, "audio/3gpp"

    move-object v10, v4

    goto/16 :goto_5

    :cond_14
    const-string v2, "3gp"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v11, "audio/3gp"

    move-object v10, v4

    goto/16 :goto_5

    :cond_15
    const-string v11, "audio/*"
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_b
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    move-object v10, v4

    goto/16 :goto_5

    :catch_3
    move-exception v2

    move-object v3, v9

    move-object v4, v10

    :goto_10
    :try_start_11
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    if-eqz v3, :cond_26

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move-object v10, v4

    goto/16 :goto_6

    :catchall_1
    move-exception v2

    move-object v3, v9

    :goto_11
    if-eqz v3, :cond_16

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_16
    throw v2

    :cond_17
    :try_start_12
    const-string v11, "video/*"
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    move-object v10, v11

    goto/16 :goto_7

    :catch_4
    move-exception v2

    move-object v3, v9

    move-object v4, v10

    :goto_12
    :try_start_13
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    if-eqz v3, :cond_22

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move-object v10, v11

    move-object v11, v4

    goto/16 :goto_8

    :catchall_2
    move-exception v2

    move-object v3, v9

    :goto_13
    if-eqz v3, :cond_18

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_18
    throw v2

    :catch_5
    move-exception v2

    move-object v3, v9

    move-object v4, v10

    :goto_14
    :try_start_14
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    if-eqz v3, :cond_1f

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move-object v2, v4

    goto/16 :goto_a

    :catchall_3
    move-exception v2

    :goto_15
    if-eqz v9, :cond_19

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_19
    throw v2

    :cond_1a
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_b

    :cond_1b
    const-string v3, "audio/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    const-string v2, "audio/*"

    invoke-virtual {v13, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_d

    :cond_1c
    const-string v3, "video/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const-string v2, "video/*"

    invoke-virtual {v13, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_d

    :cond_1d
    const-string v2, "application/*"

    invoke-virtual {v13, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_d

    :catchall_4
    move-exception v2

    move-object v9, v3

    goto :goto_15

    :catch_6
    move-exception v2

    move-object v4, v10

    goto :goto_14

    :catch_7
    move-exception v2

    goto :goto_14

    :catchall_5
    move-exception v2

    goto :goto_13

    :catch_8
    move-exception v2

    move-object v4, v10

    goto :goto_12

    :catch_9
    move-exception v2

    goto :goto_12

    :catchall_6
    move-exception v2

    goto :goto_11

    :catch_a
    move-exception v2

    move-object v4, v10

    goto/16 :goto_10

    :catch_b
    move-exception v2

    goto/16 :goto_10

    :catchall_7
    move-exception v2

    goto/16 :goto_f

    :catch_c
    move-exception v2

    move-object v4, v10

    goto/16 :goto_e

    :catch_d
    move-exception v2

    goto/16 :goto_e

    :cond_1e
    move v2, v4

    goto/16 :goto_c

    :cond_1f
    move-object v2, v4

    goto/16 :goto_a

    :cond_20
    move-object v4, v10

    goto/16 :goto_9

    :cond_21
    move-object v2, v10

    goto/16 :goto_a

    :cond_22
    move-object v10, v11

    move-object v11, v4

    goto/16 :goto_8

    :cond_23
    move-object v11, v4

    goto/16 :goto_8

    :cond_24
    move-object v4, v10

    move-object v10, v11

    goto/16 :goto_7

    :cond_25
    move-object v15, v11

    move-object v11, v10

    move-object v10, v15

    goto/16 :goto_8

    :cond_26
    move-object v10, v4

    goto/16 :goto_6

    :cond_27
    move-object v10, v4

    goto/16 :goto_4

    :cond_28
    move-object v4, v10

    goto/16 :goto_3

    :cond_29
    move-object v8, v2

    goto/16 :goto_2

    :cond_2a
    move-object v8, v2

    goto/16 :goto_2
.end method

.method public static a(Landroid/app/Activity;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/estrongs/android/ui/pcs/u;->a()Lcom/estrongs/android/ui/pcs/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/ui/pcs/u;->a()Lcom/estrongs/android/ui/pcs/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/u;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/estrongs/android/pop/utils/ao;->a(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "pcs://%1s@pcs/files/"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/estrongs/android/ui/pcs/u;->a()Lcom/estrongs/android/ui/pcs/u;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/android/ui/pcs/u;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/widget/f;

    new-instance v2, Lcom/estrongs/android/pop/utils/av;

    invoke-direct {v2}, Lcom/estrongs/android/pop/utils/av;-><init>()V

    const/16 v3, 0x10

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/estrongs/android/widget/f;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/fs/i;I)V

    const v0, 0x7f080226

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/estrongs/android/pop/utils/aw;

    invoke-direct {v2, p0, p1, v1}, Lcom/estrongs/android/pop/utils/aw;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/estrongs/android/widget/f;)V

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/widget/f;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const v0, 0x7f080221

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/widget/f;->c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const v0, 0x7f080152

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/widget/f;->a(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/estrongs/android/widget/f;->j()V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Ljava/util/List;Lcom/estrongs/fs/h;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;",
            "Lcom/estrongs/fs/h;",
            "Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/estrongs/android/pop/utils/ao;->a(Landroid/app/Activity;Ljava/util/List;Lcom/estrongs/fs/h;ZZ)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/util/List;Lcom/estrongs/fs/h;ZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;",
            "Lcom/estrongs/fs/h;",
            "ZZ)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/estrongs/android/pop/utils/ao;->a(Landroid/app/Activity;Ljava/util/List;Lcom/estrongs/fs/h;ZZLcom/estrongs/a/a/p;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/util/List;Lcom/estrongs/fs/h;ZZLcom/estrongs/a/a/p;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;",
            "Lcom/estrongs/fs/h;",
            "ZZ",
            "Lcom/estrongs/a/a/p;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz p3, :cond_4

    invoke-interface {p2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->ci(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->ci(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aL(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const v0, 0x7f0804aa

    invoke-static {p0, v0, v4}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    :goto_0
    return-void

    :cond_1
    new-instance v2, Lcom/estrongs/fs/b/r;

    invoke-static {p0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v0

    invoke-direct {v2, v0, p1, p2}, Lcom/estrongs/fs/b/r;-><init>(Lcom/estrongs/fs/d;Ljava/util/List;Lcom/estrongs/fs/h;)V

    invoke-virtual {v2, p4}, Lcom/estrongs/fs/b/r;->b(Z)V

    const v0, 0x7f080236

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-interface {p2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/util/ap;->cc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/estrongs/fs/b/r;->setDescription(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lcom/estrongs/fs/b/r;->a(Z)V

    if-eqz p5, :cond_2

    invoke-virtual {v2, p5}, Lcom/estrongs/fs/b/r;->addTaskStatusChangeListener(Lcom/estrongs/a/a/p;)V

    :cond_2
    instance-of v0, p0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/utils/bo;

    invoke-direct {v1, v0, p2, p0}, Lcom/estrongs/android/pop/utils/bo;-><init>(Lcom/estrongs/android/view/cr;Lcom/estrongs/fs/h;Landroid/app/Activity;)V

    invoke-virtual {v2, v1}, Lcom/estrongs/fs/b/r;->addTaskStatusChangeListener(Lcom/estrongs/a/a/p;)V

    new-instance v0, Lcom/estrongs/android/pop/utils/bq;

    invoke-direct {v0}, Lcom/estrongs/android/pop/utils/bq;-><init>()V

    invoke-virtual {v2, v0}, Lcom/estrongs/fs/b/r;->addPostListener(Lcom/estrongs/a/a/o;)V

    :cond_3
    const v0, 0x7f0805ad

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->ci(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const v0, 0x7f080152

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v1, Lcom/estrongs/android/ui/dialog/jh;

    invoke-direct {v1, p0, v0, v2}, Lcom/estrongs/android/ui/dialog/jh;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/jh;->show()V

    invoke-virtual {v2}, Lcom/estrongs/fs/b/r;->execute()V

    goto :goto_0

    :cond_4
    invoke-interface {p2}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aJ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/estrongs/android/ui/pcs/u;->a()Lcom/estrongs/android/ui/pcs/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/u;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0, p1, p2, p4}, Lcom/estrongs/android/pop/utils/ao;->c(Landroid/app/Activity;Ljava/util/List;Lcom/estrongs/fs/h;Z)V

    goto/16 :goto_0

    :cond_5
    new-instance v0, Lcom/estrongs/android/pop/utils/br;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/estrongs/android/pop/utils/br;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/estrongs/fs/h;Z)V

    invoke-static {p0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/pop/ad;->a(J)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Lcom/estrongs/android/ui/pcs/c;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/pcs/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/pcs/c;->a(Lcom/estrongs/android/ui/pcs/q;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/pcs/c;->a()V

    goto/16 :goto_0

    :cond_6
    new-instance v1, Lcom/estrongs/android/ui/pcs/l;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/pcs/l;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/pcs/l;->a(Lcom/estrongs/android/ui/pcs/q;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/pcs/l;->show()V

    goto/16 :goto_0

    :cond_7
    invoke-static {p0, p1, p2, p4}, Lcom/estrongs/android/pop/utils/ao;->c(Landroid/app/Activity;Ljava/util/List;Lcom/estrongs/fs/h;Z)V

    goto/16 :goto_0

    :cond_8
    move-object v0, v1

    goto :goto_1
.end method

.method public static a(Landroid/app/Activity;Ljava/util/List;Lcom/estrongs/fs/h;ZZLcom/estrongs/a/a/p;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;",
            "Lcom/estrongs/fs/h;",
            "ZZ",
            "Lcom/estrongs/a/a/p;",
            "Z)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p6, :cond_2

    new-instance v7, Lcom/estrongs/android/ui/dialog/cx;

    invoke-direct {v7, p0, p1, p2, p3}, Lcom/estrongs/android/ui/dialog/cx;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/estrongs/fs/h;Z)V

    const v0, 0x7f080226

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/estrongs/android/pop/utils/bm;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/pop/utils/bm;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/estrongs/fs/h;ZZLcom/estrongs/a/a/p;)V

    invoke-virtual {v7, v8, v0}, Lcom/estrongs/android/ui/dialog/ci;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    const v0, 0x7f080221

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/utils/bn;

    invoke-direct {v1}, Lcom/estrongs/android/pop/utils/bn;-><init>()V

    invoke-virtual {v7, v0, v1}, Lcom/estrongs/android/ui/dialog/ci;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    invoke-virtual {v7}, Lcom/estrongs/android/ui/dialog/ci;->show()V

    goto :goto_0

    :cond_2
    invoke-static/range {p0 .. p5}, Lcom/estrongs/android/pop/utils/ao;->a(Landroid/app/Activity;Ljava/util/List;Lcom/estrongs/fs/h;ZZLcom/estrongs/a/a/p;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;Z)V"
        }
    .end annotation

    new-instance v1, Lcom/estrongs/fs/b/y;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/fs/b/y;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    const v0, 0x7f08007b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/fs/b/y;->setDescription(Ljava/lang/String;)V

    instance-of v0, p0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/estrongs/android/view/bx;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/estrongs/android/view/bx;

    invoke-virtual {v0}, Lcom/estrongs/android/view/bx;->t()Lcom/estrongs/a/a/p;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/view/bx;->t()Lcom/estrongs/a/a/p;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/fs/b/y;->addTaskStatusChangeListener(Lcom/estrongs/a/a/p;)V

    :cond_0
    if-eqz p2, :cond_1

    new-instance v0, Lcom/estrongs/android/pop/utils/bg;

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/pop/utils/bg;-><init>(Landroid/app/Activity;Lcom/estrongs/fs/b/y;)V

    invoke-virtual {v1, v0}, Lcom/estrongs/fs/b/y;->addTaskStatusChangeListener(Lcom/estrongs/a/a/p;)V

    :cond_1
    new-instance v0, Lcom/estrongs/android/ui/dialog/jh;

    const v2, 0x7f0805b0

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v2, v1}, Lcom/estrongs/android/ui/dialog/jh;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/jh;->show()V

    invoke-virtual {v1}, Lcom/estrongs/fs/b/y;->execute()V

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "function"

    const-string v2, "decrypt_dialog_show"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/estrongs/android/ui/dialog/cv;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080152

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->a(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v1, 0x7f080151

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->b(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v1, 0x7f080229

    new-instance v2, Lcom/estrongs/android/pop/utils/ay;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/utils/ay;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v1, 0x7f080225

    new-instance v2, Lcom/estrongs/android/pop/utils/ax;

    invoke-direct {v2}, Lcom/estrongs/android/pop/utils/ax;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cv;->c()Lcom/estrongs/android/ui/dialog/ci;

    return-void
.end method

.method public static a(Lcom/estrongs/android/pop/app/d/a;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/pop/app/d/a;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    instance-of v1, p0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v1, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->P()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bg(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lcom/estrongs/android/pop/app/d/a;->n()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080163

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/estrongs/android/ui/dialog/ar;

    invoke-direct {v1, p0, p1, v0}, Lcom/estrongs/android/ui/dialog/ar;-><init>(Lcom/estrongs/android/pop/app/d/a;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/ar;->a()V

    goto :goto_0
.end method

.method public static a(Lcom/estrongs/android/pop/app/d/a;Ljava/util/List;Lcom/estrongs/fs/h;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/pop/app/d/a;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;",
            "Lcom/estrongs/fs/h;",
            "Z)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->aQ(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/w;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    :try_start_0
    invoke-interface {p0}, Lcom/estrongs/android/pop/app/d/a;->n()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v1

    const/4 v4, 0x0

    new-instance v5, Lcom/estrongs/android/pop/utils/bu;

    invoke-direct {v5}, Lcom/estrongs/android/pop/utils/bu;-><init>()V

    invoke-virtual {v1, v0, v4, v5}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/fs/h;ZLcom/estrongs/fs/i;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;
    :try_end_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {v0}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v6, "[@\\/:*?\"<>|()\u3000 ]"

    const-string v7, "_"

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v6, ""

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v1}, Lcom/estrongs/fs/util/j;->f(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyyMMdd_HHmmss_SSS"

    invoke-direct {v1, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "download_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    const-string v6, "item_paste_name"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/estrongs/android/pop/spfs/PhotoInfoManager;->getPhotoExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Lcom/estrongs/fs/h;->putExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/estrongs/android/pop/spfs/PhotoInfoException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;->printStackTrace()V
    :try_end_2
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/fs/FileSystemException;->printStackTrace()V

    goto/16 :goto_1

    :cond_3
    :try_start_3
    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_3
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    :cond_4
    :try_start_4
    invoke-interface {v0}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "[@\\/:*?\"<>|()\u3000 ]"

    const-string v5, "_"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v1}, Lcom/estrongs/fs/util/j;->f(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd_HHmmss_SSS"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "download_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_6
    const-string v4, "item_paste_name"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/estrongs/android/pop/spfs/PhotoInfoManager;->getPhotoExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/estrongs/fs/h;->putExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Lcom/estrongs/android/pop/spfs/PhotoInfoException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_3
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;->printStackTrace()V

    goto :goto_3

    :cond_7
    invoke-interface {v0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/w;->a()Z

    move-result v1

    if-eqz v1, :cond_8

    :try_start_5
    invoke-interface {p0}, Lcom/estrongs/android/pop/app/d/a;->n()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v1

    const/4 v4, 0x0

    new-instance v5, Lcom/estrongs/android/pop/utils/au;

    invoke-direct {v5}, Lcom/estrongs/android/pop/utils/au;-><init>()V

    invoke-virtual {v1, v0, v4, v5}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/fs/h;ZLcom/estrongs/fs/i;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_5
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/fs/FileSystemException;->printStackTrace()V

    goto/16 :goto_1

    :cond_8
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_9
    invoke-interface {p0}, Lcom/estrongs/android/pop/app/d/a;->G()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v2, p2, p3}, Lcom/estrongs/android/pop/utils/ao;->a(Landroid/app/Activity;Ljava/util/List;Lcom/estrongs/fs/h;Z)V

    goto/16 :goto_0
.end method

.method public static a(Lcom/estrongs/android/pop/app/d/a;Ljava/util/List;ZZLcom/estrongs/a/a/p;ZZZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/pop/app/d/a;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;ZZ",
            "Lcom/estrongs/a/a/p;",
            "ZZZ)V"
        }
    .end annotation

    new-instance v0, Lcom/estrongs/android/pop/utils/bv;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/utils/bv;-><init>(Lcom/estrongs/android/pop/utils/ap;)V

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lcom/estrongs/android/pop/utils/bv;->a(Lcom/estrongs/android/pop/utils/bv;Lcom/estrongs/android/pop/app/d/a;Ljava/util/List;ZZLcom/estrongs/a/a/p;ZZZ)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/estrongs/fs/h;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    if-eqz p2, :cond_3

    invoke-static {p3}, Lcom/estrongs/android/util/ap;->br(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0, v4, p2}, Lcom/estrongs/android/pop/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/estrongs/fs/h;->setName(Ljava/lang/String;)V

    move v0, v7

    :goto_0
    return v0

    :cond_0
    new-array v5, v7, [Z

    new-instance v0, Lcom/estrongs/android/pop/utils/be;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/pop/utils/be;-><init>(Landroid/app/Activity;Lcom/estrongs/fs/h;Ljava/lang/String;Ljava/lang/String;[ZZ)V

    if-eqz p4, :cond_2

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-static {p3}, Lcom/estrongs/android/util/ap;->bm(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f080613

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    aput-object p2, v1, v7

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/estrongs/android/pop/utils/a;->a(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    :cond_1
    move v0, v7

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    aget-boolean v0, v5, v8

    goto :goto_0

    :cond_3
    move v0, v8

    goto :goto_0
.end method

.method public static a(Lcom/estrongs/android/pop/app/d/a;Ljava/util/List;Lcom/estrongs/a/a/p;Lcom/estrongs/android/pop/utils/ck;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/pop/app/d/a;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;",
            "Lcom/estrongs/a/a/p;",
            "Lcom/estrongs/android/pop/utils/ck;",
            ")Z"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Lcom/estrongs/android/pop/utils/bv;

    invoke-direct {v0, v3}, Lcom/estrongs/android/pop/utils/bv;-><init>(Lcom/estrongs/android/pop/utils/ap;)V

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/estrongs/android/pop/utils/bv;->a(Lcom/estrongs/android/pop/app/d/a;Ljava/util/List;Lcom/estrongs/android/view/cr;Lcom/estrongs/a/a/p;Lcom/estrongs/android/pop/utils/ck;)Z

    move-result v0

    return v0
.end method

.method public static a(Lcom/estrongs/android/pop/app/d/a;Ljava/util/List;Lcom/estrongs/android/view/cr;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/pop/app/d/a;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;",
            "Lcom/estrongs/android/view/cr;",
            ")Z"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v0, Lcom/estrongs/android/pop/utils/bv;

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/utils/bv;-><init>(Lcom/estrongs/android/pop/utils/ap;)V

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/estrongs/android/pop/utils/bv;->a(Lcom/estrongs/android/pop/app/d/a;Ljava/util/List;Lcom/estrongs/android/view/cr;Lcom/estrongs/a/a/p;)Z

    move-result v0

    return v0
.end method

.method public static a(Lcom/estrongs/android/pop/app/d/a;Ljava/util/List;Lcom/estrongs/android/view/cr;Lcom/estrongs/a/a/p;ILjava/lang/String;Z)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/pop/app/d/a;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;",
            "Lcom/estrongs/android/view/cr;",
            "Lcom/estrongs/a/a/p;",
            "I",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    const/4 v5, 0x0

    new-instance v0, Lcom/estrongs/android/pop/utils/bv;

    invoke-direct {v0, v5}, Lcom/estrongs/android/pop/utils/bv;-><init>(Lcom/estrongs/android/pop/utils/ap;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    move-object v7, p5

    move v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/estrongs/android/pop/utils/bv;->a(Lcom/estrongs/android/pop/app/d/a;Ljava/util/List;Lcom/estrongs/android/view/cr;Lcom/estrongs/a/a/p;Lcom/estrongs/android/pop/utils/ck;ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 7

    const/16 v6, 0xb

    const/16 v5, 0x9

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v2

    if-lt v2, v6, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v2

    if-ge v2, v5, :cond_0

    const/16 v2, 0x1f

    new-array v3, v2, [Ljava/lang/String;

    const-string v2, "apk"

    aput-object v2, v3, v1

    const-string v2, "xml"

    aput-object v2, v3, v0

    const/4 v2, 0x2

    const-string v4, "rss"

    aput-object v4, v3, v2

    const/4 v2, 0x3

    const-string v4, "c"

    aput-object v4, v3, v2

    const/4 v2, 0x4

    const-string v4, "java"

    aput-object v4, v3, v2

    const/4 v2, 0x5

    const-string v4, "h"

    aput-object v4, v3, v2

    const/4 v2, 0x6

    const-string v4, "docx"

    aput-object v4, v3, v2

    const/4 v2, 0x7

    const-string v4, "xlsx"

    aput-object v4, v3, v2

    const/16 v2, 0x8

    const-string v4, "bat"

    aput-object v4, v3, v2

    const-string v2, "exe"

    aput-object v2, v3, v5

    const/16 v2, 0xa

    const-string v4, "dll"

    aput-object v4, v3, v2

    const-string v2, "lib"

    aput-object v2, v3, v6

    const/16 v2, 0xc

    const-string v4, "pptx"

    aput-object v4, v3, v2

    const/16 v2, 0xd

    const-string v4, "chm"

    aput-object v4, v3, v2

    const/16 v2, 0xe

    const-string v4, "esj"

    aput-object v4, v3, v2

    const/16 v2, 0xf

    const-string v4, "epub"

    aput-object v4, v3, v2

    const/16 v2, 0x10

    const-string v4, "tar"

    aput-object v4, v3, v2

    const/16 v2, 0x11

    const-string v4, "rar"

    aput-object v4, v3, v2

    const/16 v2, 0x12

    const-string v4, "odt"

    aput-object v4, v3, v2

    const/16 v2, 0x13

    const-string v4, "pgn"

    aput-object v4, v3, v2

    const/16 v2, 0x14

    const-string v4, "xqf"

    aput-object v4, v3, v2

    const/16 v2, 0x15

    const-string v4, "gzip"

    aput-object v4, v3, v2

    const/16 v2, 0x16

    const-string v4, "torrent"

    aput-object v4, v3, v2

    const/16 v2, 0x17

    const-string v4, "mobi"

    aput-object v4, v3, v2

    const/16 v2, 0x18

    const-string v4, "prc"

    aput-object v4, v3, v2

    const/16 v2, 0x19

    const-string v4, "vcf"

    aput-object v4, v3, v2

    const/16 v2, 0x1a

    const-string v4, "ics"

    aput-object v4, v3, v2

    const/16 v2, 0x1b

    const-string v4, "ical"

    aput-object v4, v3, v2

    const/16 v2, 0x1c

    const-string v4, "icalendar"

    aput-object v4, v3, v2

    const/16 v2, 0x1d

    const-string v4, "nzb"

    aput-object v4, v3, v2

    const/16 v2, 0x1e

    const-string v4, "umd"

    aput-object v4, v3, v2

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2

    invoke-virtual {p0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static a(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/bg;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method static synthetic b(Lcom/estrongs/fs/h;)I
    .locals 1

    invoke-static {p0}, Lcom/estrongs/android/pop/utils/ao;->c(Lcom/estrongs/fs/h;)I

    move-result v0

    return v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/estrongs/fs/util/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/ao;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "application/*"

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/estrongs/android/util/bg;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/estrongs/android/util/bg;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "image/*"

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/estrongs/android/util/bg;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "audio/*"

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/estrongs/android/util/bg;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "video/*"

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcom/estrongs/android/util/bg;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "text/plain"

    goto :goto_0

    :cond_5
    invoke-static {p0}, Lcom/estrongs/android/util/bg;->F(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "text/html"

    goto :goto_0

    :cond_6
    invoke-static {p0}, Lcom/estrongs/android/util/bg;->H(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "text/xml"

    goto :goto_0

    :cond_7
    invoke-static {p0}, Lcom/estrongs/android/util/bg;->C(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "application/msword"

    goto :goto_0

    :cond_8
    invoke-static {p0}, Lcom/estrongs/android/util/bg;->D(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "application/vnd.ms-excel"

    goto :goto_0

    :cond_9
    invoke-static {p0}, Lcom/estrongs/android/util/bg;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "application/vnd.ms-powerpoint"

    goto :goto_0

    :cond_a
    invoke-static {p0}, Lcom/estrongs/android/util/bg;->E(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "application/x-chm"

    goto :goto_0

    :cond_b
    invoke-static {p0}, Lcom/estrongs/android/util/bg;->q(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "application/pdf"

    goto :goto_0

    :cond_c
    invoke-static {p0}, Lcom/estrongs/android/util/bg;->s(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "application/epub+zip"

    goto :goto_0

    :cond_d
    invoke-static {p0}, Lcom/estrongs/android/util/bg;->t(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "application/x-mobipocket-ebook"

    goto :goto_0

    :cond_e
    invoke-static {p0}, Lcom/estrongs/android/util/bg;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "application/x-rar-compressed"

    goto/16 :goto_0

    :cond_f
    invoke-static {p0}, Lcom/estrongs/android/util/bg;->r(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "application/esj"

    goto/16 :goto_0

    :cond_10
    invoke-static {p0}, Lcom/estrongs/android/util/bg;->J(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "audio/vnd.qcelp"

    goto/16 :goto_0

    :cond_11
    invoke-static {p0}, Lcom/estrongs/android/util/bg;->u(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "application/x-bittorrent"

    goto/16 :goto_0

    :cond_12
    invoke-static {p0}, Lcom/estrongs/android/util/bg;->z(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "application/x-chess-pgn"

    goto/16 :goto_0

    :cond_13
    invoke-static {p0}, Lcom/estrongs/android/util/bg;->B(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "application/vnd.oasis.opendocument.text"

    goto/16 :goto_0

    :cond_14
    invoke-static {p0}, Lcom/estrongs/android/util/bg;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "application/x-shockwave-flash"

    goto/16 :goto_0

    :cond_15
    invoke-static {p0}, Lcom/estrongs/android/util/bg;->A(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "application/x-nzb"

    goto/16 :goto_0

    :cond_16
    invoke-static {p0}, Lcom/estrongs/android/util/bg;->I(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "text/calendar"

    goto/16 :goto_0

    :cond_17
    invoke-static {p0}, Lcom/estrongs/android/util/bg;->v(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "application/umd"

    goto/16 :goto_0

    :cond_18
    invoke-static {p0}, Lcom/estrongs/android/util/bg;->w(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "application/x-plucker"

    goto/16 :goto_0

    :cond_19
    invoke-static {p0}, Lcom/estrongs/android/util/bg;->x(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {p0}, Lcom/estrongs/android/util/bg;->y(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_1a
    const-string v0, "application/x-expandedbook"

    goto/16 :goto_0

    :cond_1b
    const-string v0, "text/*"

    goto/16 :goto_0
.end method

.method public static b(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->cd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/estrongs/android/pop/utils/ao;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public static b(Landroid/app/Activity;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v9, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bm(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aQ(Ljava/lang/String;)Z

    move-result v2

    if-eqz v1, :cond_6

    invoke-static {p0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/pop/utils/ao;->a()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v6

    :try_start_0
    invoke-interface {v6}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v7, "[@\\/:*?\"<>|()\u3000 ]"

    const-string v8, "_"

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v7, ""

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v0}, Lcom/estrongs/fs/util/j;->f(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    :cond_2
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyyMMdd_HHmmss_SSS"

    invoke-direct {v0, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "download_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    if-eqz v2, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v6}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/estrongs/android/pop/spfs/PhotoInfoManager;->getPhotoExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    const-string v7, "item_paste_name"

    invoke-interface {v6, v7, v0}, Lcom/estrongs/fs/h;->putExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/io/File;

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/estrongs/android/pop/spfs/PhotoInfoException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;->printStackTrace()V

    goto/16 :goto_1

    :cond_5
    new-instance v0, Lcom/estrongs/fs/b/r;

    invoke-static {p0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v2

    invoke-direct {v0, v2, v3, v1}, Lcom/estrongs/fs/b/r;-><init>(Lcom/estrongs/fs/d;Ljava/util/List;Lcom/estrongs/fs/h;)V

    iget-object v2, v0, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    iput-boolean v9, v2, Lcom/estrongs/a/a/m;->k:Z

    invoke-virtual {v0, v9}, Lcom/estrongs/fs/b/r;->b(Z)V

    invoke-virtual {v0, v9}, Lcom/estrongs/fs/b/r;->setCanHide(Z)V

    const v2, 0x7f080236

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->cc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v9

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/b/r;->setDescription(Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/utils/ba;

    invoke-direct {v1, p0, v4}, Lcom/estrongs/android/pop/utils/ba;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/b/r;->addTaskStatusChangeListener(Lcom/estrongs/a/a/p;)V

    new-instance v1, Lcom/estrongs/android/ui/dialog/jh;

    const v2, 0x7f0805ad

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/estrongs/android/ui/dialog/jh;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;)V

    const v2, 0x7f080505

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/ui/dialog/jh;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/ui/dialog/jh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/jh;->show()V

    invoke-virtual {v0}, Lcom/estrongs/fs/b/r;->execute()V

    goto/16 :goto_0

    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_7

    const v0, 0x7f080658

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v9}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto/16 :goto_0

    :cond_7
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "*/*"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Lcom/estrongs/android/pop/utils/ao;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "image/*"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :cond_8
    :goto_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    sget-boolean v0, Lcom/estrongs/android/pop/z;->au:Z

    if-eqz v0, :cond_8

    invoke-static {p1}, Lcom/estrongs/android/pop/utils/ao;->b(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "audio/*"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_a
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const v0, 0x7f0800ad

    :try_start_1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method static synthetic b(Landroid/app/Activity;Ljava/util/List;Lcom/estrongs/fs/h;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/estrongs/android/pop/utils/ao;->c(Landroid/app/Activity;Ljava/util/List;Lcom/estrongs/fs/h;Z)V

    return-void
.end method

.method private static b(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/bg;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private static c(Lcom/estrongs/fs/h;)I
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-interface {p0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/utils/az;

    invoke-direct {v1}, Lcom/estrongs/android/pop/utils/az;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const-string v1, "item_count"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Lcom/estrongs/fs/h;->putExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return v0

    :cond_0
    array-length v0, v0

    goto :goto_0
.end method

.method public static c(Landroid/app/Activity;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/estrongs/android/ui/pcs/u;->a()Lcom/estrongs/android/ui/pcs/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/u;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, v0, p1}, Lcom/estrongs/android/pop/utils/ao;->a(Landroid/app/Activity;Lcom/estrongs/android/ui/pcs/u;Ljava/util/List;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/estrongs/android/pop/utils/bl;

    invoke-direct {v1, p0, v0, p1}, Lcom/estrongs/android/pop/utils/bl;-><init>(Landroid/app/Activity;Lcom/estrongs/android/ui/pcs/u;Ljava/util/List;)V

    const v0, 0x7f0802b2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/estrongs/android/pop/utils/ao;->a(Landroid/app/Activity;Lcom/estrongs/android/ui/pcs/q;Ljava/lang/String;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->a(Landroid/content/DialogInterface$OnDismissListener;)Lcom/estrongs/android/ui/dialog/cv;

    goto :goto_0
.end method

.method private static c(Landroid/app/Activity;Ljava/util/List;Lcom/estrongs/fs/h;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;",
            "Lcom/estrongs/fs/h;",
            "Z)V"
        }
    .end annotation

    const/4 v5, 0x1

    new-instance v0, Lcom/estrongs/fs/b/aq;

    invoke-static {p0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/estrongs/fs/b/aq;-><init>(Lcom/estrongs/fs/d;Ljava/util/List;Lcom/estrongs/fs/h;)V

    new-instance v1, Lcom/estrongs/android/pop/utils/bs;

    invoke-direct {v1, v0, p0, p2, p1}, Lcom/estrongs/android/pop/utils/bs;-><init>(Lcom/estrongs/fs/b/aq;Landroid/app/Activity;Lcom/estrongs/fs/h;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/b/aq;->addPostListener(Lcom/estrongs/a/a/o;)V

    invoke-virtual {v0, p3}, Lcom/estrongs/fs/b/aq;->b(Z)V

    const v1, 0x7f0803f5

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/estrongs/android/util/ap;->cc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/b/aq;->setDescription(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/estrongs/fs/b/aq;->a(Z)V

    new-instance v1, Lcom/estrongs/android/ui/dialog/jh;

    const v2, 0x7f0805b8

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/estrongs/android/ui/dialog/jh;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/jh;->show()V

    invoke-virtual {v0}, Lcom/estrongs/fs/b/aq;->execute()V

    return-void
.end method
