.class public Lcom/estrongs/android/ui/e/in;
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
    invoke-static {p0}, Lcom/estrongs/android/util/am;->J(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/estrongs/android/util/am;->I(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-static {p0}, Lcom/estrongs/android/util/am;->bg(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/estrongs/android/util/am;->H(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p0}, Lcom/estrongs/android/util/am;->bg(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcom/estrongs/android/util/am;->aw(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p0}, Lcom/estrongs/android/util/am;->bg(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x3

    goto :goto_0

    :cond_5
    invoke-static {p0}, Lcom/estrongs/android/util/am;->S(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x6

    goto :goto_0

    :cond_6
    invoke-static {p0}, Lcom/estrongs/android/util/am;->U(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x7

    goto :goto_0

    :cond_7
    invoke-static {p0}, Lcom/estrongs/android/util/am;->T(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x5

    goto :goto_0

    :cond_8
    invoke-static {p0}, Lcom/estrongs/android/util/am;->V(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v0, 0x8

    goto :goto_0

    :cond_9
    invoke-static {p0}, Lcom/estrongs/android/util/am;->aZ(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v0, 0x4

    goto :goto_0

    :cond_a
    invoke-static {p0}, Lcom/estrongs/android/util/am;->W(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {p0}, Lcom/estrongs/android/util/am;->af(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    const/16 v0, 0x9

    goto :goto_0

    :cond_c
    invoke-static {p0}, Lcom/estrongs/android/util/am;->aO(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/16 v0, 0xe

    goto :goto_0

    :cond_d
    invoke-static {p0}, Lcom/estrongs/android/util/am;->aG(Ljava/lang/String;)Z

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
    invoke-static {p0}, Lcom/estrongs/android/util/am;->Y(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {p0}, Lcom/estrongs/android/util/am;->af(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    invoke-static {p0}, Lcom/estrongs/android/util/am;->ae(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v0, 0x18

    goto/16 :goto_0

    :cond_11
    const/16 v0, 0x10

    goto/16 :goto_0

    :cond_12
    invoke-static {p0}, Lcom/estrongs/android/util/am;->r(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v0, 0x11

    goto/16 :goto_0

    :cond_13
    invoke-static {p0}, Lcom/estrongs/android/util/am;->aQ(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/16 v0, 0x13

    goto/16 :goto_0

    :cond_14
    invoke-static {p0}, Lcom/estrongs/android/util/am;->s(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/16 v0, 0x12

    goto/16 :goto_0

    :cond_15
    invoke-static {p0}, Lcom/estrongs/android/util/am;->aB(Ljava/lang/String;)Z

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
    invoke-static {p0}, Lcom/estrongs/android/util/am;->q(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/16 v0, 0x15

    goto/16 :goto_0

    :cond_18
    invoke-static {p0}, Lcom/estrongs/android/util/am;->t(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/16 v0, 0x16

    goto/16 :goto_0

    :cond_19
    invoke-static {p0}, Lcom/estrongs/android/util/am;->bP(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-static {p0}, Lcom/estrongs/android/util/am;->bW(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    :cond_1a
    const/16 v0, 0x17

    goto/16 :goto_0

    :cond_1b
    invoke-static {p0}, Lcom/estrongs/android/util/am;->bQ(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-static {p0}, Lcom/estrongs/android/util/am;->aW(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-static {p0}, Lcom/estrongs/android/util/am;->bz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/am;->bQ(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    :cond_1c
    const/16 v0, 0x1a

    goto/16 :goto_0

    :cond_1d
    invoke-static {p0}, Lcom/estrongs/android/util/am;->bR(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/16 v0, 0x1b

    goto/16 :goto_0

    :cond_1e
    invoke-static {p0}, Lcom/estrongs/android/util/am;->K(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/estrongs/android/util/am;->bg(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const/16 v0, 0x1c

    goto/16 :goto_0

    :cond_1f
    invoke-static {p0}, Lcom/estrongs/android/util/am;->M(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    const/16 v0, 0x1e

    goto/16 :goto_0

    :cond_20
    invoke-static {p0}, Lcom/estrongs/android/util/am;->O(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v0, 0x1f

    goto/16 :goto_0
.end method
