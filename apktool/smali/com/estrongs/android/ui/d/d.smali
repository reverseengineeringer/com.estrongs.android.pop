.class public Lcom/estrongs/android/ui/d/d;
.super Ljava/lang/Object;


# static fields
.field public static final b:Lcom/estrongs/android/ui/d/d;


# instance fields
.field private a:Landroid/graphics/Bitmap;

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

    new-instance v0, Lcom/estrongs/android/ui/d/d;

    const-string v1, "Null Window Info"

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/d/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/estrongs/android/ui/d/d;->b:Lcom/estrongs/android/ui/d/d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/d/d;->e:Z

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/d/d;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->aW(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->aY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    const-string v1, "New"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    const-string v1, "#home_page#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x19

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->H(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bR(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x1b

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->J(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->I(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->p(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const/4 v0, 0x3

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->aw(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->aV(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->S(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x7

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->U(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x8

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->T(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->aO(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->aG(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    const/4 v0, 0x6

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->V(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x9

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->W(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->Y(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    const/16 v0, 0xb

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->aB(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 v0, 0xc

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    const-string v1, "download://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v0, 0xa

    goto/16 :goto_0

    :cond_11
    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->aQ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0xf

    goto/16 :goto_0

    :cond_12
    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->s(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 v0, 0xd

    goto/16 :goto_0

    :cond_13
    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    const-string v1, "m.baidu.com/app"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 v0, 0x17

    goto/16 :goto_0

    :cond_14
    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->t(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0x16

    goto/16 :goto_0

    :cond_15
    const-string v0, "remote://"

    iget-object v1, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/16 v0, 0xe

    goto/16 :goto_0

    :cond_16
    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 v0, 0x18

    goto/16 :goto_0

    :cond_17
    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bQ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/16 v0, 0x1a

    goto/16 :goto_0

    :cond_18
    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->u(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 v0, 0x1c

    goto/16 :goto_0

    :cond_19
    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->K(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/16 v0, 0x1d

    goto/16 :goto_0

    :cond_1a
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/ui/d/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const v7, 0x7f0b036f

    const v6, 0x7f0b036e

    const v5, 0x7f0b0164

    const v4, 0x7f0b0163

    const v3, 0x7f0b0056

    invoke-static {p2}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/estrongs/android/util/am;->az(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Lcom/estrongs/android/util/am;->bL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez p2, :cond_5

    const v0, 0x7f0b0021

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    const-string v1, "#home_page#"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const v0, 0x7f0b0450

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    const-string v1, "pcsres://"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v0, 0x7f0b055c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    const-string v1, "smb://"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const v0, 0x7f0b0052

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

    const v0, 0x7f0b0395

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    const-string v1, "search:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f0b0365

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    invoke-static {p2}, Lcom/estrongs/android/util/am;->aO(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_8
    invoke-static {p2}, Lcom/estrongs/android/util/am;->aG(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {p2}, Lcom/estrongs/android/util/am;->aF(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const v0, 0x7f0b02d4

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_9
    iget-object v1, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p2}, Lcom/estrongs/android/util/am;->aJ(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p2}, Lcom/estrongs/android/util/am;->ap(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const v0, 0x7f0b00a9

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_a
    invoke-static {p2}, Lcom/estrongs/android/util/am;->aq(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const v0, 0x7f0b00aa

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_b
    invoke-static {p2}, Lcom/estrongs/android/util/am;->ar(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f0b00ab

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_c
    invoke-static {p2}, Lcom/estrongs/android/util/am;->Y(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {p2}, Lcom/estrongs/android/util/am;->aa(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {p2}, Lcom/estrongs/android/util/am;->Z(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_e
    invoke-static {p2}, Lcom/estrongs/android/util/am;->ab(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_f
    invoke-static {p2}, Lcom/estrongs/android/util/am;->ac(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_10
    invoke-static {p2}, Lcom/estrongs/android/util/am;->ad(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_11
    invoke-static {p2}, Lcom/estrongs/android/util/am;->ae(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const v0, 0x7f0b0534

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_12
    invoke-static {p2}, Lcom/estrongs/android/util/am;->af(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f0b0168

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_13
    invoke-static {p2}, Lcom/estrongs/android/util/am;->W(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    const v0, 0x7f0b0370

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_14
    iget-object v1, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    const-string v2, "download://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    const v0, 0x7f0b037f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_15
    invoke-static {p2}, Lcom/estrongs/android/util/am;->aQ(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->aS(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->aR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_16
    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->aU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_17
    iget-object v1, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    const-string v2, "du://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/bd;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f0b0136

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_18
    iget-object v1, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/am;->bR(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    const v0, 0x7f0b0499

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_19
    invoke-static {p2}, Lcom/estrongs/android/util/am;->M(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p2}, Lcom/estrongs/fs/impl/adb/c;->f(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_4
    const v0, 0x7f0b0370

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_1a
    const-string v1, "ftp://"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const v0, 0x7f0b0053

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_1b
    const-string v1, "bt://"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const v0, 0x7f0b0055

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_1c
    const-string v1, "net://"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const v0, 0x7f0b0054

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_1d
    const-string v1, "music://"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const v0, 0x7f0b005e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_1e
    const-string v1, "pic://"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_1f
    const-string v1, "video://"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    const v0, 0x7f0b0061

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_20
    const-string v1, "book://"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    const v0, 0x7f0b0060

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_21
    const-string v1, "New"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "remote://"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const v0, 0x7f0b0312

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_22
    const-string v1, "pcs://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    const-string v1, "pcs://"

    invoke-virtual {v1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    const v0, 0x7f0b04c7

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_23
    const/16 v1, 0x17

    invoke-static {p2, v1}, Lcom/estrongs/android/util/am;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_24

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_24
    const v0, 0x7f0b04c7

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_25
    const-string v1, "recycle://"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    const v0, 0x7f0b0432

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_26
    const-string v1, "flashair://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    const v0, 0x7f0b056c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_27
    const-string v1, "adb://"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    const v0, 0x7f0b0572

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_28
    invoke-static {p1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/estrongs/android/pop/ad;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_29

    move-object v0, v1

    goto/16 :goto_2

    :cond_29
    invoke-static {p2}, Lcom/estrongs/android/util/am;->aV(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v0, 0x0

    invoke-static {v0, p2}, Lcom/estrongs/android/util/am;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_2a
    invoke-static {p2}, Lcom/estrongs/android/util/am;->bb(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez v0, :cond_4

    invoke-static {p2}, Lcom/estrongs/android/util/am;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

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

    iput-object p1, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/estrongs/android/ui/d/d;->d:Ljava/util/ArrayList;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/d/d;->e:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/ui/d/d;->a()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const v0, 0x7f0b005f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    const v0, 0x7f0b0180

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const v0, 0x7f0b0055

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    const v0, 0x7f0b037f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/16 v1, 0xd

    if-ne v0, v1, :cond_4

    const v0, 0x7f0b0136

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    const v0, 0x7f0b0053

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    const v0, 0x7f0b0052

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    const/16 v1, 0x8

    if-ne v0, v1, :cond_7

    const v0, 0x7f0b0061

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    const/4 v1, 0x7

    if-ne v0, v1, :cond_8

    const v0, 0x7f0b005e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_8
    const/4 v1, 0x5

    if-ne v0, v1, :cond_9

    const v0, 0x7f0b0054

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_9
    const/16 v1, 0xc

    if-ne v0, v1, :cond_a

    const v0, 0x7f0b04c7

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_a
    const/4 v1, 0x6

    if-ne v0, v1, :cond_b

    const v0, 0x7f0b005d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_b
    const/16 v1, 0xe

    if-ne v0, v1, :cond_c

    const v0, 0x7f0b0312

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0x17

    if-ne v0, v1, :cond_d

    const v0, 0x7f0b0116

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0x16

    if-ne v0, v1, :cond_e

    const v0, 0x7f0b0410

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0x1a

    if-ne v0, v1, :cond_f

    const v0, 0x7f0b055c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0x1b

    if-ne v0, v1, :cond_10

    const v0, 0x7f0b0499

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_10
    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/d/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public c()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->a:Landroid/graphics/Bitmap;

    return-object v0
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

    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/d/d;->e:Z

    return v0
.end method
