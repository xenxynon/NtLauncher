.class public final Lt1/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt1/f$a;
    }
.end annotation


# instance fields
.field private final a:[B

.field private final b:Z

.field private c:I

.field private d:I

.field private e:I

.field private final f:Ljava/io/InputStream;

.field private g:I

.field private h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Lt1/f$a;


# direct methods
.method private constructor <init>([BIIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lt1/f;->h:Z

    const v0, 0x7fffffff

    iput v0, p0, Lt1/f;->j:I

    const/16 v0, 0x64

    iput v0, p0, Lt1/f;->l:I

    const/high16 v0, 0x4000000

    iput v0, p0, Lt1/f;->m:I

    const/4 v0, 0x0

    iput-object v0, p0, Lt1/f;->n:Lt1/f$a;

    iput-object p1, p0, Lt1/f;->a:[B

    add-int/2addr p3, p2

    iput p3, p0, Lt1/f;->c:I

    iput p2, p0, Lt1/f;->e:I

    neg-int p1, p2

    iput p1, p0, Lt1/f;->i:I

    iput-object v0, p0, Lt1/f;->f:Ljava/io/InputStream;

    iput-boolean p4, p0, Lt1/f;->b:Z

    return-void
.end method

.method private A()V
    .locals 3

    iget v0, p0, Lt1/f;->c:I

    iget v1, p0, Lt1/f;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lt1/f;->c:I

    iget v1, p0, Lt1/f;->i:I

    add-int/2addr v1, v0

    iget v2, p0, Lt1/f;->j:I

    if-le v1, v2, :cond_0

    sub-int/2addr v1, v2

    iput v1, p0, Lt1/f;->d:I

    sub-int/2addr v0, v1

    iput v0, p0, Lt1/f;->c:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lt1/f;->d:I

    :goto_0
    return-void
.end method

.method private B(I)V
    .locals 0

    invoke-direct {p0, p1}, Lt1/f;->E(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lt1/n;->i()Lt1/n;

    move-result-object p0

    throw p0
.end method

.method private D(I)V
    .locals 4

    if-ltz p1, :cond_2

    iget v0, p0, Lt1/f;->i:I

    iget v1, p0, Lt1/f;->e:I

    add-int v2, v0, v1

    add-int/2addr v2, p1

    iget v3, p0, Lt1/f;->j:I

    if-gt v2, v3, :cond_1

    iget v0, p0, Lt1/f;->c:I

    sub-int v1, v0, v1

    iput v0, p0, Lt1/f;->e:I

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lt1/f;->B(I)V

    sub-int v2, p1, v1

    iget v3, p0, Lt1/f;->c:I

    if-le v2, v3, :cond_0

    add-int/2addr v1, v3

    iput v3, p0, Lt1/f;->e:I

    goto :goto_0

    :cond_0
    iput v2, p0, Lt1/f;->e:I

    return-void

    :cond_1
    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    invoke-virtual {p0, v3}, Lt1/f;->C(I)V

    invoke-static {}, Lt1/n;->i()Lt1/n;

    move-result-object p0

    throw p0

    :cond_2
    invoke-static {}, Lt1/n;->e()Lt1/n;

    move-result-object p0

    throw p0
.end method

.method private E(I)Z
    .locals 5

    iget v0, p0, Lt1/f;->e:I

    add-int v1, v0, p1

    iget v2, p0, Lt1/f;->c:I

    if-le v1, v2, :cond_8

    iget v1, p0, Lt1/f;->i:I

    add-int/2addr v1, v0

    add-int/2addr v1, p1

    iget v0, p0, Lt1/f;->j:I

    const/4 v2, 0x0

    if-le v1, v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lt1/f;->n:Lt1/f$a;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lt1/f$a;->onRefill()V

    :cond_1
    iget-object v0, p0, Lt1/f;->f:Ljava/io/InputStream;

    if-eqz v0, :cond_7

    iget v0, p0, Lt1/f;->e:I

    if-lez v0, :cond_3

    iget v1, p0, Lt1/f;->c:I

    if-le v1, v0, :cond_2

    iget-object v3, p0, Lt1/f;->a:[B

    sub-int/2addr v1, v0

    invoke-static {v3, v0, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget v1, p0, Lt1/f;->i:I

    add-int/2addr v1, v0

    iput v1, p0, Lt1/f;->i:I

    iget v1, p0, Lt1/f;->c:I

    sub-int/2addr v1, v0

    iput v1, p0, Lt1/f;->c:I

    iput v2, p0, Lt1/f;->e:I

    :cond_3
    iget-object v0, p0, Lt1/f;->f:Ljava/io/InputStream;

    iget-object v1, p0, Lt1/f;->a:[B

    iget v3, p0, Lt1/f;->c:I

    array-length v4, v1

    sub-int/2addr v4, v3

    invoke-virtual {v0, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, -0x1

    if-lt v0, v1, :cond_6

    iget-object v1, p0, Lt1/f;->a:[B

    array-length v1, v1

    if-gt v0, v1, :cond_6

    if-lez v0, :cond_7

    iget v1, p0, Lt1/f;->c:I

    add-int/2addr v1, v0

    iput v1, p0, Lt1/f;->c:I

    iget v0, p0, Lt1/f;->i:I

    add-int/2addr v0, p1

    iget v1, p0, Lt1/f;->m:I

    sub-int/2addr v0, v1

    if-gtz v0, :cond_5

    invoke-direct {p0}, Lt1/f;->A()V

    iget v0, p0, Lt1/f;->c:I

    if-lt v0, p1, :cond_4

    const/4 p0, 0x1

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lt1/f;->E(I)Z

    move-result p0

    :goto_0
    return p0

    :cond_5
    invoke-static {}, Lt1/n;->h()Lt1/n;

    move-result-object p0

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputStream#read(byte[]) returned invalid result: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\nThe InputStream implementation is buggy."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    return v2

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refillBuffer() called when "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes were already available in buffer"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d([B)Lt1/f;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lt1/f;->e([BII)Lt1/f;

    move-result-object p0

    return-object p0
.end method

.method public static e([BII)Lt1/f;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lt1/f;->f([BIIZ)Lt1/f;

    move-result-object p0

    return-object p0
.end method

.method static f([BIIZ)Lt1/f;
    .locals 1

    new-instance v0, Lt1/f;

    invoke-direct {v0, p0, p1, p2, p3}, Lt1/f;-><init>([BIIZ)V

    :try_start_0
    invoke-virtual {v0, p2}, Lt1/f;->h(I)I
    :try_end_0
    .catch Lt1/n; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private s(I)[B
    .locals 12

    if-gtz p1, :cond_1

    if-nez p1, :cond_0

    sget-object p0, Lt1/m;->c:[B

    return-object p0

    :cond_0
    invoke-static {}, Lt1/n;->e()Lt1/n;

    move-result-object p0

    throw p0

    :cond_1
    iget v0, p0, Lt1/f;->i:I

    iget v1, p0, Lt1/f;->e:I

    add-int v2, v0, v1

    add-int/2addr v2, p1

    iget v3, p0, Lt1/f;->m:I

    if-gt v2, v3, :cond_c

    iget v3, p0, Lt1/f;->j:I

    if-gt v2, v3, :cond_b

    iget-object v2, p0, Lt1/f;->f:Ljava/io/InputStream;

    if-eqz v2, :cond_a

    iget v3, p0, Lt1/f;->c:I

    sub-int v4, v3, v1

    add-int/2addr v0, v3

    iput v0, p0, Lt1/f;->i:I

    const/4 v0, 0x0

    iput v0, p0, Lt1/f;->e:I

    iput v0, p0, Lt1/f;->c:I

    sub-int v3, p1, v4

    const/4 v5, -0x1

    const/16 v6, 0x1000

    if-lt v3, v6, :cond_7

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    if-gt v3, v2, :cond_2

    goto :goto_3

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-lez v3, :cond_5

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    new-array v8, v7, [B

    move v9, v0

    :goto_1
    if-ge v9, v7, :cond_4

    iget-object v10, p0, Lt1/f;->f:Ljava/io/InputStream;

    sub-int v11, v7, v9

    invoke-virtual {v10, v8, v9, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    if-eq v10, v5, :cond_3

    iget v11, p0, Lt1/f;->i:I

    add-int/2addr v11, v10

    iput v11, p0, Lt1/f;->i:I

    add-int/2addr v9, v10

    goto :goto_1

    :cond_3
    invoke-static {}, Lt1/n;->i()Lt1/n;

    move-result-object p0

    throw p0

    :cond_4
    sub-int/2addr v3, v7

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    new-array p1, p1, [B

    iget-object p0, p0, Lt1/f;->a:[B

    invoke-static {p0, v1, p1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    array-length v2, v1

    invoke-static {v1, v0, p1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    add-int/2addr v4, v1

    goto :goto_2

    :cond_6
    return-object p1

    :cond_7
    :goto_3
    new-array v2, p1, [B

    iget-object v3, p0, Lt1/f;->a:[B

    invoke-static {v3, v1, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_4
    if-ge v4, p1, :cond_9

    iget-object v0, p0, Lt1/f;->f:Ljava/io/InputStream;

    sub-int v1, p1, v4

    invoke-virtual {v0, v2, v4, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-eq v0, v5, :cond_8

    iget v1, p0, Lt1/f;->i:I

    add-int/2addr v1, v0

    iput v1, p0, Lt1/f;->i:I

    add-int/2addr v4, v0

    goto :goto_4

    :cond_8
    invoke-static {}, Lt1/n;->i()Lt1/n;

    move-result-object p0

    throw p0

    :cond_9
    return-object v2

    :cond_a
    invoke-static {}, Lt1/n;->i()Lt1/n;

    move-result-object p0

    throw p0

    :cond_b
    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    invoke-virtual {p0, v3}, Lt1/f;->C(I)V

    invoke-static {}, Lt1/n;->i()Lt1/n;

    move-result-object p0

    throw p0

    :cond_c
    invoke-static {}, Lt1/n;->h()Lt1/n;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public C(I)V
    .locals 2

    iget v0, p0, Lt1/f;->c:I

    iget v1, p0, Lt1/f;->e:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    if-ltz p1, :cond_0

    add-int/2addr v1, p1

    iput v1, p0, Lt1/f;->e:I

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lt1/f;->D(I)V

    :goto_0
    return-void
.end method

.method public a(I)V
    .locals 0

    iget p0, p0, Lt1/f;->g:I

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lt1/n;->a()Lt1/n;

    move-result-object p0

    throw p0
.end method

.method public b()I
    .locals 2

    iget v0, p0, Lt1/f;->j:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget v1, p0, Lt1/f;->i:I

    iget p0, p0, Lt1/f;->e:I

    add-int/2addr v1, p0

    sub-int/2addr v0, v1

    return v0
.end method

.method public c()Z
    .locals 3

    iget v0, p0, Lt1/f;->e:I

    iget v1, p0, Lt1/f;->c:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v2}, Lt1/f;->E(I)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public g(I)V
    .locals 0

    iput p1, p0, Lt1/f;->j:I

    invoke-direct {p0}, Lt1/f;->A()V

    return-void
.end method

.method public h(I)I
    .locals 2

    if-ltz p1, :cond_1

    iget v0, p0, Lt1/f;->i:I

    iget v1, p0, Lt1/f;->e:I

    add-int/2addr v0, v1

    add-int/2addr p1, v0

    iget v0, p0, Lt1/f;->j:I

    if-gt p1, v0, :cond_0

    iput p1, p0, Lt1/f;->j:I

    invoke-direct {p0}, Lt1/f;->A()V

    return v0

    :cond_0
    invoke-static {}, Lt1/n;->i()Lt1/n;

    move-result-object p0

    throw p0

    :cond_1
    invoke-static {}, Lt1/n;->e()Lt1/n;

    move-result-object p0

    throw p0
.end method

.method public i()Z
    .locals 4

    invoke-virtual {p0}, Lt1/f;->w()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public j()Lt1/e;
    .locals 3

    invoke-virtual {p0}, Lt1/f;->v()I

    move-result v0

    iget v1, p0, Lt1/f;->c:I

    iget v2, p0, Lt1/f;->e:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1

    if-lez v0, :cond_1

    iget-boolean v1, p0, Lt1/f;->b:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lt1/f;->h:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lt1/f;->a:[B

    invoke-static {v1, v2, v0}, Lt1/e;->l([BII)Lt1/e;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lt1/f;->a:[B

    invoke-static {v1, v2, v0}, Lt1/e;->d([BII)Lt1/e;

    move-result-object v1

    :goto_0
    iget v2, p0, Lt1/f;->e:I

    add-int/2addr v2, v0

    iput v2, p0, Lt1/f;->e:I

    return-object v1

    :cond_1
    if-nez v0, :cond_2

    sget-object p0, Lt1/e;->h:Lt1/e;

    return-object p0

    :cond_2
    invoke-direct {p0, v0}, Lt1/f;->s(I)[B

    move-result-object p0

    invoke-static {p0}, Lt1/e;->k([B)Lt1/e;

    move-result-object p0

    return-object p0
.end method

.method public k()I
    .locals 0

    invoke-virtual {p0}, Lt1/f;->v()I

    move-result p0

    return p0
.end method

.method public l()I
    .locals 0

    invoke-virtual {p0}, Lt1/f;->t()I

    move-result p0

    return p0
.end method

.method public m()J
    .locals 2

    invoke-virtual {p0}, Lt1/f;->u()J

    move-result-wide v0

    return-wide v0
.end method

.method public n()F
    .locals 0

    invoke-virtual {p0}, Lt1/f;->t()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public o()I
    .locals 0

    invoke-virtual {p0}, Lt1/f;->v()I

    move-result p0

    return p0
.end method

.method public p()J
    .locals 2

    invoke-virtual {p0}, Lt1/f;->w()J

    move-result-wide v0

    return-wide v0
.end method

.method public q(Lt1/u;Lt1/i;)Lt1/r;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lt1/r;",
            ">(",
            "Lt1/u<",
            "TT;>;",
            "Lt1/i;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lt1/f;->v()I

    move-result v0

    iget v1, p0, Lt1/f;->k:I

    iget v2, p0, Lt1/f;->l:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lt1/f;->h(I)I

    move-result v0

    iget v1, p0, Lt1/f;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lt1/f;->k:I

    invoke-interface {p1, p0, p2}, Lt1/u;->a(Lt1/f;Lt1/i;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lt1/r;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lt1/f;->a(I)V

    iget p2, p0, Lt1/f;->k:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lt1/f;->k:I

    invoke-virtual {p0, v0}, Lt1/f;->g(I)V

    return-object p1

    :cond_0
    invoke-static {}, Lt1/n;->f()Lt1/n;

    move-result-object p0

    throw p0
.end method

.method public r()B
    .locals 3

    iget v0, p0, Lt1/f;->e:I

    iget v1, p0, Lt1/f;->c:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lt1/f;->B(I)V

    :cond_0
    iget-object v0, p0, Lt1/f;->a:[B

    iget v1, p0, Lt1/f;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lt1/f;->e:I

    aget-byte p0, v0, v1

    return p0
.end method

.method public t()I
    .locals 3

    iget v0, p0, Lt1/f;->e:I

    iget v1, p0, Lt1/f;->c:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    invoke-direct {p0, v2}, Lt1/f;->B(I)V

    iget v0, p0, Lt1/f;->e:I

    :cond_0
    iget-object v1, p0, Lt1/f;->a:[B

    add-int/lit8 v2, v0, 0x4

    iput v2, p0, Lt1/f;->e:I

    aget-byte p0, v1, v0

    and-int/lit16 p0, p0, 0xff

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr p0, v2

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr p0, v2

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method public u()J
    .locals 9

    iget v0, p0, Lt1/f;->e:I

    iget v1, p0, Lt1/f;->c:I

    sub-int/2addr v1, v0

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    invoke-direct {p0, v2}, Lt1/f;->B(I)V

    iget v0, p0, Lt1/f;->e:I

    :cond_0
    iget-object v1, p0, Lt1/f;->a:[B

    add-int/lit8 v3, v0, 0x8

    iput v3, p0, Lt1/f;->e:I

    aget-byte p0, v1, v0

    int-to-long v3, p0

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 p0, v0, 0x1

    aget-byte p0, v1, p0

    int-to-long v7, p0

    and-long/2addr v7, v5

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 p0, v0, 0x2

    aget-byte p0, v1, p0

    int-to-long v7, p0

    and-long/2addr v7, v5

    const/16 p0, 0x10

    shl-long/2addr v7, p0

    or-long/2addr v2, v7

    add-int/lit8 p0, v0, 0x3

    aget-byte p0, v1, p0

    int-to-long v7, p0

    and-long/2addr v7, v5

    const/16 p0, 0x18

    shl-long/2addr v7, p0

    or-long/2addr v2, v7

    add-int/lit8 p0, v0, 0x4

    aget-byte p0, v1, p0

    int-to-long v7, p0

    and-long/2addr v7, v5

    const/16 p0, 0x20

    shl-long/2addr v7, p0

    or-long/2addr v2, v7

    add-int/lit8 p0, v0, 0x5

    aget-byte p0, v1, p0

    int-to-long v7, p0

    and-long/2addr v7, v5

    const/16 p0, 0x28

    shl-long/2addr v7, p0

    or-long/2addr v2, v7

    add-int/lit8 p0, v0, 0x6

    aget-byte p0, v1, p0

    int-to-long v7, p0

    and-long/2addr v7, v5

    const/16 p0, 0x30

    shl-long/2addr v7, p0

    or-long/2addr v2, v7

    add-int/lit8 v0, v0, 0x7

    aget-byte p0, v1, v0

    int-to-long v0, p0

    and-long/2addr v0, v5

    const/16 p0, 0x38

    shl-long/2addr v0, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public v()I
    .locals 5

    iget v0, p0, Lt1/f;->e:I

    iget v1, p0, Lt1/f;->c:I

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lt1/f;->a:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    if-ltz v0, :cond_1

    iput v3, p0, Lt1/f;->e:I

    return v0

    :cond_1
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-ge v1, v4, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_3

    xor-int/lit8 v0, v0, -0x80

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_5

    xor-int/lit16 v0, v0, 0x3f80

    :cond_4
    move v1, v3

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_6

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_1

    :cond_6
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v4, v1, 0x1c

    xor-int/2addr v0, v4

    const v4, 0xfe03f80

    xor-int/2addr v0, v4

    if-gez v1, :cond_4

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_7

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_4

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_7

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_4

    add-int/lit8 v1, v3, 0x1

    aget-byte v2, v2, v3

    if-gez v2, :cond_7

    :goto_0
    invoke-virtual {p0}, Lt1/f;->x()J

    move-result-wide v0

    long-to-int p0, v0

    return p0

    :cond_7
    :goto_1
    iput v1, p0, Lt1/f;->e:I

    return v0
.end method

.method public w()J
    .locals 11

    iget v0, p0, Lt1/f;->e:I

    iget v1, p0, Lt1/f;->c:I

    if-ne v1, v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v2, p0, Lt1/f;->a:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    if-ltz v0, :cond_1

    iput v3, p0, Lt1/f;->e:I

    int-to-long v0, v0

    return-wide v0

    :cond_1
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-ge v1, v4, :cond_2

    goto/16 :goto_3

    :cond_2
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_3

    xor-int/lit8 v0, v0, -0x80

    :goto_0
    int-to-long v2, v0

    goto/16 :goto_4

    :cond_3
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_4

    xor-int/lit16 v0, v0, 0x3f80

    int-to-long v0, v0

    move-wide v9, v0

    move v1, v3

    move-wide v2, v9

    goto/16 :goto_4

    :cond_4
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_5

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_0

    :cond_5
    int-to-long v3, v0

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v5, v1

    const/16 v1, 0x1c

    shl-long/2addr v5, v1

    xor-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-ltz v1, :cond_6

    const-wide/32 v1, 0xfe03f80

    :goto_1
    xor-long v2, v3, v1

    move v1, v0

    goto :goto_4

    :cond_6
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x23

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_7

    const-wide v5, -0x7f01fc080L

    :goto_2
    xor-long v2, v3, v5

    goto :goto_4

    :cond_7
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x2a

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-ltz v1, :cond_8

    const-wide v1, 0x3f80fe03f80L

    goto :goto_1

    :cond_8
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x31

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_9

    const-wide v5, -0x1fc07f01fc080L

    goto :goto_2

    :cond_9
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x38

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    const-wide v7, 0xfe03f80fe03f80L

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-gez v1, :cond_a

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v7, v0

    cmp-long v0, v7, v5

    if-gez v0, :cond_b

    :goto_3
    invoke-virtual {p0}, Lt1/f;->x()J

    move-result-wide v0

    return-wide v0

    :cond_a
    move v1, v0

    :cond_b
    move-wide v2, v3

    :goto_4
    iput v1, p0, Lt1/f;->e:I

    return-wide v2
.end method

.method x()J
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    invoke-virtual {p0}, Lt1/f;->r()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    :cond_1
    invoke-static {}, Lt1/n;->d()Lt1/n;

    move-result-object p0

    throw p0
.end method

.method public y()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lt1/f;->v()I

    move-result v0

    iget v1, p0, Lt1/f;->c:I

    iget v2, p0, Lt1/f;->e:I

    sub-int v3, v1, v2

    if-gt v0, v3, :cond_0

    if-lez v0, :cond_0

    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lt1/f;->a:[B

    sget-object v4, Lt1/m;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v3, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, p0, Lt1/f;->e:I

    add-int/2addr v2, v0

    iput v2, p0, Lt1/f;->e:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    if-gt v0, v1, :cond_2

    invoke-direct {p0, v0}, Lt1/f;->B(I)V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lt1/f;->a:[B

    iget v3, p0, Lt1/f;->e:I

    sget-object v4, Lt1/m;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, p0, Lt1/f;->e:I

    add-int/2addr v2, v0

    iput v2, p0, Lt1/f;->e:I

    return-object v1

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {p0, v0}, Lt1/f;->s(I)[B

    move-result-object p0

    sget-object v0, Lt1/m;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public z()I
    .locals 1

    invoke-virtual {p0}, Lt1/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lt1/f;->g:I

    return v0

    :cond_0
    invoke-virtual {p0}, Lt1/f;->v()I

    move-result v0

    iput v0, p0, Lt1/f;->g:I

    invoke-static {v0}, Lt1/c0;->a(I)I

    move-result v0

    if-eqz v0, :cond_1

    iget p0, p0, Lt1/f;->g:I

    return p0

    :cond_1
    invoke-static {}, Lt1/n;->b()Lt1/n;

    move-result-object p0

    throw p0
.end method
