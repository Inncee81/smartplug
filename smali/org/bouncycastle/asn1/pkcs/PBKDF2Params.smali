.class public Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;
.super Lorg/bouncycastle/asn1/ASN1Encodable;


# instance fields
.field iterationCount:Lorg/bouncycastle/asn1/DERInteger;

.field keyLength:Lorg/bouncycastle/asn1/DERInteger;

.field octStr:Lorg/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    iput-object v0, p0, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->octStr:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/DERInteger;

    iput-object v0, p0, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->iterationCount:Lorg/bouncycastle/asn1/DERInteger;

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/DERInteger;

    iput-object v0, p0, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->keyLength:Lorg/bouncycastle/asn1/DERInteger;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->keyLength:Lorg/bouncycastle/asn1/DERInteger;

    goto :goto_0
.end method

.method public constructor <init>([BI)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->octStr:Lorg/bouncycastle/asn1/ASN1OctetString;

    new-instance v0, Lorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->iterationCount:Lorg/bouncycastle/asn1/DERInteger;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in factory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getIterationCount()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->iterationCount:Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getKeyLength()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->keyLength:Lorg/bouncycastle/asn1/DERInteger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->keyLength:Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSalt()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->octStr:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->octStr:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->iterationCount:Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->keyLength:Lorg/bouncycastle/asn1/DERInteger;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->keyLength:Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
