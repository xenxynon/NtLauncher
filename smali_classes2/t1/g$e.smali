.class final Lt1/g$e;
.super Lt1/g$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt1/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# instance fields
.field private final h:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;I)V
    .locals 0

    invoke-direct {p0, p2}, Lt1/g$b;-><init>(I)V

    const-string p2, "out"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lt1/g$e;->h:Ljava/io/OutputStream;

    return-void
.end method

.method private e0()V
    .locals 4

    iget-object v0, p0, Lt1/g$e;->h:Ljava/io/OutputStream;

    iget-object v1, p0, Lt1/g$b;->d:[B

    iget v2, p0, Lt1/g$b;->f:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Lt1/g$b;->f:I

    return-void
.end method

.method private f0(I)V
    .locals 2

    iget v0, p0, Lt1/g$b;->e:I

    iget v1, p0, Lt1/g$b;->f:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_0

    invoke-direct {p0}, Lt1/g$e;->e0()V

    :cond_0
    return-void
.end method


# virtual methods
.method public E()V
    .locals 1

    iget v0, p0, Lt1/g$b;->f:I

    if-lez v0, :cond_0

    invoke-direct {p0}, Lt1/g$e;->e0()V

    :cond_0
    return-void
.end method

.method public K(IZ)V
    .locals 1

    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lt1/g$e;->f0(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lt1/g$b;->b0(II)V

    int-to-byte p1, p2

    invoke-virtual {p0, p1}, Lt1/g$b;->X(B)V

    return-void
.end method

.method public L(ILt1/e;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lt1/g$e;->U(II)V

    invoke-virtual {p0, p2}, Lt1/g$e;->h0(Lt1/e;)V

    return-void
.end method

.method public N(II)V
    .locals 1

    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lt1/g$e;->f0(I)V

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lt1/g$b;->b0(II)V

    invoke-virtual {p0, p2}, Lt1/g$b;->Y(I)V

    return-void
.end method

.method public O(IJ)V
    .locals 1

    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lt1/g$e;->f0(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lt1/g$b;->b0(II)V

    invoke-virtual {p0, p2, p3}, Lt1/g$b;->Z(J)V

    return-void
.end method

.method public Q(II)V
    .locals 1

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lt1/g$e;->f0(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lt1/g$b;->b0(II)V

    invoke-virtual {p0, p2}, Lt1/g$b;->a0(I)V

    return-void
.end method

.method public S(ILt1/r;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lt1/g$e;->U(II)V

    invoke-virtual {p0, p2}, Lt1/g$e;->i0(Lt1/r;)V

    return-void
.end method

.method public T(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lt1/g$e;->U(II)V

    invoke-virtual {p0, p2}, Lt1/g$e;->j0(Ljava/lang/String;)V

    return-void
.end method

.method public U(II)V
    .locals 0

    invoke-static {p1, p2}, Lt1/c0;->c(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lt1/g$e;->V(I)V

    return-void
.end method

.method public V(I)V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lt1/g$e;->f0(I)V

    invoke-virtual {p0, p1}, Lt1/g$b;->c0(I)V

    return-void
.end method

.method public W(IJ)V
    .locals 1

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lt1/g$e;->f0(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lt1/g$b;->b0(II)V

    invoke-virtual {p0, p2, p3}, Lt1/g$b;->d0(J)V

    return-void
.end method

.method public a([BII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lt1/g$e;->g0([BII)V

    return-void
.end method

.method public g0([BII)V
    .locals 3

    iget v0, p0, Lt1/g$b;->e:I

    iget v1, p0, Lt1/g$b;->f:I

    sub-int v2, v0, v1

    if-lt v2, p3, :cond_0

    iget-object v0, p0, Lt1/g$b;->d:[B

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lt1/g$b;->f:I

    add-int/2addr p1, p3

    iput p1, p0, Lt1/g$b;->f:I

    :goto_0
    iget p1, p0, Lt1/g$b;->g:I

    add-int/2addr p1, p3

    iput p1, p0, Lt1/g$b;->g:I

    goto :goto_1

    :cond_0
    sub-int/2addr v0, v1

    iget-object v2, p0, Lt1/g$b;->d:[B

    invoke-static {p1, p2, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    iget v1, p0, Lt1/g$b;->e:I

    iput v1, p0, Lt1/g$b;->f:I

    iget v1, p0, Lt1/g$b;->g:I

    add-int/2addr v1, v0

    iput v1, p0, Lt1/g$b;->g:I

    invoke-direct {p0}, Lt1/g$e;->e0()V

    iget v0, p0, Lt1/g$b;->e:I

    if-gt p3, v0, :cond_1

    iget-object v0, p0, Lt1/g$b;->d:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Lt1/g$b;->f:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lt1/g$e;->h:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :goto_1
    return-void
.end method

.method public h0(Lt1/e;)V
    .locals 1

    invoke-virtual {p1}, Lt1/e;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lt1/g$e;->V(I)V

    invoke-virtual {p1, p0}, Lt1/e;->m(Lt1/d;)V

    return-void
.end method

.method public i0(Lt1/r;)V
    .locals 1

    invoke-interface {p1}, Lt1/r;->getSerializedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lt1/g$e;->V(I)V

    invoke-interface {p1, p0}, Lt1/r;->writeTo(Lt1/g;)V

    return-void
.end method

.method public j0(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Lt1/g;->B(I)I

    move-result v1

    add-int v2, v1, v0

    iget v3, p0, Lt1/g$b;->e:I

    if-le v2, v3, :cond_0

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lt1/b0;->a(Ljava/lang/CharSequence;[BII)I

    move-result v0

    invoke-virtual {p0, v0}, Lt1/g$e;->V(I)V

    invoke-virtual {p0, v1, v2, v0}, Lt1/g$e;->a([BII)V

    return-void

    :cond_0
    iget v0, p0, Lt1/g$b;->f:I

    sub-int/2addr v3, v0

    if-le v2, v3, :cond_1

    invoke-direct {p0}, Lt1/g$e;->e0()V

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Lt1/g;->B(I)I

    move-result v0

    iget v2, p0, Lt1/g$b;->f:I
    :try_end_0
    .catch Lt1/b0$c; {:try_start_0 .. :try_end_0} :catch_2

    if-ne v0, v1, :cond_2

    add-int v1, v2, v0

    :try_start_1
    iput v1, p0, Lt1/g$b;->f:I

    iget-object v3, p0, Lt1/g$b;->d:[B

    iget v4, p0, Lt1/g$b;->e:I

    sub-int/2addr v4, v1

    invoke-static {p1, v3, v1, v4}, Lt1/b0;->a(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput v2, p0, Lt1/g$b;->f:I

    sub-int v3, v1, v2

    sub-int/2addr v3, v0

    invoke-virtual {p0, v3}, Lt1/g$b;->c0(I)V

    iput v1, p0, Lt1/g$b;->f:I

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lt1/b0;->b(Ljava/lang/CharSequence;)I

    move-result v3

    invoke-virtual {p0, v3}, Lt1/g$b;->c0(I)V

    iget-object v0, p0, Lt1/g$b;->d:[B

    iget v1, p0, Lt1/g$b;->f:I

    invoke-static {p1, v0, v1, v3}, Lt1/b0;->a(Ljava/lang/CharSequence;[BII)I

    move-result v0

    iput v0, p0, Lt1/g$b;->f:I

    :goto_0
    iget v0, p0, Lt1/g$b;->g:I

    add-int/2addr v0, v3

    iput v0, p0, Lt1/g$b;->g:I
    :try_end_1
    .catch Lt1/b0$c; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Lt1/g$d;

    invoke-direct {v1, v0}, Lt1/g$d;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    iget v1, p0, Lt1/g$b;->g:I

    iget v3, p0, Lt1/g$b;->f:I

    sub-int/2addr v3, v2

    sub-int/2addr v1, v3

    iput v1, p0, Lt1/g$b;->g:I

    iput v2, p0, Lt1/g$b;->f:I

    throw v0
    :try_end_2
    .catch Lt1/b0$c; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception v0

    invoke-virtual {p0, p1, v0}, Lt1/g;->F(Ljava/lang/String;Lt1/b0$c;)V

    :goto_1
    return-void
.end method
