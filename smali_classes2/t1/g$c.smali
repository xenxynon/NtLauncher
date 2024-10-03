.class Lt1/g$c;
.super Lt1/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt1/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final d:[B

.field private final e:I

.field private final f:I

.field private g:I


# direct methods
.method constructor <init>([BII)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lt1/g;-><init>(Lt1/g$a;)V

    const-string v0, "buffer"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    or-int v0, p2, p3

    array-length v1, p1

    add-int v2, p2, p3

    sub-int/2addr v1, v2

    or-int/2addr v0, v1

    if-ltz v0, :cond_0

    iput-object p1, p0, Lt1/g$c;->d:[B

    iput p2, p0, Lt1/g$c;->e:I

    iput p2, p0, Lt1/g$c;->g:I

    iput v2, p0, Lt1/g$c;->f:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    const-string p1, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public E()V
    .locals 0

    return-void
.end method

.method public final J()I
    .locals 1

    iget v0, p0, Lt1/g$c;->f:I

    iget p0, p0, Lt1/g$c;->g:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final K(IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lt1/g$c;->U(II)V

    int-to-byte p1, p2

    invoke-virtual {p0, p1}, Lt1/g$c;->X(B)V

    return-void
.end method

.method public final L(ILt1/e;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lt1/g$c;->U(II)V

    invoke-virtual {p0, p2}, Lt1/g$c;->Z(Lt1/e;)V

    return-void
.end method

.method public final N(II)V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lt1/g$c;->U(II)V

    invoke-virtual {p0, p2}, Lt1/g$c;->a0(I)V

    return-void
.end method

.method public final O(IJ)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lt1/g$c;->U(II)V

    invoke-virtual {p0, p2, p3}, Lt1/g$c;->b0(J)V

    return-void
.end method

.method public final Q(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lt1/g$c;->U(II)V

    invoke-virtual {p0, p2}, Lt1/g$c;->c0(I)V

    return-void
.end method

.method public final S(ILt1/r;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lt1/g$c;->U(II)V

    invoke-virtual {p0, p2}, Lt1/g$c;->d0(Lt1/r;)V

    return-void
.end method

.method public final T(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lt1/g$c;->U(II)V

    invoke-virtual {p0, p2}, Lt1/g$c;->e0(Ljava/lang/String;)V

    return-void
.end method

.method public final U(II)V
    .locals 0

    invoke-static {p1, p2}, Lt1/c0;->c(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lt1/g$c;->V(I)V

    return-void
.end method

.method public final V(I)V
    .locals 7

    invoke-static {}, Lt1/g;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lt1/g$c;->J()I

    move-result v0

    const/16 v2, 0xa

    if-lt v0, v2, :cond_1

    invoke-static {}, Lt1/g;->c()J

    move-result-wide v2

    iget v0, p0, Lt1/g$c;->g:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    iget-object v0, p0, Lt1/g$c;->d:[B

    int-to-byte p1, p1

    invoke-static {v0, v2, v3, p1}, Lt1/a0;->h([BJB)V

    iget p1, p0, Lt1/g$c;->g:I

    add-int/2addr p1, v1

    iput p1, p0, Lt1/g$c;->g:I

    return-void

    :cond_0
    iget-object v0, p0, Lt1/g$c;->d:[B

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    and-int/lit8 v6, p1, 0x7f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    invoke-static {v0, v2, v3, v6}, Lt1/a0;->h([BJB)V

    iget v0, p0, Lt1/g$c;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lt1/g$c;->g:I

    ushr-int/lit8 p1, p1, 0x7

    move-wide v2, v4

    goto :goto_0

    :cond_1
    :goto_1
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lt1/g$c;->d:[B

    iget v2, p0, Lt1/g$c;->g:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lt1/g$c;->g:I

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    return-void

    :cond_2
    iget-object v0, p0, Lt1/g$c;->d:[B

    iget v2, p0, Lt1/g$c;->g:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lt1/g$c;->g:I

    and-int/lit8 v3, p1, 0x7f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Lt1/g$d;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lt1/g$c;->g:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    iget p0, p0, Lt1/g$c;->f:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1

    const/4 p0, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, p0

    const-string p0, "Pos: %d, limit: %d, len: %d"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lt1/g$d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final W(IJ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lt1/g$c;->U(II)V

    invoke-virtual {p0, p2, p3}, Lt1/g$c;->f0(J)V

    return-void
.end method

.method public final X(B)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lt1/g$c;->d:[B

    iget v1, p0, Lt1/g$c;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lt1/g$c;->g:I

    aput-byte p1, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lt1/g$d;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lt1/g$c;->g:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget p0, p0, Lt1/g$c;->f:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 p0, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p0

    const-string p0, "Pos: %d, limit: %d, len: %d"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lt1/g$d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final Y([BII)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lt1/g$c;->d:[B

    iget v1, p0, Lt1/g$c;->g:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lt1/g$c;->g:I

    add-int/2addr p1, p3

    iput p1, p0, Lt1/g$c;->g:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lt1/g$d;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lt1/g$c;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget p0, p0, Lt1/g$c;->f:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    const/4 p0, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, p0

    const-string p0, "Pos: %d, limit: %d, len: %d"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lt1/g$d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final Z(Lt1/e;)V
    .locals 1

    invoke-virtual {p1}, Lt1/e;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lt1/g$c;->V(I)V

    invoke-virtual {p1, p0}, Lt1/e;->m(Lt1/d;)V

    return-void
.end method

.method public final a([BII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lt1/g$c;->Y([BII)V

    return-void
.end method

.method public final a0(I)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lt1/g$c;->d:[B

    iget v1, p0, Lt1/g$c;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lt1/g$c;->g:I

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lt1/g$c;->g:I

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lt1/g$c;->g:I

    shr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lt1/g$c;->g:I

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lt1/g$d;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lt1/g$c;->g:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget p0, p0, Lt1/g$c;->f:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 p0, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p0

    const-string p0, "Pos: %d, limit: %d, len: %d"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lt1/g$d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final b0(J)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lt1/g$c;->d:[B

    iget v1, p0, Lt1/g$c;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lt1/g$c;->g:I

    long-to-int v3, p1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lt1/g$c;->g:I

    const/16 v3, 0x8

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lt1/g$c;->g:I

    const/16 v3, 0x10

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lt1/g$c;->g:I

    const/16 v3, 0x18

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lt1/g$c;->g:I

    const/16 v3, 0x20

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lt1/g$c;->g:I

    const/16 v3, 0x28

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lt1/g$c;->g:I

    const/16 v3, 0x30

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lt1/g$c;->g:I

    const/16 v1, 0x38

    shr-long/2addr p1, v1

    long-to-int p1, p1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lt1/g$d;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lt1/g$c;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget p0, p0, Lt1/g$c;->f:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 p0, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p0

    const-string p0, "Pos: %d, limit: %d, len: %d"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lt1/g$d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final c0(I)V
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lt1/g$c;->V(I)V

    goto :goto_0

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lt1/g$c;->f0(J)V

    :goto_0
    return-void
.end method

.method public final d0(Lt1/r;)V
    .locals 1

    invoke-interface {p1}, Lt1/r;->getSerializedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lt1/g$c;->V(I)V

    invoke-interface {p1, p0}, Lt1/r;->writeTo(Lt1/g;)V

    return-void
.end method

.method public final e0(Ljava/lang/String;)V
    .locals 5

    iget v0, p0, Lt1/g$c;->g:I

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-static {v1}, Lt1/g;->B(I)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lt1/g;->B(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    add-int v1, v0, v2

    iput v1, p0, Lt1/g$c;->g:I

    iget-object v3, p0, Lt1/g$c;->d:[B

    invoke-virtual {p0}, Lt1/g$c;->J()I

    move-result v4

    invoke-static {p1, v3, v1, v4}, Lt1/b0;->a(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput v0, p0, Lt1/g$c;->g:I

    sub-int v3, v1, v0

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lt1/g$c;->V(I)V

    :goto_0
    iput v1, p0, Lt1/g$c;->g:I

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lt1/b0;->b(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {p0, v1}, Lt1/g$c;->V(I)V

    iget-object v1, p0, Lt1/g$c;->d:[B

    iget v2, p0, Lt1/g$c;->g:I

    invoke-virtual {p0}, Lt1/g$c;->J()I

    move-result v3

    invoke-static {p1, v1, v2, v3}, Lt1/b0;->a(Ljava/lang/CharSequence;[BII)I

    move-result v1
    :try_end_0
    .catch Lt1/b0$c; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lt1/g$d;

    invoke-direct {p1, p0}, Lt1/g$d;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception v1

    iput v0, p0, Lt1/g$c;->g:I

    invoke-virtual {p0, p1, v1}, Lt1/g;->F(Ljava/lang/String;Lt1/b0$c;)V

    :goto_1
    return-void
.end method

.method public final f0(J)V
    .locals 12

    invoke-static {}, Lt1/g;->b()Z

    move-result v0

    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x80

    const/4 v6, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lt1/g$c;->J()I

    move-result v0

    const/16 v7, 0xa

    if-lt v0, v7, :cond_1

    invoke-static {}, Lt1/g;->c()J

    move-result-wide v7

    iget v0, p0, Lt1/g$c;->g:I

    int-to-long v9, v0

    add-long/2addr v7, v9

    :goto_0
    and-long v9, p1, v4

    cmp-long v0, v9, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lt1/g$c;->d:[B

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-static {v0, v7, v8, p1}, Lt1/a0;->h([BJB)V

    iget p1, p0, Lt1/g$c;->g:I

    add-int/2addr p1, v6

    iput p1, p0, Lt1/g$c;->g:I

    return-void

    :cond_0
    iget-object v0, p0, Lt1/g$c;->d:[B

    const-wide/16 v9, 0x1

    add-long/2addr v9, v7

    long-to-int v11, p1

    and-int/lit8 v11, v11, 0x7f

    or-int/lit16 v11, v11, 0x80

    int-to-byte v11, v11

    invoke-static {v0, v7, v8, v11}, Lt1/a0;->h([BJB)V

    iget v0, p0, Lt1/g$c;->g:I

    add-int/2addr v0, v6

    iput v0, p0, Lt1/g$c;->g:I

    ushr-long/2addr p1, v1

    move-wide v7, v9

    goto :goto_0

    :cond_1
    :goto_1
    and-long v7, p1, v4

    cmp-long v0, v7, v2

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lt1/g$c;->d:[B

    iget v1, p0, Lt1/g$c;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lt1/g$c;->g:I

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void

    :cond_2
    iget-object v0, p0, Lt1/g$c;->d:[B

    iget v7, p0, Lt1/g$c;->g:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lt1/g$c;->g:I

    long-to-int v8, p1

    and-int/lit8 v8, v8, 0x7f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v0, v7
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    ushr-long/2addr p1, v1

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p2, Lt1/g$d;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lt1/g$c;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget p0, p0, Lt1/g$c;->f:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v6

    const/4 p0, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p0

    const-string p0, "Pos: %d, limit: %d, len: %d"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lt1/g$d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
