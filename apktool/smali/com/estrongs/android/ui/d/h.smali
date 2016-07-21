.class public Lcom/estrongs/android/ui/d/h;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/estrongs/android/ui/d/h;


# instance fields
.field private b:Landroid/graphics/Bitmap;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/estrongs/android/ui/d/h;

    const-string v1, "Null Window Info"

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/d/h;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/estrongs/android/ui/d/h;->a:Lcom/estrongs/android/ui/d/h;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/d/h;->e:Z

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/d/h;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/d/h;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/d/h;->c:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/ui/d/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const v7, 0x7f080127

    const v6, 0x7f080125

    const v5, 0x7f080124

    const v4, 0x7f080123

    const v3, 0x7f080122

    invoke-static {p2}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/estrongs/android/util/ap;->aJ(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Lcom/estrongs/android/util/ap;->cc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez p2, :cond_5

    const v0, 0x7f080093

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    const-string v1, "#home_page#"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const v0, 0x7f0803a9

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    const-string v1, "pcsres://"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v0, 0x7f08036d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    const-string v1, "smb://"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const v0, 0x7f0803aa

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_2
    return-object v0

    :cond_5
    const-string v1, "/"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const v0, 0x7f0803a2

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    const-string v1, "search:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f080751

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    invoke-static {p2}, Lcom/estrongs/android/util/ap;->aY(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const v0, 0x7f0803ab

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_8
    invoke-static {p2}, Lcom/estrongs/android/util/ap;->aQ(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {p2}, Lcom/estrongs/android/util/ap;->aP(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const v0, 0x7f080371

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_9
    iget-object v1, p0, Lcom/estrongs/android/ui/d/h;->c:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p2}, Lcom/estrongs/android/util/ap;->aT(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p2}, Lcom/estrongs/android/util/ap;->az(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const v0, 0x7f080312

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_a
    invoke-static {p2}, Lcom/estrongs/android/util/ap;->aA(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const v0, 0x7f080383

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_b
    invoke-static {p2}, Lcom/estrongs/android/util/ap;->aB(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f0802e6

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_c
    invoke-static {p2}, Lcom/estrongs/android/util/ap;->ai(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {p2}, Lcom/estrongs/android/util/ap;->ak(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {p2}, Lcom/estrongs/android/util/ap;->aj(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_e
    invoke-static {p2}, Lcom/estrongs/android/util/ap;->al(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_f
    invoke-static {p2}, Lcom/estrongs/android/util/ap;->am(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_10
    invoke-static {p2}, Lcom/estrongs/android/util/ap;->an(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_11
    invoke-static {p2}, Lcom/estrongs/android/util/ap;->ao(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const v0, 0x7f080126

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_12
    invoke-static {p2}, Lcom/estrongs/android/util/ap;->ap(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f08011d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_13
    invoke-static {p2}, Lcom/estrongs/android/util/ap;->bv(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    const v0, 0x7f0801d4

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_14
    invoke-static {p2}, Lcom/estrongs/android/util/ap;->bw(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    const v0, 0x7f0803bc

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_15
    invoke-static {p2}, Lcom/estrongs/android/util/ap;->ag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_16
    iget-object v1, p0, Lcom/estrongs/android/ui/d/h;->c:Ljava/lang/String;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/estrongs/android/ui/d/h;->c:Ljava/lang/String;

    const-string v2, "download://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    const v0, 0x7f080112

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_17
    invoke-static {p2}, Lcom/estrongs/android/util/ap;->ba(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v0, p0, Lcom/estrongs/android/ui/d/h;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bd(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/estrongs/android/ui/d/h;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_18
    iget-object v0, p0, Lcom/estrongs/android/ui/d/h;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_19
    iget-object v1, p0, Lcom/estrongs/android/ui/d/h;->c:Ljava/lang/String;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/estrongs/android/ui/d/h;->c:Ljava/lang/String;

    const-string v2, "du://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v0, p0, Lcom/estrongs/android/ui/d/h;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f080285

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_1a
    iget-object v1, p0, Lcom/estrongs/android/ui/d/h;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->cj(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const v0, 0x7f08042d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_1b
    invoke-static {p2}, Lcom/estrongs/android/util/ap;->O(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-static {p2}, Lcom/estrongs/fs/impl/adb/c;->f(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_1c
    invoke-static {p2}, Lcom/estrongs/android/util/ap;->bt(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const v0, 0x7f080114

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_1d
    const-string v1, "finder://"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f080307

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_1e
    const-string v1, "ftp://"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const v0, 0x7f0803a4

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_1f
    const-string v1, "bt://"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    const v0, 0x7f0803a1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_20
    const-string v1, "net://"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    const v0, 0x7f0803a0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_21
    const-string v1, "music://"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const v0, 0x7f0801a0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_22
    const-string v1, "pic://"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    const v0, 0x7f0803ab

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_23
    const-string v1, "video://"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    const v0, 0x7f08019f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_24
    const-string v1, "book://"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    const v0, 0x7f08019a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_25
    const-string v1, "encrypt://"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    const v0, 0x7f08019a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_26
    const-string v1, "New"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "remote://"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    const v0, 0x7f0802ee

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_27
    const-string v1, "pcs://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    const-string v1, "pcs://"

    invoke-virtual {v1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    const v0, 0x7f0801a1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_28
    const/16 v1, 0x17

    invoke-static {p2, v1}, Lcom/estrongs/android/util/ap;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_29

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_29
    const v0, 0x7f0801a1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_2a
    const-string v1, "recycle://"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const v0, 0x7f080602

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_2b
    const-string v1, "flashair://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    const v0, 0x7f080311

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_2c
    const-string v1, "adb://"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    const v0, 0x7f08039e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_2d
    invoke-static {p1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/estrongs/android/pop/ad;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2e

    move-object v0, v1

    goto/16 :goto_2

    :cond_2e
    invoke-static {p2}, Lcom/estrongs/android/util/ap;->bg(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    const/4 v0, 0x0

    invoke-static {v0, p2}, Lcom/estrongs/android/util/ap;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_2f
    invoke-static {p2}, Lcom/estrongs/android/util/ap;->bm(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez v0, :cond_4

    invoke-static {p2}, Lcom/estrongs/android/util/ap;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/d/h;->c:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/estrongs/android/ui/d/h;->d:Ljava/util/ArrayList;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/d/h;->e:Z

    return-void
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/d/h;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const v2, 0x7f080220

    invoke-virtual {p0}, Lcom/estrongs/android/ui/d/h;->c()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const v0, 0x7f080199

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const v0, 0x7f0803a1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    const v0, 0x7f080112

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/16 v1, 0xd

    if-ne v0, v1, :cond_4

    const v0, 0x7f080285

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    const v0, 0x7f0803a4

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    const v0, 0x7f0803aa

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    const/16 v1, 0x8

    if-ne v0, v1, :cond_7

    const v0, 0x7f08019f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    const/4 v1, 0x7

    if-ne v0, v1, :cond_8

    const v0, 0x7f0801a0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_8
    const/4 v1, 0x5

    if-ne v0, v1, :cond_9

    const v0, 0x7f0803a0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_9
    const/16 v1, 0xc

    if-ne v0, v1, :cond_a

    const v0, 0x7f0801a1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_a
    const/4 v1, 0x6

    if-ne v0, v1, :cond_b

    const v0, 0x7f0801a2

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_b
    const/16 v1, 0xe

    if-ne v0, v1, :cond_c

    const v0, 0x7f0802ee

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0x17

    if-ne v0, v1, :cond_d

    const v0, 0x7f0805fa

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0x16

    if-ne v0, v1, :cond_e

    const v0, 0x7f080378

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0x1a

    if-ne v0, v1, :cond_f

    const v0, 0x7f08036d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0x1b

    if-ne v0, v1, :cond_10

    const v0, 0x7f08042d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0x1e

    if-ne v0, v1, :cond_11

    const v0, 0x7f080113

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_11
    const/16 v1, 0x1f

    if-ne v0, v1, :cond_12

    const v0, 0x7f0801d4

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_12
    const/16 v1, 0x22

    if-ne v0, v1, :cond_13

    const v0, 0x7f0803bc

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_13
    const/16 v1, 0x23

    if-ne v0, v1, :cond_14

    const v0, 0x7f080307

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_14
    const/16 v1, 0x20

    if-ne v0, v1, :cond_15

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_15
    const/16 v1, 0x21

    if-ne v0, v1, :cond_16

    const v0, 0x7f0802bc

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_16
    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/d/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public c()I
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/d/h;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bh(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "New"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    const-string v1, "#home_page#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x19

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/estrongs/android/util/ap;->J(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/estrongs/android/util/ap;->cj(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v0, 0x1b

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lcom/estrongs/android/util/ap;->L(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->K(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->r(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->o(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    const/4 v0, 0x3

    goto :goto_0

    :cond_6
    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aG(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x5

    goto :goto_0

    :cond_7
    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bg(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x4

    goto :goto_0

    :cond_8
    invoke-static {v0}, Lcom/estrongs/android/util/ap;->V(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v0, 0x7

    goto :goto_0

    :cond_9
    invoke-static {v0}, Lcom/estrongs/android/util/ap;->Z(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v0, 0x8

    goto :goto_0

    :cond_a
    invoke-static {v0}, Lcom/estrongs/android/util/ap;->X(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aY(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aQ(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    const/4 v0, 0x6

    goto :goto_0

    :cond_c
    invoke-static {v0}, Lcom/estrongs/android/util/ap;->ae(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/16 v0, 0x9

    goto :goto_0

    :cond_d
    invoke-static {v0}, Lcom/estrongs/android/util/ap;->ab(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/16 v0, 0x20

    goto :goto_0

    :cond_e
    invoke-static {v0}, Lcom/estrongs/android/util/ap;->ad(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/16 v0, 0x21

    goto/16 :goto_0

    :cond_f
    invoke-static {v0}, Lcom/estrongs/android/util/ap;->ag(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->ai(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_10
    const/16 v0, 0xb

    goto/16 :goto_0

    :cond_11
    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aL(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/16 v0, 0xc

    goto/16 :goto_0

    :cond_12
    if-eqz v0, :cond_13

    const-string v1, "download://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v0, 0xa

    goto/16 :goto_0

    :cond_13
    invoke-static {v0}, Lcom/estrongs/android/util/ap;->ba(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/16 v0, 0xf

    goto/16 :goto_0

    :cond_14
    invoke-static {v0}, Lcom/estrongs/android/util/ap;->u(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/16 v0, 0xd

    goto/16 :goto_0

    :cond_15
    const-string v1, "m.baidu.com/app"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/16 v0, 0x17

    goto/16 :goto_0

    :cond_16
    invoke-static {v0}, Lcom/estrongs/android/util/ap;->v(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/16 v0, 0x16

    goto/16 :goto_0

    :cond_17
    const-string v1, "remote://"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/16 v0, 0xe

    goto/16 :goto_0

    :cond_18
    invoke-static {v0}, Lcom/estrongs/android/util/ap;->cg(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/16 v0, 0x18

    goto/16 :goto_0

    :cond_19
    invoke-static {v0}, Lcom/estrongs/android/util/ap;->ci(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/16 v0, 0x1a

    goto/16 :goto_0

    :cond_1a
    invoke-static {v0}, Lcom/estrongs/android/util/ap;->w(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/16 v0, 0x1c

    goto/16 :goto_0

    :cond_1b
    invoke-static {v0}, Lcom/estrongs/android/util/ap;->M(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/16 v0, 0x1d

    goto/16 :goto_0

    :cond_1c
    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_1d
    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bu(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/16 v0, 0x1e

    goto/16 :goto_0

    :cond_1e
    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bv(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const/16 v0, 0x1f

    goto/16 :goto_0

    :cond_1f
    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bw(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    const/16 v0, 0x22

    goto/16 :goto_0

    :cond_20
    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bx(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/16 v0, 0x23

    goto/16 :goto_0

    :cond_21
    const/16 v0, -0xb

    goto/16 :goto_0
.end method

.method public c(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 6

    const v3, 0x7f02020a

    const v4, 0x7f020205

    const v0, 0x7f02020d

    const v2, 0x7f020209

    const v1, 0x7f020201

    invoke-virtual {p0}, Lcom/estrongs/android/ui/d/h;->c()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    move v1, v0

    :goto_0
    :pswitch_1
    if-nez v1, :cond_0

    :goto_1
    invoke-static {p1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    const v2, 0x7f0d0159

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/ui/theme/at;->b(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :pswitch_2
    const v1, 0x7f020200

    goto :goto_0

    :pswitch_3
    const v1, 0x7f0201fe

    goto :goto_0

    :pswitch_4
    const v1, 0x7f020202

    goto :goto_0

    :pswitch_5
    const v1, 0x7f020203

    goto :goto_0

    :pswitch_6
    const v1, 0x7f02020e

    goto :goto_0

    :pswitch_7
    move v1, v2

    goto :goto_0

    :pswitch_8
    const v1, 0x7f020207

    goto :goto_0

    :pswitch_9
    move v1, v3

    goto :goto_0

    :pswitch_a
    move v1, v0

    goto :goto_0

    :pswitch_b
    move v1, v2

    goto :goto_0

    :pswitch_c
    move v1, v2

    goto :goto_0

    :pswitch_d
    move v1, v4

    goto :goto_0

    :pswitch_e
    const v1, 0x7f02020b

    goto :goto_0

    :pswitch_f
    const v1, 0x7f020206

    goto :goto_0

    :pswitch_10
    const v1, 0x7f02020f

    goto :goto_0

    :pswitch_11
    move v1, v4

    goto :goto_0

    :pswitch_12
    const v1, 0x7f0201ff

    goto :goto_0

    :pswitch_13
    const v1, 0x7f020208

    goto :goto_0

    :pswitch_14
    const v1, 0x7f020204

    goto :goto_0

    :pswitch_15
    const v1, 0x7f02020c

    goto :goto_0

    :pswitch_16
    move v1, v3

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_a
        :pswitch_1
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_10
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_11
        :pswitch_12
        :pswitch_16
        :pswitch_14
        :pswitch_13
        :pswitch_15
    .end packed-switch
.end method

.method public d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const v0, 0x7f080220

    invoke-virtual {p0}, Lcom/estrongs/android/ui/d/h;->c()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const v0, 0x7f0803ab

    :goto_0
    :pswitch_1
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :pswitch_2
    const v0, 0x7f080093

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0803a1

    goto :goto_0

    :pswitch_4
    const v0, 0x7f0803a4

    goto :goto_0

    :pswitch_5
    const v0, 0x7f0803aa

    goto :goto_0

    :pswitch_6
    const v0, 0x7f0803a0

    goto :goto_0

    :pswitch_7
    const v0, 0x7f080199

    goto :goto_0

    :pswitch_8
    const v0, 0x7f08019a

    goto :goto_0

    :pswitch_9
    const v0, 0x7f080112

    goto :goto_0

    :pswitch_a
    const v0, 0x7f08019f

    goto :goto_0

    :pswitch_b
    const v0, 0x7f0801a0

    goto :goto_0

    :pswitch_c
    const v0, 0x7f0801a2

    goto :goto_0

    :pswitch_d
    const v0, 0x7f0801a1

    goto :goto_0

    :pswitch_e
    const v0, 0x7f080285

    goto :goto_0

    :pswitch_f
    const v0, 0x7f0802ee

    goto :goto_0

    :pswitch_10
    const v0, 0x7f080376

    goto :goto_0

    :pswitch_11
    const v0, 0x7f080377

    goto :goto_0

    :pswitch_12
    const v0, 0x7f080378

    goto :goto_0

    :pswitch_13
    const v0, 0x7f0805fa

    goto :goto_0

    :pswitch_14
    const v0, 0x7f080602

    goto :goto_0

    :pswitch_15
    const v0, 0x7f0803a9

    goto :goto_0

    :pswitch_16
    const v0, 0x7f08036d

    goto :goto_0

    :pswitch_17
    const v0, 0x7f08042d

    goto :goto_0

    :pswitch_18
    const v0, 0x7f080311

    goto :goto_0

    :pswitch_19
    const v0, 0x7f08039e

    goto :goto_0

    :pswitch_1a
    const v0, 0x7f080113

    goto :goto_0

    :pswitch_1b
    const v0, 0x7f0801d4

    goto :goto_0

    :pswitch_1c
    const v0, 0x7f0803bc

    goto :goto_0

    :pswitch_1d
    const v0, 0x7f0802bc

    goto :goto_0

    :pswitch_1e
    const v0, 0x7f080307

    goto :goto_0

    :cond_0
    const-string v0, ""

    goto :goto_1

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1
        :pswitch_1d
        :pswitch_1c
        :pswitch_1e
    .end packed-switch
.end method

.method public d()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/ui/d/h;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/d/h;->e:Z

    return v0
.end method
