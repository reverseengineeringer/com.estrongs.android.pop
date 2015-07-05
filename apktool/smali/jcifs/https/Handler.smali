.class public Ljcifs/https/Handler;
.super Ljcifs/http/Handler;


# static fields
.field public static final DEFAULT_HTTPS_PORT:I = 0x1bb


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljcifs/http/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDefaultPort()I
    .locals 1

    const/16 v0, 0x1bb

    return v0
.end method
