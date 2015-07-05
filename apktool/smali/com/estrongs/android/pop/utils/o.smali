.class Lcom/estrongs/android/pop/utils/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/estrongs/android/pop/utils/c;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/utils/c;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/o;->b:Lcom/estrongs/android/pop/utils/c;

    iput-object p2, p0, Lcom/estrongs/android/pop/utils/o;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13

    const/4 v2, 0x0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/utils/o;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/o;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/b/c;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/b/c;->c()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    if-nez v8, :cond_0

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/utils/o;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/b/c;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/b/c;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/o;->b:Lcom/estrongs/android/pop/utils/c;

    invoke-static {v0, v9}, Lcom/estrongs/android/pop/utils/c;->a(Lcom/estrongs/android/pop/utils/c;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/o;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/b/c;

    const/4 v3, 0x0

    iget-object v10, p0, Lcom/estrongs/android/pop/utils/o;->b:Lcom/estrongs/android/pop/utils/c;

    invoke-static {v10, v7, v9}, Lcom/estrongs/android/pop/utils/c;->a(Lcom/estrongs/android/pop/utils/c;Ljava/util/List;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    new-instance v3, Lcom/estrongs/fs/b/ab;

    iget-object v10, p0, Lcom/estrongs/android/pop/utils/o;->b:Lcom/estrongs/android/pop/utils/c;

    iget-object v10, v10, Lcom/estrongs/android/pop/utils/c;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v10}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v10

    invoke-direct {v3, v10, v0, v2}, Lcom/estrongs/fs/b/ab;-><init>(Lcom/estrongs/fs/d;Lcom/estrongs/fs/h;Z)V

    invoke-virtual {v3, v2}, Lcom/estrongs/fs/b/ab;->execute(Z)V

    invoke-virtual {v3}, Lcom/estrongs/fs/b/ab;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_4

    iget v0, v0, Lcom/estrongs/a/p;->a:I

    if-nez v0, :cond_4

    const-string v0, ".apk"

    invoke-virtual {v9, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x4

    if-le v0, v3, :cond_4

    const/4 v0, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x4

    invoke-virtual {v9, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, ".odex"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v9, Lcom/estrongs/fs/b/ab;

    iget-object v10, p0, Lcom/estrongs/android/pop/utils/o;->b:Lcom/estrongs/android/pop/utils/c;

    iget-object v10, v10, Lcom/estrongs/android/pop/utils/c;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v10}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v10

    new-instance v11, Lcom/estrongs/fs/n;

    sget-object v12, Lcom/estrongs/fs/m;->b:Lcom/estrongs/fs/m;

    invoke-direct {v11, v3, v12}, Lcom/estrongs/fs/n;-><init>(Ljava/lang/String;Lcom/estrongs/fs/m;)V

    invoke-direct {v9, v10, v11, v2}, Lcom/estrongs/fs/b/ab;-><init>(Lcom/estrongs/fs/d;Lcom/estrongs/fs/h;Z)V

    invoke-virtual {v9, v2}, Lcom/estrongs/fs/b/ab;->execute(Z)V

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/o;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/b/c;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/b/c;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_1
    const-string v10, "rw"

    invoke-static {v9, v10}, Lcom/estrongs/fs/impl/local/l;->b(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_5

    new-instance v3, Lcom/estrongs/fs/b/ab;

    iget-object v11, p0, Lcom/estrongs/android/pop/utils/o;->b:Lcom/estrongs/android/pop/utils/c;

    iget-object v11, v11, Lcom/estrongs/android/pop/utils/c;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v11}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v11

    invoke-direct {v3, v11, v0, v2}, Lcom/estrongs/fs/b/ab;-><init>(Lcom/estrongs/fs/d;Lcom/estrongs/fs/h;Z)V

    invoke-virtual {v3, v2}, Lcom/estrongs/fs/b/ab;->execute(Z)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/estrongs/fs/b/ab;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v0

    goto/16 :goto_2

    :cond_2
    :goto_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/l;->b([Ljava/lang/String;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/utils/o;->b:Lcom/estrongs/android/pop/utils/c;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/c;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, v4, v5, v6}, Lcom/estrongs/android/pop/view/utils/AppRunner;->a(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    move-object v0, v3

    goto/16 :goto_2
.end method
