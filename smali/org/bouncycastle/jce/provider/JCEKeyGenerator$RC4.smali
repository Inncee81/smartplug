.class public Lorg/bouncycastle/jce/provider/JCEKeyGenerator$RC4;
.super Lorg/bouncycastle/jce/provider/JCEKeyGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/JCEKeyGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RC4"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v0, "RC4"

    const/16 v1, 0x80

    new-instance v2, Lorg/bouncycastle/crypto/CipherKeyGenerator;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/CipherKeyGenerator;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/jce/provider/JCEKeyGenerator;-><init>(Ljava/lang/String;ILorg/bouncycastle/crypto/CipherKeyGenerator;)V

    return-void
.end method
