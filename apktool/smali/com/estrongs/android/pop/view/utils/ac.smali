.class public Lcom/estrongs/android/pop/view/utils/ac;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Ljava/lang/String;

.field private static volatile b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/view/utils/ac;->a:Ljava/lang/String;

    sput-object v0, Lcom/estrongs/android/pop/view/utils/ac;->b:Ljava/lang/String;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->y()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/view/utils/ac;->a:Ljava/lang/String;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->A()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/view/utils/ac;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/estrongs/android/pop/view/utils/ad;
    .locals 5

    invoke-static {p0, p1}, Lcom/estrongs/android/pop/view/utils/ac;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ad;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "view_local_special"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ad;->C(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/view/utils/ad;

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/estrongs/android/pop/view/utils/ad;-><init>(Ljava/lang/String;III)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v1, v2}, Lcom/estrongs/android/pop/view/utils/ac;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/view/utils/ad;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/view/utils/ad;
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v9, 0x30

    const/16 v8, 0x32

    const/16 v7, 0x31

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    invoke-static {p0}, Lcom/estrongs/android/pop/view/utils/ac;->d(Ljava/lang/String;)Lcom/estrongs/android/pop/view/utils/ad;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, -0x30

    const/4 v6, 0x3

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    if-ne v3, v8, :cond_2

    if-ne v4, v7, :cond_2

    const/4 v0, 0x5

    :cond_1
    :goto_1
    new-instance v1, Lcom/estrongs/android/pop/view/utils/ad;

    invoke-direct {v1, p0, v0, v5, v2}, Lcom/estrongs/android/pop/view/utils/ad;-><init>(Ljava/lang/String;III)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    if-ne v3, v7, :cond_3

    if-ne v4, v7, :cond_3

    const/4 v0, 0x4

    goto :goto_1

    :cond_3
    if-ne v3, v9, :cond_4

    if-ne v4, v7, :cond_4

    const/4 v0, 0x3

    goto :goto_1

    :cond_4
    if-ne v3, v8, :cond_5

    if-ne v4, v8, :cond_5

    const/16 v0, 0x8

    goto :goto_1

    :cond_5
    if-ne v3, v7, :cond_6

    if-ne v4, v8, :cond_6

    const/4 v0, 0x7

    goto :goto_1

    :cond_6
    if-ne v3, v9, :cond_7

    if-ne v4, v8, :cond_7

    const/4 v0, 0x6

    goto :goto_1

    :cond_7
    if-ne v3, v8, :cond_8

    if-ne v4, v9, :cond_8

    const/4 v0, 0x2

    goto :goto_1

    :cond_8
    if-ne v3, v7, :cond_9

    if-eq v4, v9, :cond_1

    :cond_9
    move v0, v1

    goto :goto_1
.end method

