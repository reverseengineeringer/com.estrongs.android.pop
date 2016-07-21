.class public Lcom/estrongs/android/pop/app/a/a;
.super Ljava/lang/Object;


# static fields
.field static a:Z

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field private static d:Lcom/estrongs/android/pop/app/a/l;

.field private static e:Lcom/estrongs/android/pop/app/a/m;

.field private static f:Lcom/estrongs/android/pop/app/a/r;

.field private static g:Lcom/estrongs/android/pop/app/a/r;

.field private static h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/pop/app/a/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/pop/app/a/a;->a:Z

    const-string v0, "card_guide"

    sput-object v0, Lcom/estrongs/android/pop/app/a/a;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/estrongs/android/pop/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dontedit_guide"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/app/a/a;->c:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/app/a/a;->h:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/estrongs/android/pop/app/a/a;->b()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/estrongs/android/pop/app/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/estrongs/android/pop/app/a/a;->f:Lcom/estrongs/android/pop/app/a/r;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ai;->b(Landroid/content/Context;)Lcom/estrongs/android/pop/ai;

    move-result-object v0

    const-string v1, "newuser_guide_checked"

    invoke-virtual {v0, v1, v3}, Lcom/estrongs/android/pop/ai;->a(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/estrongs/android/pop/app/a/a;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ai;->b(Landroid/content/Context;)Lcom/estrongs/android/pop/ai;

    move-result-object v0

    const-string v1, "newuser_guide_checked"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/ai;->b(Ljava/lang/String;I)V

    sget-object v0, Lcom/estrongs/android/pop/app/a/a;->f:Lcom/estrongs/android/pop/app/a/r;

    iget v0, v0, Lcom/estrongs/android/pop/app/a/r;->d:I

    if-ne v0, v2, :cond_2

    sget-object v0, Lcom/estrongs/android/pop/app/a/a;->f:Lcom/estrongs/android/pop/app/a/r;

    iget v0, v0, Lcom/estrongs/android/pop/app/a/r;->d:I

    invoke-static {p0, v0}, Lcom/estrongs/android/pop/app/a/a;->a(Landroid/app/Activity;I)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/estrongs/android/pop/app/a/a;->f:Lcom/estrongs/android/pop/app/a/r;

    iget v0, v0, Lcom/estrongs/android/pop/app/a/r;->d:I

    if-ne v0, v4, :cond_3

    sget-object v0, Lcom/estrongs/android/pop/app/a/a;->f:Lcom/estrongs/android/pop/app/a/r;

    iget v0, v0, Lcom/estrongs/android/pop/app/a/r;->d:I

    invoke-static {p0, v0}, Lcom/estrongs/android/pop/app/a/a;->a(Landroid/app/Activity;I)V

    const-string v0, "newuser_2"

    invoke-static {v2, v0}, Lcom/estrongs/android/pop/app/a/a;->a(ZLjava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/estrongs/android/pop/app/a/a;->f:Lcom/estrongs/android/pop/app/a/r;

    iget v0, v0, Lcom/estrongs/android/pop/app/a/r;->d:I

    if-ne v0, v5, :cond_4

    const-string v0, "newuser_3"

    invoke-static {v2, v0}, Lcom/estrongs/android/pop/app/a/a;->a(ZLjava/lang/String;)V

    goto :goto_0

    :cond_4
    :try_start_1
    const-string v0, "charge_new_user"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "event"

    const-string v3, "ignore"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v2

    const-string v3, "charge"

    invoke-virtual {v2, v3, v0, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/estrongs/android/pop/app/a/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/app/a/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->bt()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/pop/app/a/a;->g:Lcom/estrongs/android/pop/app/a/r;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Lcom/estrongs/android/pop/ad;->b(ZZ)V

    sget-object v0, Lcom/estrongs/android/pop/app/a/a;->g:Lcom/estrongs/android/pop/app/a/r;

    iget v0, v0, Lcom/estrongs/android/pop/app/a/r;->d:I

    if-ne v0, v2, :cond_6

    sget-object v0, Lcom/estrongs/android/pop/app/a/a;->g:Lcom/estrongs/android/pop/app/a/r;

    iget v0, v0, Lcom/estrongs/android/pop/app/a/r;->d:I

    invoke-static {p0, v0}, Lcom/estrongs/android/pop/app/a/a;->a(Landroid/app/Activity;I)V

    goto/16 :goto_0

    :cond_6
    sget-object v0, Lcom/estrongs/android/pop/app/a/a;->g:Lcom/estrongs/android/pop/app/a/r;

    iget v0, v0, Lcom/estrongs/android/pop/app/a/r;->d:I

    if-ne v0, v4, :cond_7

    sget-object v0, Lcom/estrongs/android/pop/app/a/a;->g:Lcom/estrongs/android/pop/app/a/r;

    iget v0, v0, Lcom/estrongs/android/pop/app/a/r;->d:I

    invoke-static {p0, v0}, Lcom/estrongs/android/pop/app/a/a;->a(Landroid/app/Activity;I)V

    const-string v0, "opened_olduser_2"

    invoke-static {v2, v0}, Lcom/estrongs/android/pop/app/a/a;->a(ZLjava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    sget-object v0, Lcom/estrongs/android/pop/app/a/a;->g:Lcom/estrongs/android/pop/app/a/r;

    iget v0, v0, Lcom/estrongs/android/pop/app/a/r;->d:I

    if-ne v0, v5, :cond_0

    const-string v0, "opened_olduser_3"

    invoke-static {v2, v0}, Lcom/estrongs/android/pop/app/a/a;->a(ZLjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static a(Landroid/app/Activity;I)V
    .locals 6

    sget-object v0, Lcom/estrongs/android/pop/app/a/a;->f:Lcom/estrongs/android/pop/app/a/r;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f030064

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/estrongs/android/pop/app/a/i;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/a/i;-><init>()V

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0e019c

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setVisibility(I)V

    :cond_1
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f0e0175

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f0e0077

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v5, 0x7f0e0207

    invoke-virtual {v3, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget-object v5, Lcom/estrongs/android/pop/app/a/a;->f:Lcom/estrongs/android/pop/app/a/r;

    iget-object v5, v5, Lcom/estrongs/android/pop/app/a/r;->a:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/estrongs/android/pop/app/a/a;->f:Lcom/estrongs/android/pop/app/a/r;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/a/r;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/estrongs/android/pop/app/a/a;->f:Lcom/estrongs/android/pop/app/a/r;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/a/r;->c:Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f0e0258

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/pop/app/a/j;

    invoke-direct {v2, v4, p1, v0}, Lcom/estrongs/android/pop/app/a/j;-><init>(Landroid/app/Dialog;ILandroid/support/v7/widget/SwitchCompat;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/estrongs/android/pop/app/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/estrongs/android/pop/app/a/a;->f()V

    sget-object v0, Lcom/estrongs/android/pop/app/messagebox/n;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/estrongs/android/pop/app/messagebox/n;->d:Ljava/lang/String;

    new-instance v1, Lcom/estrongs/android/pop/app/a/b;

    invoke-direct {v1}, Lcom/estrongs/android/pop/app/a/b;-><init>()V

    invoke-static {v0, v1}, Lcom/dianxinos/library/notify/c;->a(Ljava/lang/String;Lcom/dianxinos/library/notify/e;)Z

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/dianxinos/lockscreen/c;->a(Z)V

    invoke-static {p0}, Lcom/dianxinos/lockscreen/c;->a(Landroid/content/Context;)Lcom/dianxinos/lockscreen/c;

    move-result-object v0

    const v1, 0x7f0801a9

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dianxinos/lockscreen/c;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/dianxinos/lockscreen/c;->a(Landroid/content/Context;)Lcom/dianxinos/lockscreen/c;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/a/d;

    invoke-direct {v1}, Lcom/estrongs/android/pop/app/a/d;-><init>()V

    invoke-virtual {v0, v1}, Lcom/dianxinos/lockscreen/c;->a(Lcom/dianxinos/lockscreen/f;)V

    invoke-static {p0}, Lcom/dianxinos/lockscreen/c;->a(Landroid/content/Context;)Lcom/dianxinos/lockscreen/c;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/a/e;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/a/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/dianxinos/lockscreen/c;->a(Lcom/dianxinos/lockscreen/r;)V

    invoke-static {p0}, Lcom/dianxinos/lockscreen/c;->a(Landroid/content/Context;)Lcom/dianxinos/lockscreen/c;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/a/f;

    invoke-direct {v1}, Lcom/estrongs/android/pop/app/a/f;-><init>()V

    invoke-virtual {v0, v1}, Lcom/dianxinos/lockscreen/c;->a(Lcom/dianxinos/lockscreen/g;)V

    invoke-static {p0}, Lcom/dianxinos/lockscreen/c;->a(Landroid/content/Context;)Lcom/dianxinos/lockscreen/c;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/a/g;

    invoke-direct {v1}, Lcom/estrongs/android/pop/app/a/g;-><init>()V

    invoke-virtual {v0, v1}, Lcom/dianxinos/lockscreen/c;->a(Lcom/dianxinos/lockscreen/h;)V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/pop/app/a/a;->e()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/ad;->b(ZZ)V

    invoke-static {}, Lcom/estrongs/android/pop/app/a/a;->b()Z

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/pop/app/a/a;->b(Z)V

    goto :goto_0
.end method

.method public static a(Landroid/view/View;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 4

    sget-object v0, Lcom/estrongs/android/pop/app/a/a;->e:Lcom/estrongs/android/pop/app/a/m;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f0e0175

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e01ca

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0e022c

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget-object v3, Lcom/estrongs/android/pop/app/a/a;->e:Lcom/estrongs/android/pop/app/a/m;

    iget-object v3, v3, Lcom/estrongs/android/pop/app/a/m;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/estrongs/android/pop/app/a/a;->e:Lcom/estrongs/android/pop/app/a/m;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/a/m;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/estrongs/android/pop/app/a/a;->e:Lcom/estrongs/android/pop/app/a/m;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/a/m;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v0, Lcom/estrongs/android/pop/app/a/h;

    invoke-direct {v0, p0, v2, p2}, Lcom/estrongs/android/pop/app/a/h;-><init>(Landroid/view/View;Landroid/widget/TextView;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "charge_card_guide"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "event"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "positon"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v2

    const-string v3, "charge"

    invoke-virtual {v2, v3, v0, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static a(Lcom/estrongs/android/pop/app/a/k;)V
    .locals 2

    const-class v1, Lcom/estrongs/android/pop/app/a/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/android/pop/app/a/a;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/app/a/a;->h:Ljava/util/ArrayList;

    :cond_0
    sget-object v0, Lcom/estrongs/android/pop/app/a/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Z)V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/estrongs/android/pop/ad;->D(Z)V

    return-void
.end method

.method public static a(ZLjava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/estrongs/android/pop/app/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/estrongs/android/pop/app/a/a;->b(Z)V

    invoke-static {p0}, Lcom/estrongs/android/pop/app/a/a;->a(Z)V

    if-eqz p0, :cond_1

    const-string v0, "open_charge"

    :goto_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "event"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "positon"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v2

    const-string v3, "charge"

    invoke-virtual {v2, v3, v0, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    const-class v1, Lcom/dianxinos/lockscreen/c;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Lcom/estrongs/android/pop/app/a/a;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/estrongs/android/pop/app/a/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/a/k;

    invoke-interface {v0, p0}, Lcom/estrongs/android/pop/app/a/k;->a(Z)V

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_3
    const-string v0, "close_charge"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :cond_2
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public static a()Z
    .locals 1

    invoke-static {}, Lcom/estrongs/android/util/bk;->p()Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Lcom/estrongs/android/pop/app/a/a;->a:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/app/a/a;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/app/a/a;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/ad;->bl()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/estrongs/android/pop/app/a/a;->b:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/estrongs/android/pop/app/a/a;->d:Lcom/estrongs/android/pop/app/a/l;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/estrongs/android/pop/app/a/a;->d:Lcom/estrongs/android/pop/app/a/l;

    iget-boolean v0, v0, Lcom/estrongs/android/pop/app/a/l;->a:Z

    goto :goto_0
.end method

.method public static b(Lcom/estrongs/android/pop/app/a/k;)V
    .locals 2

    const-class v1, Lcom/estrongs/android/pop/app/a/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/android/pop/app/a/a;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/pop/app/a/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static b(Z)V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/lockscreen/c;->a(Landroid/content/Context;)Lcom/dianxinos/lockscreen/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dianxinos/lockscreen/c;->b(Z)V

    return-void
.end method

.method public static b()Z
    .locals 1

    invoke-static {}, Lcom/estrongs/android/pop/app/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->bs()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/app/a/a;->e()Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic b(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/estrongs/android/pop/app/a/a;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static c()Z
    .locals 4

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ai;->b(Landroid/content/Context;)Lcom/estrongs/android/pop/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ai;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "enable"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_1

    move v2, v1

    :goto_1
    sput-boolean v2, Lcom/estrongs/android/pop/app/a/a;->a:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v2, "policy"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v4, Lcom/estrongs/android/pop/app/a/l;

    invoke-direct {v4}, Lcom/estrongs/android/pop/app/a/l;-><init>()V

    sput-object v4, Lcom/estrongs/android/pop/app/a/a;->d:Lcom/estrongs/android/pop/app/a/l;

    sget-object v4, Lcom/estrongs/android/pop/app/a/a;->d:Lcom/estrongs/android/pop/app/a/l;

    const-string v5, "card_guide"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_2

    move v2, v1

    :goto_2
    iput-boolean v2, v4, Lcom/estrongs/android/pop/app/a/l;->a:Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    :try_start_2
    const-string v2, "ui"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v4, Lcom/estrongs/android/pop/app/a/m;

    invoke-direct {v4}, Lcom/estrongs/android/pop/app/a/m;-><init>()V

    sput-object v4, Lcom/estrongs/android/pop/app/a/a;->e:Lcom/estrongs/android/pop/app/a/m;

    sget-object v4, Lcom/estrongs/android/pop/app/a/a;->e:Lcom/estrongs/android/pop/app/a/m;

    const-string v5, "title"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/estrongs/android/pop/app/a/m;->a:Ljava/lang/String;

    sget-object v4, Lcom/estrongs/android/pop/app/a/a;->e:Lcom/estrongs/android/pop/app/a/m;

    const-string v5, "summary"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/estrongs/android/pop/app/a/m;->b:Ljava/lang/String;

    sget-object v4, Lcom/estrongs/android/pop/app/a/a;->e:Lcom/estrongs/android/pop/app/a/m;

    const-string v5, "button"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/estrongs/android/pop/app/a/m;->c:Ljava/lang/String;

    sget-object v4, Lcom/estrongs/android/pop/app/a/a;->e:Lcom/estrongs/android/pop/app/a/m;

    const-string v5, "opened_toast"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/estrongs/android/pop/app/a/m;->d:Ljava/lang/String;

    sget-object v4, Lcom/estrongs/android/pop/app/a/a;->e:Lcom/estrongs/android/pop/app/a/m;

    const-string v5, "button_opened"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/estrongs/android/pop/app/a/m;->e:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_4
    :try_start_3
    const-string v2, "new_user"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v4, Lcom/estrongs/android/pop/app/a/r;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lcom/estrongs/android/pop/app/a/r;-><init>(I)V

    sput-object v4, Lcom/estrongs/android/pop/app/a/a;->f:Lcom/estrongs/android/pop/app/a/r;

    sget-object v4, Lcom/estrongs/android/pop/app/a/a;->f:Lcom/estrongs/android/pop/app/a/r;

    const-string v5, "guide_title"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/estrongs/android/pop/app/a/r;->a:Ljava/lang/String;

    sget-object v4, Lcom/estrongs/android/pop/app/a/a;->f:Lcom/estrongs/android/pop/app/a/r;

    const-string v5, "dlg_title"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/estrongs/android/pop/app/a/r;->b:Ljava/lang/String;

    sget-object v4, Lcom/estrongs/android/pop/app/a/a;->f:Lcom/estrongs/android/pop/app/a/r;

    const-string v5, "dlg_summary"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/estrongs/android/pop/app/a/r;->c:Ljava/lang/String;

    sget-object v4, Lcom/estrongs/android/pop/app/a/a;->f:Lcom/estrongs/android/pop/app/a/r;

    const-string v5, "mode"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v4, Lcom/estrongs/android/pop/app/a/r;->d:I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_5
    :try_start_4
    const-string v2, "opened_olduser"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/estrongs/android/pop/app/a/r;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/estrongs/android/pop/app/a/r;-><init>(I)V

    sput-object v3, Lcom/estrongs/android/pop/app/a/a;->g:Lcom/estrongs/android/pop/app/a/r;

    sget-object v3, Lcom/estrongs/android/pop/app/a/a;->g:Lcom/estrongs/android/pop/app/a/r;

    const-string v4, "guide_title"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/estrongs/android/pop/app/a/r;->a:Ljava/lang/String;

    sget-object v3, Lcom/estrongs/android/pop/app/a/a;->g:Lcom/estrongs/android/pop/app/a/r;

    const-string v4, "dlg_title"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/estrongs/android/pop/app/a/r;->b:Ljava/lang/String;

    sget-object v3, Lcom/estrongs/android/pop/app/a/a;->g:Lcom/estrongs/android/pop/app/a/r;

    const-string v4, "dlg_summary"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/estrongs/android/pop/app/a/r;->c:Ljava/lang/String;

    sget-object v3, Lcom/estrongs/android/pop/app/a/a;->g:Lcom/estrongs/android/pop/app/a/r;

    const-string v4, "mode"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/estrongs/android/pop/app/a/r;->d:I
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_6
    move v0, v1

    goto/16 :goto_0

    :cond_1
    move v2, v0

    goto/16 :goto_1

    :cond_2
    move v2, v0

    goto/16 :goto_2

    :catch_0
    move-exception v2

    :try_start_5
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v2, 0x0

    sput-object v2, Lcom/estrongs/android/pop/app/a/a;->d:Lcom/estrongs/android/pop/app/a/l;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    sput-boolean v0, Lcom/estrongs/android/pop/app/a/a;->a:Z

    sput-object v6, Lcom/estrongs/android/pop/app/a/a;->d:Lcom/estrongs/android/pop/app/a/l;

    sput-object v6, Lcom/estrongs/android/pop/app/a/a;->e:Lcom/estrongs/android/pop/app/a/m;

    sput-object v6, Lcom/estrongs/android/pop/app/a/a;->f:Lcom/estrongs/android/pop/app/a/r;

    sput-object v6, Lcom/estrongs/android/pop/app/a/a;->g:Lcom/estrongs/android/pop/app/a/r;

    goto/16 :goto_0

    :catch_2
    move-exception v2

    :try_start_6
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v2, 0x0

    sput-object v2, Lcom/estrongs/android/pop/app/a/a;->e:Lcom/estrongs/android/pop/app/a/m;

    goto/16 :goto_4

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v2, 0x0

    sput-object v2, Lcom/estrongs/android/pop/app/a/a;->f:Lcom/estrongs/android/pop/app/a/r;

    goto :goto_5

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v2, 0x0

    sput-object v2, Lcom/estrongs/android/pop/app/a/a;->g:Lcom/estrongs/android/pop/app/a/r;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_6
.end method

.method static synthetic d()Lcom/estrongs/android/pop/app/a/m;
    .locals 1

    sget-object v0, Lcom/estrongs/android/pop/app/a/a;->e:Lcom/estrongs/android/pop/app/a/m;

    return-object v0
.end method

.method private static e()Z
    .locals 1

    invoke-static {}, Lcom/estrongs/android/pop/app/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/lockscreen/c;->a(Landroid/content/Context;)Lcom/dianxinos/lockscreen/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/c;->c()Z

    move-result v0

    goto :goto_0
.end method

.method private static f()V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/estrongs/android/pop/app/messagebox/n;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/estrongs/android/pop/app/messagebox/n;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/dianxinos/library/notify/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/estrongs/android/pop/app/a/a;->c(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
