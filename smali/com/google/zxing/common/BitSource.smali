.class public final Lcom/google/zxing/common/BitSource;
.super Ljava/lang/Object;
.source "BitSource.java"


# instance fields
.field private bitOffset:I

.field private byteOffset:I

.field private final bytes:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .param p1, "bytes"    # [B

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/zxing/common/BitSource;->bytes:[B

    .line 40
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/zxing/common/BitSource;->bytes:[B

    array-length v0, v0

    iget v1, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getByteOffset()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    return v0
.end method

.method public readBits(I)I
    .locals 10
    .param p1, "numBits"    # I

    .prologue
    const/16 v9, 0xff

    const/16 v8, 0x8

    .line 56
    const/4 v5, 0x1

    if-lt p1, v5, :cond_0

    const/16 v5, 0x20

    if-le p1, v5, :cond_1

    .line 57
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 60
    :cond_1
    const/4 v3, 0x0

    .line 63
    .local v3, "result":I
    iget v5, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    if-lez v5, :cond_2

    .line 64
    iget v5, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    rsub-int/lit8 v0, v5, 0x8

    .line 65
    .local v0, "bitsLeft":I
    if-ge p1, v0, :cond_3

    move v4, p1

    .line 66
    .local v4, "toRead":I
    :goto_0
    sub-int v1, v0, v4

    .line 67
    .local v1, "bitsToNotRead":I
    rsub-int/lit8 v5, v4, 0x8

    shr-int v5, v9, v5

    shl-int v2, v5, v1

    .line 68
    .local v2, "mask":I
    iget-object v5, p0, Lcom/google/zxing/common/BitSource;->bytes:[B

    iget v6, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    aget-byte v5, v5, v6

    and-int/2addr v5, v2

    shr-int v3, v5, v1

    .line 69
    sub-int/2addr p1, v4

    .line 70
    iget v5, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    .line 71
    iget v5, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    if-ne v5, v8, :cond_2

    .line 72
    const/4 v5, 0x0

    iput v5, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    .line 73
    iget v5, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    .line 78
    .end local v0    # "bitsLeft":I
    .end local v1    # "bitsToNotRead":I
    .end local v2    # "mask":I
    .end local v4    # "toRead":I
    :cond_2
    if-lez p1, :cond_5

    .line 79
    :goto_1
    if-lt p1, v8, :cond_4

    .line 80
    shl-int/lit8 v5, v3, 0x8

    iget-object v6, p0, Lcom/google/zxing/common/BitSource;->bytes:[B

    iget v7, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    or-int v3, v5, v6

    .line 81
    iget v5, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    .line 82
    add-int/lit8 p1, p1, -0x8

    goto :goto_1

    .restart local v0    # "bitsLeft":I
    :cond_3
    move v4, v0

    .line 65
    goto :goto_0

    .line 86
    .end local v0    # "bitsLeft":I
    :cond_4
    if-lez p1, :cond_5

    .line 87
    rsub-int/lit8 v1, p1, 0x8

    .line 88
    .restart local v1    # "bitsToNotRead":I
    shr-int v5, v9, v1

    shl-int v2, v5, v1

    .line 89
    .restart local v2    # "mask":I
    shl-int v5, v3, p1

    iget-object v6, p0, Lcom/google/zxing/common/BitSource;->bytes:[B

    iget v7, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    aget-byte v6, v6, v7

    and-int/2addr v6, v2

    shr-int/2addr v6, v1

    or-int v3, v5, v6

    .line 90
    iget v5, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    add-int/2addr v5, p1

    iput v5, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    .line 94
    .end local v1    # "bitsToNotRead":I
    .end local v2    # "mask":I
    :cond_5
    return v3
.end method
