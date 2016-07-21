.class public Ljcifs/dcerpc/DcerpcBind;
.super Ljcifs/dcerpc/DcerpcMessage;


# static fields
.field static final result_message:[Ljava/lang/String;


# instance fields
.field binding:Ljcifs/dcerpc/DcerpcBinding;

.field max_recv:I

.field max_xmit:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "DCERPC_BIND_ERR_ABSTRACT_SYNTAX_NOT_SUPPORTED"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "DCERPC_BIND_ERR_PROPOSED_TRANSFER_SYNTAXES_NOT_SUPPORTED"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "DCERPC_BIND_ERR_LOCAL_LIMIT_EXCEEDED"

    aput-object v2, v0, v1

    sput-object v0, Ljcifs/dcerpc/DcerpcBind;->result_message:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljcifs/dcerpc/DcerpcMessage;-><init>()V

    return-void
.end method

.method constructor <init>(Ljcifs/dcerpc/DcerpcBinding;Ljcifs/dcerpc/DcerpcHandle;)V
    .locals 1

    invoke-direct {p0}, Ljcifs/dcerpc/DcerpcMessage;-><init>()V

    iput-object p1, p0, Ljcifs/dcerpc/DcerpcBind;->binding:Ljcifs/dcerpc/DcerpcBinding;

    iget v0, p2, Ljcifs/dcerpc/DcerpcHandle;->max_xmit:I

    iput v0, p0, Ljcifs/dcerpc/DcerpcBind;->max_xmit:I

    iget v0, p2, Ljcifs/dcerpc/DcerpcHandle;->max_recv:I

    iput v0, p0, Ljcifs/dcerpc/DcerpcBind;->max_recv:I

    const/16 v0, 0xb

    iput v0, p0, Ljcifs/dcerpc/DcerpcBind;->ptype:I

    const/4 v0, 0x3

    iput v0, p0, Ljcifs/dcerpc/DcerpcBind;->flags:I

    return-void
.end method

.method static getResultMessage(I)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x4

    if-ge p0, v2, :cond_0

    sget-object v0, Ljcifs/dcerpc/DcerpcBind;->result_message:[Ljava/lang/String;

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, v2}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public decode_out(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 2

    const/4 v1, 0x4

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v0

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v0

    iput v0, p0, Ljcifs/dcerpc/DcerpcBind;->result:I

    invoke-virtual {p1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    const/16 v0, 0x14

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    return-void
.end method

.method public encode_in(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Ljcifs/dcerpc/DcerpcBind;->max_xmit:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    iget v0, p0, Ljcifs/dcerpc/DcerpcBind;->max_recv:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    invoke-virtual {p1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    invoke-virtual {p1, v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    iget-object v0, p0, Ljcifs/dcerpc/DcerpcBind;->binding:Ljcifs/dcerpc/DcerpcBinding;

    iget-object v0, v0, Ljcifs/dcerpc/DcerpcBinding;->uuid:Ljcifs/dcerpc/UUID;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/UUID;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    iget-object v0, p0, Ljcifs/dcerpc/DcerpcBind;->binding:Ljcifs/dcerpc/DcerpcBinding;

    iget v0, v0, Ljcifs/dcerpc/DcerpcBinding;->major:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    iget-object v0, p0, Ljcifs/dcerpc/DcerpcBind;->binding:Ljcifs/dcerpc/DcerpcBinding;

    iget v0, v0, Ljcifs/dcerpc/DcerpcBinding;->minor:I

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    sget-object v0, Ljcifs/dcerpc/DcerpcBind;->DCERPC_UUID_SYNTAX_NDR:Ljcifs/dcerpc/UUID;

    invoke-virtual {v0, p1}, Ljcifs/dcerpc/UUID;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    return-void
.end method

.method public getOpnum()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getResult()Ljcifs/dcerpc/DcerpcException;
    .locals 2

    iget v0, p0, Ljcifs/dcerpc/DcerpcBind;->result:I

    if-eqz v0, :cond_0

    new-instance v0, Ljcifs/dcerpc/DcerpcException;

    iget v1, p0, Ljcifs/dcerpc/DcerpcBind;->result:I

    invoke-static {v1}, Ljcifs/dcerpc/DcerpcBind;->getResultMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljcifs/dcerpc/DcerpcException;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
