.class public Lorg/bouncycastle/jce/provider/JCEBlockCipher$AESOFB;
.super Lorg/bouncycastle/jce/provider/JCEBlockCipher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/JCEBlockCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AESOFB"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v2, 0x80

    new-instance v0, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;

    new-instance v1, Lorg/bouncycastle/crypto/engines/AESFastEngine;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/engines/AESFastEngine;-><init>()V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;I)V

    invoke-direct {p0, v0, v2}, Lorg/bouncycastle/jce/provider/JCEBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;I)V

    return-void
.end method
