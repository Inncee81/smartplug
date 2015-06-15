.class public Lorg/bouncycastle/crypto/engines/AESWrapEngine;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/Wrapper;


# instance fields
.field private engine:Lorg/bouncycastle/crypto/BlockCipher;

.field private forWrapping:Z

.field private iv:[B

.field private param:Lorg/bouncycastle/crypto/params/KeyParameter;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/AESEngine;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->iv:[B

    return-void

    :array_0
    .array-data 1
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
    .end array-data
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "AES"

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->forWrapping:Z

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_1

    check-cast p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->param:Lorg/bouncycastle/crypto/params/KeyParameter;

    :cond_0
    return-void

    :cond_1
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->iv:[B

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->param:Lorg/bouncycastle/crypto/params/KeyParameter;

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->iv:[B

    array-length v0, v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "IV not multiple of 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unwrap([BII)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->forWrapping:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not set for unwrapping"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    div-int/lit8 v0, p3, 0x8

    mul-int/lit8 v1, v0, 0x8

    if-eq v1, p3, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "unwrap data must be a multiple of 8 bytes"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->iv:[B

    array-length v1, v1

    sub-int v1, p3, v1

    new-array v5, v1, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->iv:[B

    array-length v1, v1

    new-array v6, v1, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->iv:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x8

    new-array v7, v1, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->iv:[B

    array-length v3, v3

    invoke-static {p1, v1, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->iv:[B

    array-length v1, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->iv:[B

    array-length v3, v3

    sub-int v3, p3, v3

    invoke-static {p1, v1, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->param:Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {v1, v2, v3}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    add-int/lit8 v3, v0, -0x1

    const/4 v0, 0x5

    move v4, v0

    :goto_0
    if-ltz v4, :cond_4

    move v2, v3

    :goto_1
    const/4 v0, 0x1

    if-lt v2, v0, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->iv:[B

    array-length v8, v8

    invoke-static {v6, v0, v7, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v2, -0x1

    mul-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->iv:[B

    array-length v1, v1

    const/16 v8, 0x8

    invoke-static {v5, v0, v7, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    mul-int v0, v3, v4

    add-int v1, v0, v2

    const/4 v0, 0x1

    :goto_2
    if-eqz v1, :cond_2

    int-to-byte v8, v1

    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->iv:[B

    array-length v9, v9

    sub-int/2addr v9, v0

    aget-byte v10, v7, v9

    xor-int/2addr v8, v10

    int-to-byte v8, v8

    aput-byte v8, v7, v9

    ushr-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    const/4 v1, 0x0

    const/4 v8, 0x0

    invoke-interface {v0, v7, v1, v7, v8}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v8, 0x8

    invoke-static {v7, v0, v6, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x8

    add-int/lit8 v1, v2, -0x1

    mul-int/lit8 v1, v1, 0x8

    const/16 v8, 0x8

    invoke-static {v7, v0, v5, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->iv:[B

    array-length v1, v1

    if-eq v0, v1, :cond_6

    aget-byte v1, v6, v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->iv:[B

    aget-byte v2, v2, v0

    if-eq v1, v2, :cond_5

    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "checksum failed"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    return-object v5
.end method

.method public wrap([BII)[B
    .locals 10

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->forWrapping:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not set for wrapping"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    div-int/lit8 v4, p3, 0x8

    mul-int/lit8 v0, v4, 0x8

    if-eq v0, p3, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "wrap data must be a multiple of 8 bytes"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->iv:[B

    array-length v0, v0

    add-int/2addr v0, p3

    new-array v5, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->iv:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x8

    new-array v6, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->iv:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->iv:[B

    array-length v3, v3

    invoke-static {v0, v1, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->iv:[B

    array-length v1, v1

    invoke-static {p1, v0, v5, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->param:Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {v0, v1, v2}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    const/4 v0, 0x6

    if-eq v3, v0, :cond_4

    const/4 v0, 0x1

    move v2, v0

    :goto_1
    if-gt v2, v4, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->iv:[B

    array-length v7, v7

    invoke-static {v5, v0, v6, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    mul-int/lit8 v0, v2, 0x8

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->iv:[B

    array-length v1, v1

    const/16 v7, 0x8

    invoke-static {v5, v0, v6, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    const/4 v1, 0x0

    const/4 v7, 0x0

    invoke-interface {v0, v6, v1, v6, v7}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    mul-int v0, v4, v3

    add-int v1, v0, v2

    const/4 v0, 0x1

    :goto_2
    if-eqz v1, :cond_2

    int-to-byte v7, v1

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->iv:[B

    array-length v8, v8

    sub-int/2addr v8, v0

    aget-byte v9, v6, v8

    xor-int/2addr v7, v9

    int-to-byte v7, v7

    aput-byte v7, v6, v8

    ushr-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v7, 0x8

    invoke-static {v6, v0, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x8

    mul-int/lit8 v1, v2, 0x8

    const/16 v7, 0x8

    invoke-static {v6, v0, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_4
    return-object v5
.end method
