.class final Lcom/kenai/jbosh/AttrCharsets;
.super Lcom/kenai/jbosh/AbstractAttr;
.source "AttrCharsets.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kenai/jbosh/AbstractAttr",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final charsets:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/kenai/jbosh/AbstractAttr;-><init>(Ljava/lang/Comparable;)V

    .line 37
    const-string v0, "\\ +"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kenai/jbosh/AttrCharsets;->charsets:[Ljava/lang/String;

    .line 38
    return-void
.end method

.method static createFromString(Ljava/lang/String;)Lcom/kenai/jbosh/AttrCharsets;
    .locals 1

    .prologue
    .line 48
    if-nez p0, :cond_0

    .line 49
    const/4 v0, 0x0

    .line 51
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/kenai/jbosh/AttrCharsets;

    invoke-direct {v0, p0}, Lcom/kenai/jbosh/AttrCharsets;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method isAccepted(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 63
    iget-object v2, p0, Lcom/kenai/jbosh/AttrCharsets;->charsets:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 64
    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 65
    const/4 v0, 0x1

    .line 68
    :cond_0
    return v0

    .line 63
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
