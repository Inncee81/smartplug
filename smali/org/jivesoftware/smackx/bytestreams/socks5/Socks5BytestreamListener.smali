.class public abstract Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamListener;
.super Ljava/lang/Object;
.source "Socks5BytestreamListener.java"

# interfaces
.implements Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public incomingBytestreamRequest(Lorg/jivesoftware/smackx/bytestreams/BytestreamRequest;)V
    .locals 0

    .prologue
    .line 33
    check-cast p1, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;

    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamListener;->incomingBytestreamRequest(Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;)V

    .line 34
    return-void
.end method

.method public abstract incomingBytestreamRequest(Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;)V
.end method
