.class public Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;
.super Ljava/util/AbstractMap;
.source "AbstractHashedMap.java"

# interfaces
.implements Lorg/jivesoftware/smack/util/collections/IterableMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashIterator;,
        Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;,
        Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$ValuesIterator;,
        Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$Values;,
        Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$KeySetIterator;,
        Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$KeySet;,
        Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$EntrySetIterator;,
        Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$EntrySet;,
        Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashMapIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Lorg/jivesoftware/smack/util/collections/IterableMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field protected static final DEFAULT_CAPACITY:I = 0x10

.field protected static final DEFAULT_LOAD_FACTOR:F = 0.75f

.field protected static final DEFAULT_THRESHOLD:I = 0xc

.field protected static final GETKEY_INVALID:Ljava/lang/String; = "getKey() can only be called after next() and before remove()"

.field protected static final GETVALUE_INVALID:Ljava/lang/String; = "getValue() can only be called after next() and before remove()"

.field protected static final MAXIMUM_CAPACITY:I = 0x40000000

.field protected static final NO_NEXT_ENTRY:Ljava/lang/String; = "No next() entry in the iteration"

.field protected static final NO_PREVIOUS_ENTRY:Ljava/lang/String; = "No previous() entry in the iteration"

.field protected static final NULL:Ljava/lang/Object;

.field protected static final REMOVE_INVALID:Ljava/lang/String; = "remove() can only be called once after next()"

.field protected static final SETVALUE_INVALID:Ljava/lang/String; = "setValue() can only be called after next() and before remove()"


# instance fields
.field protected transient data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field protected transient entrySet:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$EntrySet",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field protected transient keySet:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$KeySet",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field protected transient loadFactor:F

.field protected transient modCount:I

.field protected transient size:I

.field protected transient threshold:I

.field protected transient values:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$Values;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$Values",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->NULL:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 114
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1

    .prologue
    .line 139
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;-><init>(IF)V

    .line 140
    return-void
.end method

