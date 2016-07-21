.class public final Lcom/estrongs/android/g/e;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/impl/auth/NTLMEngine;


# instance fields
.field final synthetic a:Lcom/estrongs/android/g/c;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/g/c;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/g/e;->a:Lcom/estrongs/android/g/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateType1Msg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljcifs/ntlmssp/Type1Message;

    const v1, -0x5ff77ffc

    invoke-direct {v0, v1, p1, p2}, Ljcifs/ntlmssp/Type1Message;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljcifs/ntlmssp/Type1Message;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljcifs/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public generateType3Msg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    :try_start_0
    new-instance v1, Ljcifs/ntlmssp/Type2Message;

    invoke-static {p5}, Ljcifs/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljcifs/ntlmssp/Type2Message;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljcifs/ntlmssp/Type2Message;->getFlags()I

    move-result v0

    const v2, -0x30001

    and-int v6, v0, v2

    new-instance v0, Ljcifs/ntlmssp/Type3Message;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Ljcifs/ntlmssp/Type3Message;-><init>(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljcifs/ntlmssp/Type3Message;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljcifs/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/http/impl/auth/NTLMEngineException;

    const-string v2, "Invalid NTLM type 2 message"

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
