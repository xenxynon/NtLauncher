.class abstract Lt1/g$b;
.super Lt1/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt1/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "b"
.end annotation


# instance fields
.field final d:[B

.field final e:I

.field f:I

.field g:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lt1/g;-><init>(Lt1/g$a;)V

    if-ltz p1, :cond_0

    const/16 v0, 0x14

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lt1/g$b;->d:[B

    array-length p1, p1

    iput p1, p0, Lt1/g$b;->e:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bufferSize must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final J()I
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array or ByteBuffer."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method final X(B)V
    .locals 3

    iget-object v0, p0, Lt1/g$b;->d:[B

    iget v1, p0, Lt1/g$b;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lt1/g$b;->f:I

    aput-byte p1, v0, v1

    iget p1, p0, Lt1/g$b;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lt1/g$b;->g:I

    return-void
.end method

.method final Y(I)V
    .locals 4

    iget-object v0, p0, Lt1/g$b;->d:[B

    iget v1, p0, Lt1/g$b;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lt1/g$b;->f:I

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lt1/g$b;->f:I

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lt1/g$b;->f:I

    shr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lt1/g$b;->f:I

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    iget p1, p0, Lt1/g$b;->g:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lt1/g$b;->g:I

    return-void
.end method

.method final Z(J)V
    .locals 8

    iget-object v0, p0, Lt1/g$b;->d:[B

    iget v1, p0, Lt1/g$b;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lt1/g$b;->f:I

    const-wide/16 v3, 0xff

    and-long v5, p1, v3

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lt1/g$b;->f:I

    const/16 v5, 0x8

    shr-long v6, p1, v5

    and-long/2addr v6, v3

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v0, v2

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lt1/g$b;->f:I

    const/16 v6, 0x10

    shr-long v6, p1, v6

    and-long/2addr v6, v3

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lt1/g$b;->f:I

    const/16 v6, 0x18

    shr-long v6, p1, v6

    and-long/2addr v3, v6

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lt1/g$b;->f:I

    const/16 v3, 0x20

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lt1/g$b;->f:I

    const/16 v3, 0x28

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lt1/g$b;->f:I

    const/16 v3, 0x30

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lt1/g$b;->f:I

    const/16 v1, 0x38

    shr-long/2addr p1, v1

    long-to-int p1, p1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    iget p1, p0, Lt1/g$b;->g:I

    add-int/2addr p1, v5

    iput p1, p0, Lt1/g$b;->g:I

    return-void
.end method

.method final a0(I)V
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lt1/g$b;->c0(I)V

    goto :goto_0

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lt1/g$b;->d0(J)V

    :goto_0
    return-void
.end method

.method final b0(II)V
    .locals 0

    invoke-static {p1, p2}, Lt1/c0;->c(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lt1/g$b;->c0(I)V

    return-void
.end method

.method final c0(I)V
    .locals 8

    invoke-static {}, Lt1/g;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lt1/g;->c()J

    move-result-wide v0

    iget v2, p0, Lt1/g$b;->f:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    move-wide v2, v0

    :goto_0
    and-int/lit8 v4, p1, -0x80

    const-wide/16 v5, 0x1

    if-nez v4, :cond_0

    iget-object v4, p0, Lt1/g$b;->d:[B

    add-long/2addr v5, v2

    int-to-byte p1, p1

    invoke-static {v4, v2, v3, p1}, Lt1/a0;->h([BJB)V

    sub-long/2addr v5, v0

    long-to-int p1, v5

    iget v0, p0, Lt1/g$b;->f:I

    add-int/2addr v0, p1

    iput v0, p0, Lt1/g$b;->f:I

    iget v0, p0, Lt1/g$b;->g:I

    add-int/2addr v0, p1

    iput v0, p0, Lt1/g$b;->g:I

    return-void

    :cond_0
    iget-object v4, p0, Lt1/g$b;->d:[B

    add-long/2addr v5, v2

    and-int/lit8 v7, p1, 0x7f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    invoke-static {v4, v2, v3, v7}, Lt1/a0;->h([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    move-wide v2, v5

    goto :goto_0

    :cond_1
    :goto_1
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_2

    iget-object v0, p0, Lt1/g$b;->d:[B

    iget v1, p0, Lt1/g$b;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lt1/g$b;->f:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    iget p1, p0, Lt1/g$b;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lt1/g$b;->g:I

    return-void

    :cond_2
    iget-object v0, p0, Lt1/g$b;->d:[B

    iget v1, p0, Lt1/g$b;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lt1/g$b;->f:I

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget v0, p0, Lt1/g$b;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lt1/g$b;->g:I

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_1
.end method

.method final d0(J)V
    .locals 13

    invoke-static {}, Lt1/g;->b()Z

    move-result v0

    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x80

    if-eqz v0, :cond_1

    invoke-static {}, Lt1/g;->c()J

    move-result-wide v6

    iget v0, p0, Lt1/g$b;->f:I

    int-to-long v8, v0

    add-long/2addr v6, v8

    move-wide v8, v6

    :goto_0
    and-long v10, p1, v4

    cmp-long v0, v10, v2

    const-wide/16 v10, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lt1/g$b;->d:[B

    add-long/2addr v10, v8

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-static {v0, v8, v9, p1}, Lt1/a0;->h([BJB)V

    sub-long/2addr v10, v6

    long-to-int p1, v10

    iget p2, p0, Lt1/g$b;->f:I

    add-int/2addr p2, p1

    iput p2, p0, Lt1/g$b;->f:I

    iget p2, p0, Lt1/g$b;->g:I

    add-int/2addr p2, p1

    iput p2, p0, Lt1/g$b;->g:I

    return-void

    :cond_0
    iget-object v0, p0, Lt1/g$b;->d:[B

    add-long/2addr v10, v8

    long-to-int v12, p1

    and-int/lit8 v12, v12, 0x7f

    or-int/lit16 v12, v12, 0x80

    int-to-byte v12, v12

    invoke-static {v0, v8, v9, v12}, Lt1/a0;->h([BJB)V

    ushr-long/2addr p1, v1

    move-wide v8, v10

    goto :goto_0

    :cond_1
    :goto_1
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Lt1/g$b;->d:[B

    iget v1, p0, Lt1/g$b;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lt1/g$b;->f:I

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    iget p1, p0, Lt1/g$b;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lt1/g$b;->g:I

    return-void

    :cond_2
    iget-object v0, p0, Lt1/g$b;->d:[B

    iget v6, p0, Lt1/g$b;->f:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lt1/g$b;->f:I

    long-to-int v7, p1

    and-int/lit8 v7, v7, 0x7f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    iget v0, p0, Lt1/g$b;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lt1/g$b;->g:I

    ushr-long/2addr p1, v1

    goto :goto_1
.end method