.method public static a(II)Lcom/estrongs/fs/util/a/a;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    :pswitch_0
    new-instance v0, Lcom/estrongs/fs/util/a/d;

    invoke-direct {v0, v1}, Lcom/estrongs/fs/util/a/d;-><init>(Z)V

    goto :goto_1

    :pswitch_1
    new-instance v0, Lcom/estrongs/fs/util/a/f;

    invoke-direct {v0, v1}, Lcom/estrongs/fs/util/a/f;-><init>(Z)V

    goto :goto_1

    :pswitch_2
    new-instance v0, Lcom/estrongs/fs/util/a/e;

    invoke-direct {v0, v1}, Lcom/estrongs/fs/util/a/e;-><init>(Z)V

    goto :goto_1

    :pswitch_3
    new-instance v0, Lcom/estrongs/fs/util/a/c;

    invoke-direct {v0, v1}, Lcom/estrongs/fs/util/a/c;-><init>(Z)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static a(III)Ljava/lang/String;
    .locals 5

    const/16 v4, 0x32

    const/16 v3, 0x31

    const/16 v2, 0x30

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x5

    if-ne p0, v1, :cond_0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    add-int/lit8 v1, p1, 0x30

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p2, 0x30

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x4

    if-ne p0, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne p0, v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    if-ne p0, v1, :cond_3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const/4 v1, 0x7

    if-ne p0, v1, :cond_4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    const/4 v1, 0x6

    if-ne p0, v1, :cond_5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    const/4 v1, 0x2

    if-ne p0, v1, :cond_6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_6
    const/4 v1, 0x1

    if-ne p0, v1, :cond_7

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Lcom/estrongs/android/pop/view/utils/ad;)V
    .locals 4

    invoke-static {p0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    iget v1, p1, Lcom/estrongs/android/pop/view/utils/ad;->b:I

    iget v2, p1, Lcom/estrongs/android/pop/view/utils/ad;->c:I

    iget v3, p1, Lcom/estrongs/android/pop/view/utils/ad;->d:I

    invoke-static {v1, v2, v3}, Lcom/estrongs/android/pop/view/utils/ac;->a(III)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/estrongs/android/pop/view/utils/ad;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/estrongs/android/pop/ad;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    invoke-static {p0, p1}, Lcom/estrongs/android/pop/view/utils/ac;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/estrongs/android/pop/view/utils/ad;

    move-result-object v0

    iput p2, v0, Lcom/estrongs/android/pop/view/utils/ad;->b:I

    invoke-static {p0, v0}, Lcom/estrongs/android/pop/view/utils/ac;->a(Landroid/content/Context;Lcom/estrongs/android/pop/view/utils/ad;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 1

    invoke-static {p0, p1}, Lcom/estrongs/android/pop/view/utils/ac;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/estrongs/android/pop/view/utils/ad;

    move-result-object v0

    iput p2, v0, Lcom/estrongs/android/pop/view/utils/ad;->c:I

    iput p3, v0, Lcom/estrongs/android/pop/view/utils/ad;->d:I

    invoke-static {p0, v0}, Lcom/estrongs/android/pop/view/utils/ac;->a(Landroid/content/Context;Lcom/estrongs/android/pop/view/utils/ad;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/estrongs/android/pop/view/utils/ac;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(I)Z
    .locals 1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    invoke-static {p0, p1}, Lcom/estrongs/android/pop/view/utils/ac;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/estrongs/android/pop/view/utils/ad;

    move-result-object v0

    iget v0, v0, Lcom/estrongs/android/pop/view/utils/ad;->b:I

    return v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/estrongs/android/pop/view/utils/ac;->b:Ljava/lang/String;

    return-void
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "view_local"

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->I(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const-string v0, "view_smb"

    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/estrongs/android/pop/view/utils/ac;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "view_local_special"

    :cond_1
    return-object v0

    :cond_2
    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/16 v2, 0x13

    if-eq v1, v2, :cond_3

    const/16 v2, 0x14

    if-eq v1, v2, :cond_3

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    :cond_3
    const-string v0, "view_ftp"

    goto :goto_0

    :cond_4
    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    const-string v0, "view_bt"

    goto :goto_0

    :cond_5
    const/4 v2, 0x4

    if-ne v1, v2, :cond_6

    const-string v0, "view_net"

    goto :goto_0

    :cond_6
    const/16 v2, 0x17

    if-ne v1, v2, :cond_7

    const-string v0, "view_pcs"

    goto :goto_0

    :cond_7
    const/16 v2, 0x18

    if-ne v1, v2, :cond_8

    const-string v0, "view_app"

    goto :goto_0

    :cond_8
    const/16 v2, 0xc

    if-ne v1, v2, :cond_9

    const-string v0, "view_music"

    goto :goto_0

    :cond_9
    const/16 v2, 0xd

    if-ne v1, v2, :cond_a

    const-string v0, "view_pic"

    goto :goto_0

    :cond_a
    const/16 v2, 0xe

    if-ne v1, v2, :cond_b

    const-string v0, "view_video"

    goto :goto_0

    :cond_b
    const/16 v2, 0x10

    if-ne v1, v2, :cond_c

    const-string v0, "view_book"

    goto :goto_0

    :cond_c
    const/16 v2, 0x15

    if-eq v1, v2, :cond_d

    const/16 v2, 0x16

    if-ne v1, v2, :cond_e

    :cond_d
    const-string v0, "view_webdav"

    goto :goto_0

    :cond_e
    const/16 v2, 0x1c

    if-eq v1, v2, :cond_f

    const/16 v2, 0x27

    if-ne v1, v2, :cond_10

    :cond_f
    const-string v0, "view_compress"

    goto :goto_0

    :cond_10
    const/16 v2, 0x28

    if-ne v1, v2, :cond_0

    const-string v0, "view_encrypt"

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/estrongs/android/pop/view/utils/ac;->a:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/estrongs/android/util/ap;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/estrongs/android/pop/view/utils/ac;->b:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/estrongs/android/util/ap;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Lcom/estrongs/android/pop/view/utils/ad;
    .locals 4

    const/4 v3, 0x0

    const-string v0, "view_local"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/view/utils/ad;

    invoke-direct {v0, p0, v3, v3, v3}, Lcom/estrongs/android/pop/view/utils/ad;-><init>(Ljava/lang/String;III)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/estrongs/android/pop/view/utils/ad;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/estrongs/android/pop/view/utils/ad;-><init>(Ljava/lang/String;III)V

    goto :goto_0
.end method
