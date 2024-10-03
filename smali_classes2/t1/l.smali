.class final Lt1/l;
.super Lt1/c;
.source "SourceFile"

# interfaces
.implements Lt1/m$c;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt1/c<",
        "Ljava/lang/Integer;",
        ">;",
        "Lt1/m$c;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final j:Lt1/l;


# instance fields
.field private h:[I

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lt1/l;

    invoke-direct {v0}, Lt1/l;-><init>()V

    sput-object v0, Lt1/l;->j:Lt1/l;

    invoke-virtual {v0}, Lt1/c;->makeImmutable()V

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/16 v0, 0xa

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lt1/l;-><init>([II)V

    return-void
.end method

.method private constructor <init>([II)V
    .locals 0

    invoke-direct {p0}, Lt1/c;-><init>()V

    iput-object p1, p0, Lt1/l;->h:[I

    iput p2, p0, Lt1/l;->i:I

    return-void
.end method

.method private c(II)V
    .locals 4

    invoke-virtual {p0}, Lt1/c;->a()V

    if-ltz p1, :cond_1

    iget v0, p0, Lt1/l;->i:I

    if-gt p1, v0, :cond_1

    iget-object v1, p0, Lt1/l;->h:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lt1/l;->h:[I

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lt1/l;->i:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lt1/l;->h:[I

    :goto_0
    iget-object v0, p0, Lt1/l;->h:[I

    aput p2, v0, p1

    iget p1, p0, Lt1/l;->i:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lt1/l;->i:I

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void

    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lt1/l;->g(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static d()Lt1/l;
    .locals 1

    sget-object v0, Lt1/l;->j:Lt1/l;

    return-object v0
.end method

.method private e(I)V
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Lt1/l;->i:I

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lt1/l;->g(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private g(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Size:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lt1/l;->i:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lt1/l;->b(ILjava/lang/Integer;)V

    return-void
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lt1/c;->a()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p1, Lt1/l;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lt1/c;->addAll(Ljava/util/Collection;)Z

    move-result p0

    return p0

    :cond_0
    check-cast p1, Lt1/l;

    iget v0, p1, Lt1/l;->i:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const v2, 0x7fffffff

    iget v3, p0, Lt1/l;->i:I

    sub-int/2addr v2, v3

    if-lt v2, v0, :cond_3

    add-int/2addr v3, v0

    iget-object v0, p0, Lt1/l;->h:[I

    array-length v2, v0

    if-le v3, v2, :cond_2

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lt1/l;->h:[I

    :cond_2
    iget-object v0, p1, Lt1/l;->h:[I

    iget-object v2, p0, Lt1/l;->h:[I

    iget v4, p0, Lt1/l;->i:I

    iget p1, p1, Lt1/l;->i:I

    invoke-static {v0, v1, v2, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v3, p0, Lt1/l;->i:I

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return v0

    :cond_3
    new-instance p0, Ljava/lang/OutOfMemoryError;

    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p0
.end method

.method public addInt(I)V
    .locals 1

    iget v0, p0, Lt1/l;->i:I

    invoke-direct {p0, v0, p1}, Lt1/l;->c(II)V

    return-void
.end method

.method public b(ILjava/lang/Integer;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lt1/l;->c(II)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lt1/l;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lt1/c;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    check-cast p1, Lt1/l;

    iget v1, p0, Lt1/l;->i:I

    iget v2, p1, Lt1/l;->i:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    iget-object p1, p1, Lt1/l;->h:[I

    move v1, v3

    :goto_0
    iget v2, p0, Lt1/l;->i:I

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lt1/l;->h:[I

    aget v2, v2, v1

    aget v4, p1, v1

    if-eq v2, v4, :cond_3

    return v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public f(I)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p0, p1}, Lt1/l;->getInt(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lt1/l;->f(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getInt(I)I
    .locals 0

    invoke-direct {p0, p1}, Lt1/l;->e(I)V

    iget-object p0, p0, Lt1/l;->h:[I

    aget p0, p0, p1

    return p0
.end method

.method public h(I)Ljava/lang/Integer;
    .locals 4

    invoke-virtual {p0}, Lt1/c;->a()V

    invoke-direct {p0, p1}, Lt1/l;->e(I)V

    iget-object v0, p0, Lt1/l;->h:[I

    aget v1, v0, p1

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lt1/l;->i:I

    sub-int/2addr v3, p1

    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lt1/l;->i:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lt1/l;->i:I

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lt1/l;->i:I

    if-ge v1, v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lt1/l;->h:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public i(ILjava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lt1/l;->setInt(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public mutableCopyWithCapacity(I)Lt1/m$c;
    .locals 2

    iget v0, p0, Lt1/l;->i:I

    if-lt p1, v0, :cond_0

    new-instance v0, Lt1/l;

    iget-object v1, p0, Lt1/l;->h:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iget p0, p0, Lt1/l;->i:I

    invoke-direct {v0, p1, p0}, Lt1/l;-><init>([II)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public bridge synthetic mutableCopyWithCapacity(I)Lt1/m$e;
    .locals 0

    invoke-virtual {p0, p1}, Lt1/l;->mutableCopyWithCapacity(I)Lt1/m$c;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lt1/l;->h(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p0}, Lt1/c;->a()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lt1/l;->i:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lt1/l;->h:[I

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lt1/l;->h:[I

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, Lt1/l;->i:I

    sub-int/2addr v2, v1

    invoke-static {p1, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lt1/l;->i:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Lt1/l;->i:I

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/2addr p1, v0

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lt1/l;->i(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public setInt(II)I
    .locals 1

    invoke-virtual {p0}, Lt1/c;->a()V

    invoke-direct {p0, p1}, Lt1/l;->e(I)V

    iget-object p0, p0, Lt1/l;->h:[I

    aget v0, p0, p1

    aput p2, p0, p1

    return v0
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lt1/l;->i:I

    return p0
.end method