.method protected constructor <init>(IF)V
    .locals 2

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 153
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 154
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Initial capacity must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_1

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Load factor must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_2
    iput p2, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->loadFactor:F

    .line 160
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->calculateThreshold(IF)I

    move-result v0

    iput v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->threshold:I

    .line 161
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->calculateNewCapacity(I)I

    move-result v0

    .line 162
    new-array v0, v0, [Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    iput-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    .line 163
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->init()V

    .line 164
    return-void
.end method

.method protected constructor <init>(IFI)V
    .locals 1

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 125
    iput p2, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->loadFactor:F

    .line 126
    new-array v0, p1, [Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    iput-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    .line 127
    iput p3, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->threshold:I

    .line 128
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->init()V

    .line 129
    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 173
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;-><init>(IF)V

    .line 174
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->putAll(Ljava/util/Map;)V

    .line 175
    return-void
.end method


# virtual methods
.method protected addEntry(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry",
            "<TK;TV;>;I)V"
        }
    .end annotation

    .prologue
    .line 515
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    aput-object p1, v0, p2

    .line 516
    return-void
.end method

.method protected addMapping(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITK;TV;)V"
        }
    .end annotation

    .prologue
    .line 481
    iget v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->modCount:I

    .line 482
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->createEntry(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    move-result-object v0

    .line 483
    invoke-virtual {p0, v0, p1}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->addEntry(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;I)V

    .line 484
    iget v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->size:I

    .line 485
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->checkCapacity()V

    .line 486
    return-void
.end method

.method protected calculateNewCapacity(I)I
    .locals 2

    .prologue
    const/high16 v0, 0x40000000    # 2.0f

    .line 629
    const/4 v1, 0x1

    .line 630
    if-le p1, v0, :cond_1

    .line 640
    :cond_0
    :goto_0
    return v0

    .line 633
    :cond_1
    :goto_1
    if-ge v1, p1, :cond_2

    .line 634
    shl-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 636
    :cond_2
    if-gt v1, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method protected calculateThreshold(IF)I
    .locals 1

    .prologue
    .line 652
    int-to-float v0, p1

    mul-float/2addr v0, p2

    float-to-int v0, v0

    return v0
.end method

.method protected checkCapacity()V
    .locals 2

    .prologue
    .line 577
    iget v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->size:I

    iget v1, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->threshold:I

    if-lt v0, v1, :cond_0

    .line 578
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 579
    const/high16 v1, 0x40000000    # 2.0f

    if-gt v0, v1, :cond_0

    .line 580
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->ensureCapacity(I)V

    .line 583
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 345
    iget v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->modCount:I

    .line 346
    iget-object v1, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    .line 347
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 348
    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 347
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 350
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->size:I

    .line 351
    return-void
.end method

.method protected clone()Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1240
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;

    .line 1241
    iget-object v2, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    array-length v2, v2

    new-array v2, v2, [Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    iput-object v2, v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    .line 1242
    const/4 v2, 0x0

    iput-object v2, v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->entrySet:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$EntrySet;

    .line 1243
    const/4 v2, 0x0

    iput-object v2, v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->keySet:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$KeySet;

    .line 1244
    const/4 v2, 0x0

    iput-object v2, v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->values:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$Values;

    .line 1245
    const/4 v2, 0x0

    iput v2, v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->modCount:I

    .line 1246
    const/4 v2, 0x0

    iput v2, v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->size:I

    .line 1247
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->init()V

    .line 1248
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1252
    :goto_0
    return-object v0

    .line 1251
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 1252
    goto :goto_0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 228
    if-nez p1, :cond_0

    sget-object v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->NULL:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->hash(Ljava/lang/Object;)I

    move-result v1

    .line 229
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    iget-object v2, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    array-length v2, v2

    invoke-virtual {p0, v1, v2}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v0, v0, v2

    .line 230
    :goto_1
    if-eqz v0, :cond_2

    .line 231
    iget v2, v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v1, :cond_1

    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 232
    const/4 v0, 0x1

    .line 236
    :goto_2
    return v0

    :cond_0
    move-object v0, p1

    .line 228
    goto :goto_0

    .line 234
    :cond_1
    iget-object v0, v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->next:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    goto :goto_1

    .line 236
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 246
    if-nez p1, :cond_3

    .line 247
    iget-object v2, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    array-length v4, v2

    move v3, v1

    :goto_0
    if-ge v3, v4, :cond_5

    .line 248
    iget-object v2, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    aget-object v2, v2, v3

    .line 249
    :goto_1
    if-eqz v2, :cond_2

    .line 250
    invoke-virtual {v2}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    .line 267
    :cond_0
    :goto_2
    return v0

    .line 253
    :cond_1
    iget-object v2, v2, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->next:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    goto :goto_1

    .line 247
    :cond_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 257
    :cond_3
    iget-object v2, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    array-length v4, v2

    move v3, v1

    :goto_3
    if-ge v3, v4, :cond_5

    .line 258
    iget-object v2, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    aget-object v2, v2, v3

    .line 259
    :goto_4
    if-eqz v2, :cond_4

    .line 260
    invoke-virtual {v2}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->isEqualValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 263
    iget-object v2, v2, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->next:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    goto :goto_4

    .line 257
    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_3

    :cond_5
    move v0, v1

    .line 267
    goto :goto_2
.end method

.method protected createEntry(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry",
            "<TK;TV;>;ITK;TV;)",
            "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 502
    new-instance v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;-><init>(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected createEntrySetIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 787
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 788
    sget-object v0, Lorg/jivesoftware/smack/util/collections/EmptyIterator;->INSTANCE:Ljava/util/Iterator;

    .line 790
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$EntrySetIterator;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$EntrySetIterator;-><init>(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;)V

    goto :goto_0
.end method

.method protected createKeySetIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 875
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 876
    sget-object v0, Lorg/jivesoftware/smack/util/collections/EmptyIterator;->INSTANCE:Ljava/util/Iterator;

    .line 878
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$KeySetIterator;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$KeySetIterator;-><init>(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;)V

    goto :goto_0
.end method

.method protected createValuesIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 954
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 955
    sget-object v0, Lorg/jivesoftware/smack/util/collections/EmptyIterator;->INSTANCE:Ljava/util/Iterator;

    .line 957
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$ValuesIterator;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$ValuesIterator;-><init>(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;)V

    goto :goto_0
.end method

.method protected destroyEntry(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 565
    iput-object v0, p1, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->next:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    .line 566
    # setter for: Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;
    invoke-static {p1, v0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->access$002(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    # setter for: Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->value:Ljava/lang/Object;
    invoke-static {p1, v0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->access$102(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    return-void
.end method

.method protected doReadObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1216
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->loadFactor:F

    .line 1217
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 1218
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 1219
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->init()V

    .line 1220
    new-array v0, v0, [Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    iput-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    .line 1221
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 1222
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 1223
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 1224
    invoke-virtual {p0, v2, v3}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1226
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    array-length v0, v0

    iget v1, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->loadFactor:F

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->calculateThreshold(IF)I

    move-result v0

    iput v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->threshold:I

    .line 1227
    return-void
.end method

.method protected doWriteObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1188
    iget v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->loadFactor:F

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    .line 1189
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1190
    iget v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->size:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1191
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->mapIterator()Lorg/jivesoftware/smack/util/collections/MapIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/jivesoftware/smack/util/collections/MapIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1192
    invoke-interface {v0}, Lorg/jivesoftware/smack/util/collections/MapIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1193
    invoke-interface {v0}, Lorg/jivesoftware/smack/util/collections/MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 1195
    :cond_0
    return-void
.end method

.method protected ensureCapacity(I)V
    .locals 7

    .prologue
    .line 591
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    array-length v0, v0

    .line 592
    if-gt p1, v0, :cond_0

    .line 619
    :goto_0
    return-void

    .line 595
    :cond_0
    iget v1, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->size:I

    if-nez v1, :cond_1

    .line 596
    iget v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->loadFactor:F

    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->calculateThreshold(IF)I

    move-result v0

    iput v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->threshold:I

    .line 597
    new-array v0, p1, [Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    iput-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 599
    :cond_1
    iget-object v3, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    .line 600
    new-array v4, p1, [Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    .line 602
    iget v1, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->modCount:I

    .line 603
    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_3

    .line 604
    aget-object v0, v3, v2

    .line 605
    if-eqz v0, :cond_2

    .line 606
    const/4 v1, 0x0

    aput-object v1, v3, v2

    .line 608
    :goto_2
    iget-object v1, v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->next:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    .line 609
    iget v5, v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->hashCode:I

    invoke-virtual {p0, v5, p1}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->hashIndex(II)I

    move-result v5

    .line 610
    aget-object v6, v4, v5

    iput-object v6, v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->next:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    .line 611
    aput-object v0, v4, v5

    .line 613
    if-nez v1, :cond_4

    .line 603
    :cond_2
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    .line 616
    :cond_3
    iget v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->loadFactor:F

    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->calculateThreshold(IF)I

    move-result v0

    iput v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->threshold:I

    .line 617
    iput-object v4, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method protected entryHashCode(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry",
            "<TK;TV;>;)I"
        }
    .end annotation

    .prologue
    .line 679
    iget v0, p1, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->hashCode:I

    return v0
.end method

.method protected entryKey(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry",
            "<TK;TV;>;)TK;"
        }
    .end annotation

    .prologue
    .line 692
    # getter for: Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;
    invoke-static {p1}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->access$000(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected entryNext(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;)Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry",
            "<TK;TV;>;)",
            "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 666
    iget-object v0, p1, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->next:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 774
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->entrySet:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$EntrySet;

    if-nez v0, :cond_0

    .line 775
    new-instance v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$EntrySet;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$EntrySet;-><init>(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->entrySet:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$EntrySet;

    .line 777
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->entrySet:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$EntrySet;

    return-object v0
.end method

.method protected entryValue(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 705
    # getter for: Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->value:Ljava/lang/Object;
    invoke-static {p1}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->access$100(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1263
    if-ne p1, p0, :cond_1

    .line 1293
    :cond_0
    :goto_0
    return v0

    .line 1266
    :cond_1
    instance-of v2, p1, Ljava/util/Map;

    if-nez v2, :cond_2

    move v0, v1

    .line 1267
    goto :goto_0

    .line 1269
    :cond_2
    check-cast p1, Ljava/util/Map;

    .line 1270
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->size()I

    move-result v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 1271
    goto :goto_0

    .line 1273
    :cond_3
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->mapIterator()Lorg/jivesoftware/smack/util/collections/MapIterator;

    move-result-object v2

    .line 1275
    :cond_4
    :try_start_0
    invoke-interface {v2}, Lorg/jivesoftware/smack/util/collections/MapIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1276
    invoke-interface {v2}, Lorg/jivesoftware/smack/util/collections/MapIterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1277
    invoke-interface {v2}, Lorg/jivesoftware/smack/util/collections/MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 1278
    if-nez v4, :cond_6

    .line 1279
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_5

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_5
    move v0, v1

    .line 1280
    goto :goto_0

    .line 1283
    :cond_6
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_4

    move v0, v1

    .line 1284
    goto :goto_0

    .line 1288
    :catch_0
    move-exception v0

    move v0, v1

    .line 1289
    goto :goto_0

    .line 1290
    :catch_1
    move-exception v0

    move v0, v1

    .line 1291
    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 191
    if-nez p1, :cond_0

    sget-object v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->NULL:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->hash(Ljava/lang/Object;)I

    move-result v1

    .line 192
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    iget-object v2, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    array-length v2, v2

    invoke-virtual {p0, v1, v2}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v0, v0, v2

    .line 193
    :goto_1
    if-eqz v0, :cond_2

    .line 194
    iget v2, v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v1, :cond_1

    # getter for: Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;
    invoke-static {v0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->access$000(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 195
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 199
    :goto_2
    return-object v0

    :cond_0
    move-object v0, p1

    .line 191
    goto :goto_0

    .line 197
    :cond_1
    iget-object v0, v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->next:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    goto :goto_1

    .line 199
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method protected getEntry(Ljava/lang/Object;)Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 422
    if-nez p1, :cond_0

    sget-object v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->NULL:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->hash(Ljava/lang/Object;)I

    move-result v1

    .line 423
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    iget-object v2, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    array-length v2, v2

    invoke-virtual {p0, v1, v2}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v0, v0, v2

    .line 424
    :goto_1
    if-eqz v0, :cond_2

    .line 425
    iget v2, v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v1, :cond_1

    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 430
    :goto_2
    return-object v0

    :cond_0
    move-object v0, p1

    .line 422
    goto :goto_0

    .line 428
    :cond_1
    iget-object v0, v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->next:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    goto :goto_1

    .line 430
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method protected hash(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 363
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 364
    shl-int/lit8 v1, v0, 0x9

    xor-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    .line 365
    ushr-int/lit8 v1, v0, 0xe

    xor-int/2addr v0, v1

    .line 366
    shl-int/lit8 v1, v0, 0x4

    add-int/2addr v0, v1

    .line 367
    ushr-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    .line 368
    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1302
    const/4 v0, 0x0

    .line 1303
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->createEntrySetIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1304
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1305
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    .line 1307
    :cond_0
    return v0
.end method

.method protected hashIndex(II)I
    .locals 1

    .prologue
    .line 407
    add-int/lit8 v0, p2, -0x1

    and-int/2addr v0, p1

    return v0
.end method

.method protected init()V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 381
    if-eq p1, p2, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isEqualValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 394
    if-eq p1, p2, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 862
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->keySet:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$KeySet;

    if-nez v0, :cond_0

    .line 863
    new-instance v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$KeySet;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$KeySet;-><init>(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->keySet:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$KeySet;

    .line 865
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->keySet:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$KeySet;

    return-object v0
.end method

.method public mapIterator()Lorg/jivesoftware/smack/util/collections/MapIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jivesoftware/smack/util/collections/MapIterator",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 721
    iget v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->size:I

    if-nez v0, :cond_0

    .line 722
    sget-object v0, Lorg/jivesoftware/smack/util/collections/EmptyMapIterator;->INSTANCE:Lorg/jivesoftware/smack/util/collections/MapIterator;

    .line 724
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashMapIterator;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashMapIterator;-><init>(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;)V

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 279
    if-nez p1, :cond_0

    sget-object v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->NULL:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->hash(Ljava/lang/Object;)I

    move-result v2

    .line 280
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    array-length v0, v0

    invoke-virtual {p0, v2, v0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->hashIndex(II)I

    move-result v3

    .line 281
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    aget-object v0, v0, v3

    move-object v1, v0

    .line 282
    :goto_1
    if-eqz v1, :cond_2

    .line 283
    iget v0, v1, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v0, v2, :cond_1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    invoke-virtual {v1}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 285
    invoke-virtual {p0, v1, p2}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->updateEntry(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;Ljava/lang/Object;)V

    .line 291
    :goto_2
    return-object v0

    :cond_0
    move-object v0, p1

    .line 279
    goto :goto_0

    .line 288
    :cond_1
    iget-object v0, v1, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->next:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    move-object v1, v0

    goto :goto_1

    .line 290
    :cond_2
    invoke-virtual {p0, v3, v2, p1, p2}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->addMapping(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 291
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 304
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    .line 305
    if-nez v0, :cond_1

    .line 315
    :cond_0
    return-void

    .line 308
    :cond_1
    iget v1, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->size:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->loadFactor:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 309
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->calculateNewCapacity(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->ensureCapacity(I)V

    .line 311
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 313
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 324
    if-nez p1, :cond_0

    sget-object v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->NULL:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->hash(Ljava/lang/Object;)I

    move-result v4

    .line 325
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    array-length v0, v0

    invoke-virtual {p0, v4, v0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->hashIndex(II)I

    move-result v5

    .line 326
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    aget-object v3, v0, v5

    move-object v2, v1

    .line 328
    :goto_1
    if-eqz v3, :cond_2

    .line 329
    iget v0, v3, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v0, v4, :cond_1

    invoke-virtual {v3}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    invoke-virtual {v3}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 331
    invoke-virtual {p0, v3, v5, v2}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->removeMapping(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;ILorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;)V

    .line 337
    :goto_2
    return-object v0

    :cond_0
    move-object v0, p1

    .line 324
    goto :goto_0

    .line 335
    :cond_1
    iget-object v0, v3, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->next:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    move-object v2, v3

    move-object v3, v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 337
    goto :goto_2
.end method

.method protected removeEntry(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;ILorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry",
            "<TK;TV;>;I",
            "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 549
    if-nez p3, :cond_0

    .line 550
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    iget-object v1, p1, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->next:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    aput-object v1, v0, p2

    .line 554
    :goto_0
    return-void

    .line 552
    :cond_0
    iget-object v0, p1, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->next:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    iput-object v0, p3, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->next:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    goto :goto_0
.end method

.method protected removeMapping(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;ILorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry",
            "<TK;TV;>;I",
            "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 531
    iget v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->modCount:I

    .line 532
    invoke-virtual {p0, p1, p2, p3}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->removeEntry(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;ILorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;)V

    .line 533
    iget v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->size:I

    .line 534
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->destroyEntry(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;)V

    .line 535
    return-void
.end method

.method protected reuseEntry(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry",
            "<TK;TV;>;IITK;TV;)V"
        }
    .end annotation

    .prologue
    .line 460
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    aget-object v0, v0, p2

    iput-object v0, p1, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->next:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    .line 461
    iput p3, p1, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->hashCode:I

    .line 462
    # setter for: Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;
    invoke-static {p1, p4}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->access$002(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    # setter for: Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->value:Ljava/lang/Object;
    invoke-static {p1, p5}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->access$102(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1316
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1317
    const-string v0, "{}"

    .line 1336
    :goto_0
    return-object v0

    .line 1319
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x20

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1320
    const/16 v0, 0x7b

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1322
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->mapIterator()Lorg/jivesoftware/smack/util/collections/MapIterator;

    move-result-object v3

    .line 1323
    invoke-interface {v3}, Lorg/jivesoftware/smack/util/collections/MapIterator;->hasNext()Z

    move-result v0

    .line 1324
    :cond_1
    :goto_1
    if-eqz v0, :cond_4

    .line 1325
    invoke-interface {v3}, Lorg/jivesoftware/smack/util/collections/MapIterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1326
    invoke-interface {v3}, Lorg/jivesoftware/smack/util/collections/MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 1327
    if-ne v0, p0, :cond_2

    const-string v0, "(this Map)"

    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne v1, p0, :cond_3

    const-string v0, "(this Map)"

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1329
    invoke-interface {v3}, Lorg/jivesoftware/smack/util/collections/MapIterator;->hasNext()Z

    move-result v0

    .line 1330
    if-eqz v0, :cond_1

    .line 1331
    const/16 v1, 0x2c

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 1327
    goto :goto_2

    .line 1335
    :cond_4
    const/16 v0, 0x7d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1336
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected updateEntry(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry",
            "<TK;TV;>;TV;)V"
        }
    .end annotation

    .prologue
    .line 444
    invoke-virtual {p1, p2}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    return-void
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 941
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->values:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$Values;

    if-nez v0, :cond_0

    .line 942
    new-instance v0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$Values;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$Values;-><init>(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->values:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$Values;

    .line 944
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->values:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$Values;

    return-object v0
.end method
