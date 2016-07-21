.class public Lcom/estrongs/android/ui/e/ik;
.super Ljava/lang/Object;


# direct methods
.method public static final a(I)I
    .locals 0

    sparse-switch p0, :sswitch_data_0

    :goto_0
    return p0

    :sswitch_0
    const/16 p0, 0xa

    goto :goto_0

    :sswitch_1
    const/16 p0, 0xb

    goto :goto_0

    :sswitch_2
    const/16 p0, 0xc

    goto :goto_0

    :sswitch_3
    const/16 p0, 0xd

    goto :goto_0

    :sswitch_4
    const/16 p0, 0x1d

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x1c -> :sswitch_4
    .end sparse-switch
.end method

.method public static a(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    const-string v1, "#home_page#"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x19

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->L(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->K(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->br(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->J(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->br(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->aG(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->br(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x3

    goto :goto_0

    :cond_5
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->V(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x6

    goto :goto_0

    :cond_6
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->Z(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x7

    goto :goto_0

    :cond_7
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->X(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x5

    goto :goto_0

    :cond_8
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->ae(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v0, 0x8

    goto :goto_0

    :cond_9
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->bk(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v0, 0x4

    goto :goto_0

    :cond_a
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->ag(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->ap(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    const/16 v0, 0x9

    goto :goto_0

    :cond_c
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->aY(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/16 v0, 0xe

    goto :goto_0

    :cond_d
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->aQ(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/16 v0, 0xf

    goto :goto_0

    :cond_e
    if-eqz p0, :cond_f

    const-string v1, "New"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_f
    const/4 v0, -0x1

    goto/16 :goto_0

    :cond_10
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->ai(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->ap(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->ao(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v0, 0x18

    goto/16 :goto_0

    :cond_11
    const/16 v0, 0x10

    goto/16 :goto_0

    :cond_12
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->t(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v0, 0x11

    goto/16 :goto_0

    :cond_13
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->ab(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/16 v0, 0x25

    goto/16 :goto_0

    :cond_14
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->u(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/16 v0, 0x12

    goto/16 :goto_0

    :cond_15
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->aL(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "PCS_DRIVE_Js1a7M5e_9yAcTvFX"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    :cond_16
    const/16 v0, 0x14

    goto/16 :goto_0

    :cond_17
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->s(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/16 v0, 0x15

    goto/16 :goto_0

    :cond_18
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->v(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/16 v0, 0x16

    goto/16 :goto_0

    :cond_19
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->cg(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->cp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    :cond_1a
    const/16 v0, 0x17

    goto/16 :goto_0

    :cond_1b
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->ci(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->bh(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->bQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->ci(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    :cond_1c
    const/16 v0, 0x1a

    goto/16 :goto_0

    :cond_1d
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->cj(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/16 v0, 0x1b

    goto/16 :goto_0

    :cond_1e
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->M(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->br(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const/16 v0, 0x1c

    goto/16 :goto_0

    :cond_1f
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->O(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    const/16 v0, 0x1e

    goto/16 :goto_0

    :cond_20
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->Q(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v0, 0x1f

    goto/16 :goto_0

    :cond_21
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->bu(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/16 v0, 0x20

    goto/16 :goto_0

    :cond_22
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->bv(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    const/16 v0, 0x21

    goto/16 :goto_0

    :cond_23
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->bw(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/16 v0, 0x22

    goto/16 :goto_0

    :cond_24
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->bx(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    const/16 v0, 0x23

    goto/16 :goto_0

    :cond_25
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->ad(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x24

    goto/16 :goto_0
.end method
