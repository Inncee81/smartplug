.class public Lorg/bouncycastle/crypto/engines/DESedeEngine;
.super Lorg/bouncycastle/crypto/engines/DESEngine;


# static fields
.field protected static final BLOCK_SIZE:I = 0x8


# instance fields
.field private forEncryption:Z

.field private workingKey1:[I

.field private workingKey2:[I

.field private workingKey3:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DESEngine;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey2:[I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "DESede"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 9

    const/16 v8, 0x18

    const/4 v0, 0x1

    const/16 v7, 0x8

    const/4 v1, 0x0

    instance-of v2, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to DESede init - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v2

    new-array v3, v7, [B

    new-array v4, v7, [B

    new-array v5, v7, [B

    array-length v6, v2

    if-le v6, v8, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key size greater than 24 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->forEncryption:Z

    array-length v6, v2

    if-ne v6, v8, :cond_3

    array-length v6, v3

    invoke-static {v2, v1, v3, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v4

    invoke-static {v2, v7, v4, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v6, 0x10

    array-length v7, v5

    invoke-static {v2, v6, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, p1, v3}, Lorg/bouncycastle/crypto/engines/DESedeEngine;->generateWorkingKey(Z[B)[I

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    if-nez p1, :cond_2

    :goto_0
    invoke-virtual {p0, v0, v4}, Lorg/bouncycastle/crypto/engines/DESedeEngine;->generateWorkingKey(Z[B)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey2:[I

    invoke-virtual {p0, p1, v5}, Lorg/bouncycastle/crypto/engines/DESedeEngine;->generateWorkingKey(Z[B)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    :goto_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    array-length v5, v3

    invoke-static {v2, v1, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v4

    invoke-static {v2, v7, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, p1, v3}, Lorg/bouncycastle/crypto/engines/DESedeEngine;->generateWorkingKey(Z[B)[I

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    if-nez p1, :cond_4

    :goto_2
    invoke-virtual {p0, v0, v4}, Lorg/bouncycastle/crypto/engines/DESedeEngine;->generateWorkingKey(Z[B)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey2:[I

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public processBlock([BI[BI)I
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DESede engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/lit8 v0, p2, 0x8

    array-length v1, p1

    if-le v0, v1, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/lit8 v0, p4, 0x8

    array-length v1, p3

    if-le v0, v1, :cond_2

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->forEncryption:Z

    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey2:[I

    move-object v0, p0

    move-object v2, p3

    move v3, p4

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    move-object v0, p0

    move-object v2, p3

    move v3, p4

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    :goto_0
    const/16 v0, 0x8

    return v0

    :cond_3
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey2:[I

    move-object v0, p0

    move-object v2, p3

    move v3, p4

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    move-object v0, p0

    move-object v2, p3

    move v3, p4

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    return-void
.end method
