.class public Lorg/bouncycastle/jce/provider/JCEECDHKeyAgreement$DHC;
.super Lorg/bouncycastle/jce/provider/JCEECDHKeyAgreement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/JCEECDHKeyAgreement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DHC"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/agreement/ECDHCBasicAgreement;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/agreement/ECDHCBasicAgreement;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/JCEECDHKeyAgreement;-><init>(Lorg/bouncycastle/crypto/BasicAgreement;)V

    return-void
.end method
