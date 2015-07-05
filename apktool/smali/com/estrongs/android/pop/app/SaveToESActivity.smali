.class public Lcom/estrongs/android/pop/app/SaveToESActivity;
.super Lcom/estrongs/android/pop/app/FileChooserActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/FileChooserActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/SaveToESActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/SaveToESActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 11

    const/4 v0, 0x0

    const/4 v6, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/SaveToESActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "files_selected"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    invoke-static {p0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v3

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/SaveToESActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/SaveToESActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/SaveToESActivity;->finish()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v7

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v3, "content"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v2, "media"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "com.estrongs.files"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const v0, 0x7f0b02fd

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/SaveToESActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/SaveToESActivity;->finish()V

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    :try_start_1
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/SaveToESActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-nez v0, :cond_5

    :try_start_2
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/SaveToESActivity;->finish()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v0, :cond_1

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :cond_5
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    const-string v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result-object v1

    if-eqz v0, :cond_11

    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    :cond_6
    :goto_2
    invoke-virtual {v7, v0}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v0, Lcom/estrongs/fs/b/r;

    invoke-static {p0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v2

    invoke-direct {v0, v1, v8, v2}, Lcom/estrongs/fs/b/r;-><init>(Lcom/estrongs/fs/d;Ljava/util/List;Lcom/estrongs/fs/h;)V

    const v1, 0x7f0b02bf

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/SaveToESActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/estrongs/android/util/am;->bL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/b/r;->setDescription(Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/m;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/m;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/b/r;->setTaskDecisionListener(Lcom/estrongs/a/a/a;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/b/r;->a(Z)V

    new-instance v1, Lcom/estrongs/android/ui/dialog/ix;

    const v2, 0x7f0b0084

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/SaveToESActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/estrongs/android/ui/dialog/ix;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;)V

    new-instance v2, Lcom/estrongs/android/pop/app/ks;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/ks;-><init>(Lcom/estrongs/android/pop/app/SaveToESActivity;)V

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/dialog/ix;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/ix;->show()V

    invoke-virtual {v0}, Lcom/estrongs/fs/b/r;->execute()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    move-object v0, v6

    :goto_3
    :try_start_6
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/SaveToESActivity;->finish()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v0, :cond_1

    :try_start_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v6, :cond_8

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0

    :cond_9
    if-eqz v1, :cond_f

    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/SaveToESActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    if-nez v9, :cond_a

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/SaveToESActivity;->finish()V

    goto/16 :goto_1

    :cond_a
    move v7, v0

    :goto_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_7

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v10

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    const-string v3, "content"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v2, "media"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "com.estrongs.files"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const v0, 0x7f0b02fd

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/SaveToESActivity;->finish()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_1

    :cond_b
    const/4 v0, 0x1

    :try_start_8
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/SaveToESActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v0

    if-nez v0, :cond_c

    :try_start_9
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/SaveToESActivity;->finish()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v0, :cond_1

    :try_start_a
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_1

    :cond_c
    :try_start_b
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    const-string v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-result-object v1

    if-eqz v0, :cond_10

    :try_start_c
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    :cond_d
    :goto_6
    invoke-virtual {v10, v0}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_5

    :catch_2
    move-exception v0

    :goto_7
    :try_start_d
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/SaveToESActivity;->finish()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-eqz v6, :cond_1

    :try_start_e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    :goto_8
    if-eqz v6, :cond_e

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v0

    :cond_f
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/SaveToESActivity;->finish()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    goto/16 :goto_1

    :catchall_2
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    goto :goto_8

    :catch_3
    move-exception v1

    move-object v6, v0

    goto :goto_7

    :catchall_3
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    goto/16 :goto_4

    :catch_4
    move-exception v1

    goto/16 :goto_3

    :cond_10
    move-object v0, v1

    goto :goto_6

    :cond_11
    move-object v0, v1

    goto/16 :goto_2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/app/FileChooserActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/SaveToESActivity;->a:Lcom/estrongs/android/widget/g;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/SaveToESActivity;->a:Lcom/estrongs/android/widget/g;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/g;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/SaveToESActivity;->a:Lcom/estrongs/android/widget/g;

    const v1, 0x7f0b002a

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/SaveToESActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/pop/app/kq;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/kq;-><init>(Lcom/estrongs/android/pop/app/SaveToESActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/widget/g;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/SaveToESActivity;->a:Lcom/estrongs/android/widget/g;

    const v1, 0x7f0b000c

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/SaveToESActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/widget/g;->c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method
