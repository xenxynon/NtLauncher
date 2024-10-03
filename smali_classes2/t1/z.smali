.class public final Lt1/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final f:Lt1/z;


# instance fields
.field private a:I

.field private b:[I

.field private c:[Ljava/lang/Object;

.field private d:I

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lt1/z;

    const/4 v1, 0x0

    new-array v2, v1, [I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v1}, Lt1/z;-><init>(I[I[Ljava/lang/Object;Z)V

    sput-object v0, Lt1/z;->f:Lt1/z;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/16 v0, 0x8

    new-array v1, v0, [I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v2, v1, v0, v3}, Lt1/z;-><init>(I[I[Ljava/lang/Object;Z)V

    return-void
.end method

.method private constructor <init>(I[I[Ljava/lang/Object;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lt1/z;->d:I

    iput p1, p0, Lt1/z;->a:I

    iput-object p2, p0, Lt1/z;->b:[I

    iput-object p3, p0, Lt1/z;->c:[Ljava/lang/Object;

    iput-boolean p4, p0, Lt1/z;->e:Z

    return-void
.end method

.method private b()V
    .locals 3

    iget v0, p0, Lt1/z;->a:I

    iget-object v1, p0, Lt1/z;->b:[I

    array-length v2, v1

    if-ne v0, v2, :cond_1

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    shr-int/lit8 v2, v0, 0x1

    :goto_0
    add-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lt1/z;->b:[I

    iget-object v1, p0, Lt1/z;->c:[Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lt1/z;->c:[Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static c()Lt1/z;
    .locals 1

    sget-object v0, Lt1/z;->f:Lt1/z;

    return-object v0
.end method

.method private g(Lt1/f;)Lt1/z;
    .locals 1

    :cond_0
    invoke-virtual {p1}, Lt1/f;->z()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0, p1}, Lt1/z;->f(ILt1/f;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-object p0
.end method

.method static i(Lt1/z;Lt1/z;)Lt1/z;
    .locals 6

    iget v0, p0, Lt1/z;->a:I

    iget v1, p1, Lt1/z;->a:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lt1/z;->b:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iget-object v2, p1, Lt1/z;->b:[I

    iget v3, p0, Lt1/z;->a:I

    iget v4, p1, Lt1/z;->a:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lt1/z;->c:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p1, Lt1/z;->c:[Ljava/lang/Object;

    iget p0, p0, Lt1/z;->a:I

    iget p1, p1, Lt1/z;->a:I

    invoke-static {v3, v5, v2, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Lt1/z;

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, v2, p1}, Lt1/z;-><init>(I[I[Ljava/lang/Object;Z)V

    return-object p0
.end method

.method static j()Lt1/z;
    .locals 1

    new-instance v0, Lt1/z;

    invoke-direct {v0}, Lt1/z;-><init>()V

    return-object v0
.end method

.method private l(ILjava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Lt1/z;->b()V

    iget-object v0, p0, Lt1/z;->b:[I

    iget v1, p0, Lt1/z;->a:I

    aput p1, v0, v1

    iget-object p1, p0, Lt1/z;->c:[Ljava/lang/Object;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lt1/z;->a:I

    return-void
.end method


# virtual methods
.method a()V
    .locals 0

    iget-boolean p0, p0, Lt1/z;->e:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public d()I
    .locals 6

    iget v0, p0, Lt1/z;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lt1/z;->a:I

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Lt1/z;->b:[I

    aget v2, v2, v0

    invoke-static {v2}, Lt1/c0;->a(I)I

    move-result v3

    invoke-static {v2}, Lt1/c0;->b(I)I

    move-result v2

    if-eqz v2, :cond_5

    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3

    const/4 v5, 0x3

    if-eq v2, v5, :cond_2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lt1/z;->c:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Lt1/g;->k(II)I

    move-result v2

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lt1/n;->c()Lt1/n;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :cond_2
    invoke-static {v3}, Lt1/g;->A(I)I

    move-result v2

    mul-int/2addr v2, v4

    iget-object v3, p0, Lt1/z;->c:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lt1/z;

    invoke-virtual {v3}, Lt1/z;->d()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lt1/z;->c:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Lt1/e;

    invoke-static {v3, v2}, Lt1/g;->g(ILt1/e;)I

    move-result v2

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lt1/z;->c:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lt1/g;->m(IJ)I

    move-result v2

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lt1/z;->c:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lt1/g;->C(IJ)I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    iput v1, p0, Lt1/z;->d:I

    return v1
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lt1/z;->e:Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lt1/z;

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lt1/z;

    iget v2, p0, Lt1/z;->a:I

    iget v3, p1, Lt1/z;->a:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lt1/z;->b:[I

    iget-object v3, p1, Lt1/z;->b:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object p0, p0, Lt1/z;->c:[Ljava/lang/Object;

    iget-object p1, p1, Lt1/z;->c:[Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method f(ILt1/f;)Z
    .locals 5

    invoke-virtual {p0}, Lt1/z;->a()V

    invoke-static {p1}, Lt1/c0;->a(I)I

    move-result v0

    invoke-static {p1}, Lt1/c0;->b(I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    if-eq v1, v2, :cond_4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 v3, 0x3

    const/4 v4, 0x4

    if-eq v1, v3, :cond_2

    if-eq v1, v4, :cond_1

    const/4 v0, 0x5

    if-ne v1, v0, :cond_0

    invoke-virtual {p2}, Lt1/f;->l()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lt1/z;->l(ILjava/lang/Object;)V

    return v2

    :cond_0
    invoke-static {}, Lt1/n;->c()Lt1/n;

    move-result-object p0

    throw p0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    new-instance v1, Lt1/z;

    invoke-direct {v1}, Lt1/z;-><init>()V

    invoke-direct {v1, p2}, Lt1/z;->g(Lt1/f;)Lt1/z;

    invoke-static {v0, v4}, Lt1/c0;->c(II)I

    move-result v0

    invoke-virtual {p2, v0}, Lt1/f;->a(I)V

    invoke-direct {p0, p1, v1}, Lt1/z;->l(ILjava/lang/Object;)V

    return v2

    :cond_3
    invoke-virtual {p2}, Lt1/f;->j()Lt1/e;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lt1/z;->l(ILjava/lang/Object;)V

    return v2

    :cond_4
    invoke-virtual {p2}, Lt1/f;->m()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lt1/z;->l(ILjava/lang/Object;)V

    return v2

    :cond_5
    invoke-virtual {p2}, Lt1/f;->p()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lt1/z;->l(ILjava/lang/Object;)V

    return v2
.end method

.method h(II)Lt1/z;
    .locals 2

    invoke-virtual {p0}, Lt1/z;->a()V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lt1/c0;->c(II)I

    move-result p1

    int-to-long v0, p2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lt1/z;->l(ILjava/lang/Object;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Zero is not a valid field number."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lt1/z;->a:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lt1/z;->b:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lt1/z;->c:[Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v1, p0

    return v1
.end method

.method final k(Ljava/lang/StringBuilder;I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lt1/z;->a:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lt1/z;->b:[I

    aget v1, v1, v0

    invoke-static {v1}, Lt1/c0;->a(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lt1/z;->c:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {p1, p2, v1, v2}, Lt1/t;->c(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public m(Lt1/g;)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lt1/z;->a:I

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lt1/z;->b:[I

    aget v1, v1, v0

    invoke-static {v1}, Lt1/c0;->a(I)I

    move-result v2

    invoke-static {v1}, Lt1/c0;->b(I)I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lt1/z;->c:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lt1/g;->N(II)V

    goto :goto_1

    :cond_0
    invoke-static {}, Lt1/n;->c()Lt1/n;

    move-result-object p0

    throw p0

    :cond_1
    invoke-virtual {p1, v2, v3}, Lt1/g;->U(II)V

    iget-object v1, p0, Lt1/z;->c:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Lt1/z;

    invoke-virtual {v1, p1}, Lt1/z;->m(Lt1/g;)V

    const/4 v1, 0x4

    invoke-virtual {p1, v2, v1}, Lt1/g;->U(II)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lt1/z;->c:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Lt1/e;

    invoke-virtual {p1, v2, v1}, Lt1/g;->L(ILt1/e;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lt1/z;->c:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lt1/g;->O(IJ)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lt1/z;->c:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lt1/g;->W(IJ)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method
