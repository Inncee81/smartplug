.class public Lorg/bouncycastle/jce/provider/JDKDSASigner$ecNR;
.super Lorg/bouncycastle/jce/provider/JDKDSASigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/JDKDSASigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ecNR"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v0, "SHA1withECNR"

    new-instance v1, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    new-instance v2, Lorg/bouncycastle/crypto/signers/ECNRSigner;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/signers/ECNRSigner;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/jce/provider/JDKDSASigner;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/DSA;)V

    return-void
.end method
