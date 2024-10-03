.class public Lkotlinx/coroutines/flow/z;
.super Ll6/b;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/t;
.implements Lkotlinx/coroutines/flow/e;
.implements Ll6/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/flow/z$a;,
        Lkotlinx/coroutines/flow/z$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ll6/b<",
        "Lkotlinx/coroutines/flow/b0;",
        ">;",
        "Lkotlinx/coroutines/flow/t<",
        "TT;>;",
        "Lkotlinx/coroutines/flow/e;",
        "Ll6/p<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final j:I

.field private final k:I

.field private final l:Lk6/e;

.field private m:[Ljava/lang/Object;

.field private n:J

.field private o:J

.field private p:I

.field private q:I


# direct methods
.method public constructor <init>(IILk6/e;)V
    .locals 0

    invoke-direct {p0}, Ll6/b;-><init>()V

    iput p1, p0, Lkotlinx/coroutines/flow/z;->j:I

    iput p2, p0, Lkotlinx/coroutines/flow/z;->k:I

    iput-object p3, p0, Lkotlinx/coroutines/flow/z;->l:Lk6/e;

    return-void
.end method

.method private final B()V
    .locals 4

    iget-object v0, p0, Lkotlinx/coroutines/flow/z;->m:[Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    invoke-direct {p0}, Lkotlinx/coroutines/flow/z;->H()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lkotlinx/coroutines/flow/a0;->d([Ljava/lang/Object;JLjava/lang/Object;)V

    iget v0, p0, Lkotlinx/coroutines/flow/z;->p:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkotlinx/coroutines/flow/z;->p:I

    invoke-direct {p0}, Lkotlinx/coroutines/flow/z;->H()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iget-wide v2, p0, Lkotlinx/coroutines/flow/z;->n:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    iput-wide v0, p0, Lkotlinx/coroutines/flow/z;->n:J

    :cond_0
    iget-wide v2, p0, Lkotlinx/coroutines/flow/z;->o:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_1

    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/flow/z;->y(J)V

    :cond_1
    return-void
.end method

.method static synthetic C(Lkotlinx/coroutines/flow/z;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/z;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :cond_0
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/flow/z;->D(Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method private final D(Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v6, Li6/o;

    invoke-static {p2}, Lr5/b;->b(Lq5/d;)Lq5/d;

    move-result-object v0

    const/4 v7, 0x1

    invoke-direct {v6, v0, v7}, Li6/o;-><init>(Lq5/d;I)V

    invoke-virtual {v6}, Li6/o;->z()V

    sget-object v8, Ll6/c;->a:[Lq5/d;

    monitor-enter p0

    :try_start_0
    invoke-static {p0, p1}, Lkotlinx/coroutines/flow/z;->s(Lkotlinx/coroutines/flow/z;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Ln5/l;->h:Ln5/l$a;

    sget-object p1, Ln5/t;->a:Ln5/t;

    invoke-static {p1}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v6, p1}, Lq5/d;->resumeWith(Ljava/lang/Object;)V

    invoke-static {p0, v8}, Lkotlinx/coroutines/flow/z;->m(Lkotlinx/coroutines/flow/z;[Lq5/d;)[Lq5/d;

    move-result-object p1

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v9, Lkotlinx/coroutines/flow/z$a;

    invoke-static {p0}, Lkotlinx/coroutines/flow/z;->o(Lkotlinx/coroutines/flow/z;)J

    move-result-wide v0

    invoke-static {p0}, Lkotlinx/coroutines/flow/z;->q(Lkotlinx/coroutines/flow/z;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, v0

    move-object v0, v9

    move-object v1, p0

    move-object v4, p1

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/flow/z$a;-><init>(Lkotlinx/coroutines/flow/z;JLjava/lang/Object;Lq5/d;)V

    invoke-static {p0, v9}, Lkotlinx/coroutines/flow/z;->l(Lkotlinx/coroutines/flow/z;Ljava/lang/Object;)V

    invoke-static {p0}, Lkotlinx/coroutines/flow/z;->p(Lkotlinx/coroutines/flow/z;)I

    move-result p1

    add-int/2addr p1, v7

    invoke-static {p0, p1}, Lkotlinx/coroutines/flow/z;->r(Lkotlinx/coroutines/flow/z;I)V

    invoke-static {p0}, Lkotlinx/coroutines/flow/z;->n(Lkotlinx/coroutines/flow/z;)I

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p0, v8}, Lkotlinx/coroutines/flow/z;->m(Lkotlinx/coroutines/flow/z;[Lq5/d;)[Lq5/d;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move-object p1, v8

    move-object v0, v9

    :goto_0
    monitor-exit p0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v6, v0}, Li6/q;->a(Li6/n;Li6/c1;)V

    :goto_1
    const/4 p0, 0x0

    array-length v0, p1

    :goto_2
    if-ge p0, v0, :cond_4

    aget-object v1, p1, p0

    add-int/lit8 p0, p0, 0x1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    sget-object v2, Ln5/l;->h:Ln5/l$a;

    sget-object v2, Ln5/t;->a:Ln5/t;

    invoke-static {v2}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lq5/d;->resumeWith(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v6}, Li6/o;->u()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_5

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/h;->c(Lq5/d;)V

    :cond_5
    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_6

    return-object p0

    :cond_6
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final E(Ljava/lang/Object;)V
    .locals 6

    invoke-direct {p0}, Lkotlinx/coroutines/flow/z;->L()I

    move-result v0

    iget-object v1, p0, Lkotlinx/coroutines/flow/z;->m:[Ljava/lang/Object;

    const/4 v2, 0x2

    if-nez v1, :cond_0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3, v2}, Lkotlinx/coroutines/flow/z;->M([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    array-length v3, v1

    if-lt v0, v3, :cond_1

    array-length v3, v1

    mul-int/2addr v3, v2

    invoke-direct {p0, v1, v0, v3}, Lkotlinx/coroutines/flow/z;->M([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lkotlinx/coroutines/flow/z;->H()J

    move-result-wide v2

    int-to-long v4, v0

    add-long/2addr v2, v4

    invoke-static {v1, v2, v3, p1}, Lkotlinx/coroutines/flow/a0;->d([Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method private final F([Lq5/d;)[Lq5/d;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lq5/d<",
            "Ln5/t;",
            ">;)[",
            "Lq5/d<",
            "Ln5/t;",
            ">;"
        }
    .end annotation

    array-length v0, p1

    invoke-static {p0}, Ll6/b;->c(Ll6/b;)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Ll6/b;->d(Ll6/b;)[Ll6/d;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    array-length v3, v1

    :cond_2
    :goto_0
    if-ge v2, v3, :cond_6

    aget-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    if-eqz v4, :cond_2

    check-cast v4, Lkotlinx/coroutines/flow/b0;

    iget-object v5, v4, Lkotlinx/coroutines/flow/b0;->b:Lq5/d;

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0, v4}, Lkotlinx/coroutines/flow/z;->P(Lkotlinx/coroutines/flow/b0;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_4

    goto :goto_0

    :cond_4
    array-length v6, p1

    if-lt v0, v6, :cond_5

    array-length v6, p1

    const/4 v7, 0x2

    mul-int/2addr v6, v7

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v6, "copyOf(this, newSize)"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    move-object v6, p1

    check-cast v6, [Lq5/d;

    add-int/lit8 v7, v0, 0x1

    aput-object v5, v6, v0

    const/4 v0, 0x0

    iput-object v0, v4, Lkotlinx/coroutines/flow/b0;->b:Lq5/d;

    move v0, v7

    goto :goto_0

    :cond_6
    :goto_1
    check-cast p1, [Lq5/d;

    return-object p1
.end method

.method private final G()J
    .locals 4

    invoke-direct {p0}, Lkotlinx/coroutines/flow/z;->H()J

    move-result-wide v0

    iget p0, p0, Lkotlinx/coroutines/flow/z;->p:I

    int-to-long v2, p0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private final H()J
    .locals 4

    iget-wide v0, p0, Lkotlinx/coroutines/flow/z;->o:J

    iget-wide v2, p0, Lkotlinx/coroutines/flow/z;->n:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private final I(J)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/flow/z;->m:[Ljava/lang/Object;

    invoke-static {p0}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/flow/a0;->c([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lkotlinx/coroutines/flow/z$a;

    if-eqz p1, :cond_0

    check-cast p0, Lkotlinx/coroutines/flow/z$a;

    iget-object p0, p0, Lkotlinx/coroutines/flow/z$a;->i:Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method private final J()J
    .locals 4

    invoke-direct {p0}, Lkotlinx/coroutines/flow/z;->H()J

    move-result-wide v0

    iget v2, p0, Lkotlinx/coroutines/flow/z;->p:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget p0, p0, Lkotlinx/coroutines/flow/z;->q:I

    int-to-long v2, p0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private final K()I
    .locals 4

    invoke-direct {p0}, Lkotlinx/coroutines/flow/z;->H()J

    move-result-wide v0

    iget v2, p0, Lkotlinx/coroutines/flow/z;->p:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lkotlinx/coroutines/flow/z;->n:J

    sub-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method private final L()I
    .locals 1

    iget v0, p0, Lkotlinx/coroutines/flow/z;->p:I

    iget p0, p0, Lkotlinx/coroutines/flow/z;->q:I

    add-int/2addr v0, p0

    return v0
.end method

.method private final M([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    if-lez p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_3

    new-array p3, p3, [Ljava/lang/Object;

    iput-object p3, p0, Lkotlinx/coroutines/flow/z;->m:[Ljava/lang/Object;

    if-nez p1, :cond_1

    return-object p3

    :cond_1
    invoke-direct {p0}, Lkotlinx/coroutines/flow/z;->H()J

    move-result-wide v1

    :goto_1
    if-ge v0, p2, :cond_2

    add-int/lit8 p0, v0, 0x1

    int-to-long v3, v0

    add-long/2addr v3, v1

    invoke-static {p1, v3, v4}, Lkotlinx/coroutines/flow/a0;->c([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p3, v3, v4, v0}, Lkotlinx/coroutines/flow/a0;->d([Ljava/lang/Object;JLjava/lang/Object;)V

    move v0, p0

    goto :goto_1

    :cond_2
    return-object p3

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Buffer size overflow"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final N(Ljava/lang/Object;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Ll6/b;->i()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/z;->O(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    iget v0, p0, Lkotlinx/coroutines/flow/z;->p:I

    iget v1, p0, Lkotlinx/coroutines/flow/z;->k:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_3

    iget-wide v0, p0, Lkotlinx/coroutines/flow/z;->o:J

    iget-wide v3, p0, Lkotlinx/coroutines/flow/z;->n:J

    cmp-long v0, v0, v3

    if-gtz v0, :cond_3

    iget-object v0, p0, Lkotlinx/coroutines/flow/z;->l:Lk6/e;

    sget-object v1, Lkotlinx/coroutines/flow/z$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v2, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/z;->E(Ljava/lang/Object;)V

    iget p1, p0, Lkotlinx/coroutines/flow/z;->p:I

    add-int/2addr p1, v2

    iput p1, p0, Lkotlinx/coroutines/flow/z;->p:I

    iget v0, p0, Lkotlinx/coroutines/flow/z;->k:I

    if-le p1, v0, :cond_4

    invoke-direct {p0}, Lkotlinx/coroutines/flow/z;->B()V

    :cond_4
    invoke-direct {p0}, Lkotlinx/coroutines/flow/z;->K()I

    move-result p1

    iget v0, p0, Lkotlinx/coroutines/flow/z;->j:I

    if-le p1, v0, :cond_5

    iget-wide v0, p0, Lkotlinx/coroutines/flow/z;->n:J

    const-wide/16 v3, 0x1

    add-long v6, v0, v3

    iget-wide v8, p0, Lkotlinx/coroutines/flow/z;->o:J

    invoke-direct {p0}, Lkotlinx/coroutines/flow/z;->G()J

    move-result-wide v10

    invoke-direct {p0}, Lkotlinx/coroutines/flow/z;->J()J

    move-result-wide v12

    move-object v5, p0

    invoke-direct/range {v5 .. v13}, Lkotlinx/coroutines/flow/z;->R(JJJJ)V

    :cond_5
    return v2
.end method

.method private final O(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget v0, p0, Lkotlinx/coroutines/flow/z;->j:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/z;->E(Ljava/lang/Object;)V

    iget p1, p0, Lkotlinx/coroutines/flow/z;->p:I

    add-int/2addr p1, v1

    iput p1, p0, Lkotlinx/coroutines/flow/z;->p:I

    iget v0, p0, Lkotlinx/coroutines/flow/z;->j:I

    if-le p1, v0, :cond_1

    invoke-direct {p0}, Lkotlinx/coroutines/flow/z;->B()V

    :cond_1
    invoke-direct {p0}, Lkotlinx/coroutines/flow/z;->H()J

    move-result-wide v2

    iget p1, p0, Lkotlinx/coroutines/flow/z;->p:I

    int-to-long v4, p1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lkotlinx/coroutines/flow/z;->o:J

    return v1
.end method

.method private final P(Lkotlinx/coroutines/flow/b0;)J
    .locals 6

    iget-wide v0, p1, Lkotlinx/coroutines/flow/b0;->a:J

    invoke-direct {p0}, Lkotlinx/coroutines/flow/z;->G()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    return-wide v0

    :cond_0
    iget p1, p0, Lkotlinx/coroutines/flow/z;->k:I

    const-wide/16 v2, -0x1

    if-lez p1, :cond_1

    return-wide v2

    :cond_1
    invoke-direct {p0}, Lkotlinx/coroutines/flow/z;->H()J

    move-result-wide v4

    cmp-long p1, v0, v4

    if-lez p1, :cond_2

    return-wide v2

    :cond_2
    iget p0, p0, Lkotlinx/coroutines/flow/z;->q:I

    if-nez p0, :cond_3

    return-wide v2

    :cond_3
    return-wide v0
.end method

.method private final Q(Lkotlinx/coroutines/flow/b0;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Ll6/c;->a:[Lq5/d;

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/z;->P(Lkotlinx/coroutines/flow/b0;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    sget-object p1, Lkotlinx/coroutines/flow/a0;->a:Lkotlinx/coroutines/internal/b0;

    goto :goto_0

    :cond_0
    iget-wide v3, p1, Lkotlinx/coroutines/flow/b0;->a:J

    invoke-direct {p0, v1, v2}, Lkotlinx/coroutines/flow/z;->I(J)Ljava/lang/Object;

    move-result-object v0

    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    iput-wide v1, p1, Lkotlinx/coroutines/flow/b0;->a:J

    invoke-virtual {p0, v3, v4}, Lkotlinx/coroutines/flow/z;->S(J)[Lq5/d;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    :goto_0
    monitor-exit p0

    const/4 p0, 0x0

    array-length v1, v0

    :goto_1
    if-ge p0, v1, :cond_2

    aget-object v2, v0, p0

    add-int/lit8 p0, p0, 0x1

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v3, Ln5/l;->h:Ln5/l$a;

    sget-object v3, Ln5/t;->a:Ln5/t;

    invoke-static {v3}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lq5/d;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final R(JJJJ)V
    .locals 13

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    invoke-direct {p0}, Lkotlinx/coroutines/flow/z;->H()J

    move-result-wide v7

    :goto_0
    cmp-long v9, v7, v5

    if-gez v9, :cond_0

    const-wide/16 v9, 0x1

    add-long/2addr v9, v7

    iget-object v11, v0, Lkotlinx/coroutines/flow/z;->m:[Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    const/4 v12, 0x0

    invoke-static {v11, v7, v8, v12}, Lkotlinx/coroutines/flow/a0;->d([Ljava/lang/Object;JLjava/lang/Object;)V

    move-wide v7, v9

    goto :goto_0

    :cond_0
    iput-wide v1, v0, Lkotlinx/coroutines/flow/z;->n:J

    iput-wide v3, v0, Lkotlinx/coroutines/flow/z;->o:J

    sub-long v1, p5, v5

    long-to-int v1, v1

    iput v1, v0, Lkotlinx/coroutines/flow/z;->p:I

    sub-long v1, p7, p5

    long-to-int v1, v1

    iput v1, v0, Lkotlinx/coroutines/flow/z;->q:I

    return-void
.end method

.method public static final synthetic k(Lkotlinx/coroutines/flow/z;Lkotlinx/coroutines/flow/z$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/z;->v(Lkotlinx/coroutines/flow/z$a;)V

    return-void
.end method

.method public static final synthetic l(Lkotlinx/coroutines/flow/z;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/z;->E(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic m(Lkotlinx/coroutines/flow/z;[Lq5/d;)[Lq5/d;
    .locals 0

    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/z;->F([Lq5/d;)[Lq5/d;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic n(Lkotlinx/coroutines/flow/z;)I
    .locals 0

    iget p0, p0, Lkotlinx/coroutines/flow/z;->k:I

    return p0
.end method

.method public static final synthetic o(Lkotlinx/coroutines/flow/z;)J
    .locals 2

    invoke-direct {p0}, Lkotlinx/coroutines/flow/z;->H()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic p(Lkotlinx/coroutines/flow/z;)I
    .locals 0

    iget p0, p0, Lkotlinx/coroutines/flow/z;->q:I

    return p0
.end method

.method public static final synthetic q(Lkotlinx/coroutines/flow/z;)I
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/flow/z;->L()I

    move-result p0

    return p0
.end method

.method public static final synthetic r(Lkotlinx/coroutines/flow/z;I)V
    .locals 0

    iput p1, p0, Lkotlinx/coroutines/flow/z;->q:I

    return-void
.end method

.method public static final synthetic s(Lkotlinx/coroutines/flow/z;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/z;->N(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic t(Lkotlinx/coroutines/flow/z;Lkotlinx/coroutines/flow/b0;)J
    .locals 0

    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/z;->P(Lkotlinx/coroutines/flow/b0;)J

    move-result-wide p0

    return-wide p0
.end method

.method private final u(Lkotlinx/coroutines/flow/b0;Lq5/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/b0;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Li6/o;

    invoke-static {p2}, Lr5/b;->b(Lq5/d;)Lq5/d;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Li6/o;-><init>(Lq5/d;I)V

    invoke-virtual {v0}, Li6/o;->z()V

    monitor-enter p0

    :try_start_0
    invoke-static {p0, p1}, Lkotlinx/coroutines/flow/z;->t(Lkotlinx/coroutines/flow/z;Lkotlinx/coroutines/flow/b0;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    iput-object v0, p1, Lkotlinx/coroutines/flow/b0;->b:Lq5/d;

    goto :goto_0

    :cond_0
    sget-object p1, Ln5/l;->h:Ln5/l$a;

    sget-object p1, Ln5/t;->a:Ln5/t;

    invoke-static {p1}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lq5/d;->resumeWith(Ljava/lang/Object;)V

    :goto_0
    sget-object p1, Ln5/t;->a:Ln5/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    invoke-virtual {v0}, Li6/o;->u()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_1

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/h;->c(Lq5/d;)V

    :cond_1
    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p0, p2, :cond_2

    return-object p0

    :cond_2
    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final v(Lkotlinx/coroutines/flow/z$a;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p1, Lkotlinx/coroutines/flow/z$a;->h:J

    invoke-direct {p0}, Lkotlinx/coroutines/flow/z;->H()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lkotlinx/coroutines/flow/z;->m:[Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    iget-wide v1, p1, Lkotlinx/coroutines/flow/z$a;->h:J

    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/flow/a0;->c([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v1, p1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-wide v1, p1, Lkotlinx/coroutines/flow/z$a;->h:J

    sget-object p1, Lkotlinx/coroutines/flow/a0;->a:Lkotlinx/coroutines/internal/b0;

    invoke-static {v0, v1, v2, p1}, Lkotlinx/coroutines/flow/a0;->d([Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0}, Lkotlinx/coroutines/flow/z;->w()V

    sget-object p1, Ln5/t;->a:Ln5/t;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final w()V
    .locals 5

    iget v0, p0, Lkotlinx/coroutines/flow/z;->k:I

    if-nez v0, :cond_0

    iget v0, p0, Lkotlinx/coroutines/flow/z;->q:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/flow/z;->m:[Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    :goto_0
    iget v1, p0, Lkotlinx/coroutines/flow/z;->q:I

    if-lez v1, :cond_1

    invoke-direct {p0}, Lkotlinx/coroutines/flow/z;->H()J

    move-result-wide v1

    invoke-direct {p0}, Lkotlinx/coroutines/flow/z;->L()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/flow/a0;->c([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/flow/a0;->a:Lkotlinx/coroutines/internal/b0;

    if-ne v1, v2, :cond_1

    iget v1, p0, Lkotlinx/coroutines/flow/z;->q:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lkotlinx/coroutines/flow/z;->q:I

    invoke-direct {p0}, Lkotlinx/coroutines/flow/z;->H()J

    move-result-wide v1

    invoke-direct {p0}, Lkotlinx/coroutines/flow/z;->L()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lkotlinx/coroutines/flow/a0;->d([Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic x(Lkotlinx/coroutines/flow/z;Lkotlinx/coroutines/flow/f;Lq5/d;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Lkotlinx/coroutines/flow/z$c;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/z$c;

    iget v1, v0, Lkotlinx/coroutines/flow/z$c;->m:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/z$c;->m:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/z$c;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/z$c;-><init>(Lkotlinx/coroutines/flow/z;Lq5/d;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/flow/z$c;->k:Ljava/lang/Object;

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lkotlinx/coroutines/flow/z$c;->m:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/flow/z$c;->j:Ljava/lang/Object;

    check-cast p0, Li6/v1;

    iget-object p1, v0, Lkotlinx/coroutines/flow/z$c;->i:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/b0;

    iget-object v2, v0, Lkotlinx/coroutines/flow/z$c;->h:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/f;

    iget-object v5, v0, Lkotlinx/coroutines/flow/z$c;->g:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/flow/z;

    :goto_1
    :try_start_0
    invoke-static {p2}, Ln5/m;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p2, v2

    move-object v2, p0

    move-object p0, v5

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lkotlinx/coroutines/flow/z$c;->j:Ljava/lang/Object;

    check-cast p0, Li6/v1;

    iget-object p1, v0, Lkotlinx/coroutines/flow/z$c;->i:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/b0;

    iget-object v2, v0, Lkotlinx/coroutines/flow/z$c;->h:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/f;

    iget-object v5, v0, Lkotlinx/coroutines/flow/z$c;->g:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/flow/z;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_3
    iget-object p0, v0, Lkotlinx/coroutines/flow/z$c;->i:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lkotlinx/coroutines/flow/b0;

    iget-object p0, v0, Lkotlinx/coroutines/flow/z$c;->h:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/flow/f;

    iget-object v2, v0, Lkotlinx/coroutines/flow/z$c;->g:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/z;

    :try_start_1
    invoke-static {p2}, Ln5/m;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object p2, p0

    move-object p0, v2

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v5, v2

    goto/16 :goto_5

    :cond_4
    invoke-static {p2}, Ln5/m;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ll6/b;->e()Ll6/d;

    move-result-object p2

    check-cast p2, Lkotlinx/coroutines/flow/b0;

    :try_start_2
    instance-of v2, p1, Lkotlinx/coroutines/flow/g0;

    if-eqz v2, :cond_5

    move-object v2, p1

    check-cast v2, Lkotlinx/coroutines/flow/g0;

    iput-object p0, v0, Lkotlinx/coroutines/flow/z$c;->g:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/flow/z$c;->h:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/flow/z$c;->i:Ljava/lang/Object;

    iput v5, v0, Lkotlinx/coroutines/flow/z$c;->m:I

    invoke-virtual {v2, v0}, Lkotlinx/coroutines/flow/g0;->a(Lq5/d;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-ne v2, v1, :cond_5

    return-object v1

    :cond_5
    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    :goto_2
    :try_start_3
    invoke-interface {v0}, Lq5/d;->getContext()Lq5/g;

    move-result-object v2

    sget-object v5, Li6/v1;->d:Li6/v1$b;

    invoke-interface {v2, v5}, Lq5/g;->get(Lq5/g$c;)Lq5/g$b;

    move-result-object v2

    check-cast v2, Li6/v1;

    :cond_6
    :goto_3
    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/z;->Q(Lkotlinx/coroutines/flow/b0;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lkotlinx/coroutines/flow/a0;->a:Lkotlinx/coroutines/internal/b0;

    if-eq v5, v6, :cond_8

    if-nez v2, :cond_7

    goto :goto_4

    :cond_7
    invoke-static {v2}, Li6/z1;->g(Li6/v1;)V

    :goto_4
    iput-object p0, v0, Lkotlinx/coroutines/flow/z$c;->g:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/flow/z$c;->h:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/flow/z$c;->i:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/flow/z$c;->j:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/flow/z$c;->m:I

    invoke-interface {p2, v5, v0}, Lkotlinx/coroutines/flow/f;->emit(Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_6

    return-object v1

    :cond_8
    iput-object p0, v0, Lkotlinx/coroutines/flow/z$c;->g:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/flow/z$c;->h:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/flow/z$c;->i:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/flow/z$c;->j:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/flow/z$c;->m:I

    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/flow/z;->u(Lkotlinx/coroutines/flow/b0;Lq5/d;)Ljava/lang/Object;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne v5, v1, :cond_6

    return-object v1

    :catchall_2
    move-exception p2

    move-object v5, p0

    move-object p0, p2

    goto :goto_5

    :catchall_3
    move-exception p1

    move-object v5, p0

    move-object p0, p1

    move-object p1, p2

    :goto_5
    invoke-virtual {v5, p1}, Ll6/b;->h(Ll6/d;)V

    throw p0
.end method

.method private final y(J)V
    .locals 8

    invoke-static {p0}, Ll6/b;->c(Ll6/b;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Ll6/b;->d(Ll6/b;)[Ll6/d;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    array-length v2, v0

    :cond_2
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    if-eqz v3, :cond_2

    check-cast v3, Lkotlinx/coroutines/flow/b0;

    iget-wide v4, v3, Lkotlinx/coroutines/flow/b0;->a:J

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-ltz v6, :cond_2

    cmp-long v4, v4, p1

    if-gez v4, :cond_2

    iput-wide p1, v3, Lkotlinx/coroutines/flow/b0;->a:J

    goto :goto_0

    :cond_3
    :goto_1
    iput-wide p1, p0, Lkotlinx/coroutines/flow/z;->o:J

    return-void
.end method


# virtual methods
.method protected A(I)[Lkotlinx/coroutines/flow/b0;
    .locals 0

    new-array p0, p1, [Lkotlinx/coroutines/flow/b0;

    return-object p0
.end method

.method public final S(J)[Lq5/d;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)[",
            "Lq5/d<",
            "Ln5/t;",
            ">;"
        }
    .end annotation

    move-object/from16 v9, p0

    iget-wide v0, v9, Lkotlinx/coroutines/flow/z;->o:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    sget-object v0, Ll6/c;->a:[Lq5/d;

    return-object v0

    :cond_0
    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/flow/z;->H()J

    move-result-wide v0

    iget v2, v9, Lkotlinx/coroutines/flow/z;->p:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    iget v4, v9, Lkotlinx/coroutines/flow/z;->k:I

    const-wide/16 v5, 0x1

    if-nez v4, :cond_1

    iget v4, v9, Lkotlinx/coroutines/flow/z;->q:I

    if-lez v4, :cond_1

    add-long/2addr v2, v5

    :cond_1
    invoke-static/range {p0 .. p0}, Ll6/b;->c(Ll6/b;)I

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-static/range {p0 .. p0}, Ll6/b;->d(Ll6/b;)[Ll6/d;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    array-length v7, v4

    const/4 v8, 0x0

    :cond_4
    :goto_0
    if-ge v8, v7, :cond_5

    aget-object v11, v4, v8

    add-int/lit8 v8, v8, 0x1

    if-eqz v11, :cond_4

    check-cast v11, Lkotlinx/coroutines/flow/b0;

    iget-wide v11, v11, Lkotlinx/coroutines/flow/b0;->a:J

    const-wide/16 v13, 0x0

    cmp-long v13, v11, v13

    if-ltz v13, :cond_4

    cmp-long v13, v11, v2

    if-gez v13, :cond_4

    move-wide v2, v11

    goto :goto_0

    :cond_5
    :goto_1
    iget-wide v7, v9, Lkotlinx/coroutines/flow/z;->o:J

    cmp-long v4, v2, v7

    if-gtz v4, :cond_6

    sget-object v0, Ll6/c;->a:[Lq5/d;

    return-object v0

    :cond_6
    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/flow/z;->G()J

    move-result-wide v7

    invoke-virtual/range {p0 .. p0}, Ll6/b;->i()I

    move-result v4

    if-lez v4, :cond_7

    sub-long v11, v7, v2

    long-to-int v4, v11

    iget v11, v9, Lkotlinx/coroutines/flow/z;->q:I

    iget v12, v9, Lkotlinx/coroutines/flow/z;->k:I

    sub-int/2addr v12, v4

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_2

    :cond_7
    iget v4, v9, Lkotlinx/coroutines/flow/z;->q:I

    :goto_2
    sget-object v11, Ll6/c;->a:[Lq5/d;

    iget v12, v9, Lkotlinx/coroutines/flow/z;->q:I

    int-to-long v12, v12

    add-long/2addr v12, v7

    if-lez v4, :cond_b

    new-array v11, v4, [Lq5/d;

    iget-object v14, v9, Lkotlinx/coroutines/flow/z;->m:[Ljava/lang/Object;

    invoke-static {v14}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    move-wide v15, v7

    const/16 v17, 0x0

    :goto_3
    cmp-long v18, v7, v12

    if-gez v18, :cond_a

    add-long v18, v7, v5

    invoke-static {v14, v7, v8}, Lkotlinx/coroutines/flow/a0;->c([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    sget-object v5, Lkotlinx/coroutines/flow/a0;->a:Lkotlinx/coroutines/internal/b0;

    if-eq v10, v5, :cond_9

    const-string v6, "null cannot be cast to non-null type kotlinx.coroutines.flow.SharedFlowImpl.Emitter"

    invoke-static {v10, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/flow/z$a;

    add-int/lit8 v6, v17, 0x1

    move-wide/from16 v20, v2

    iget-object v2, v10, Lkotlinx/coroutines/flow/z$a;->j:Lq5/d;

    aput-object v2, v11, v17

    invoke-static {v14, v7, v8, v5}, Lkotlinx/coroutines/flow/a0;->d([Ljava/lang/Object;JLjava/lang/Object;)V

    iget-object v2, v10, Lkotlinx/coroutines/flow/z$a;->i:Ljava/lang/Object;

    move-wide v7, v15

    invoke-static {v14, v7, v8, v2}, Lkotlinx/coroutines/flow/a0;->d([Ljava/lang/Object;JLjava/lang/Object;)V

    const-wide/16 v2, 0x1

    add-long v15, v7, v2

    if-lt v6, v4, :cond_8

    goto :goto_5

    :cond_8
    move/from16 v17, v6

    move-wide/from16 v7, v18

    move-wide/from16 v2, v20

    goto :goto_4

    :cond_9
    move-wide v7, v15

    move-wide/from16 v7, v18

    :goto_4
    const-wide/16 v5, 0x1

    goto :goto_3

    :cond_a
    move-wide/from16 v20, v2

    :goto_5
    move-wide v7, v15

    goto :goto_6

    :cond_b
    move-wide/from16 v20, v2

    :goto_6
    sub-long v0, v7, v0

    long-to-int v0, v0

    invoke-virtual/range {p0 .. p0}, Ll6/b;->i()I

    move-result v1

    if-nez v1, :cond_c

    move-wide v3, v7

    goto :goto_7

    :cond_c
    move-wide/from16 v3, v20

    :goto_7
    iget-wide v1, v9, Lkotlinx/coroutines/flow/z;->n:J

    iget v5, v9, Lkotlinx/coroutines/flow/z;->j:I

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v5, v0

    sub-long v5, v7, v5

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget v2, v9, Lkotlinx/coroutines/flow/z;->k:I

    if-nez v2, :cond_d

    cmp-long v2, v0, v12

    if-gez v2, :cond_d

    iget-object v2, v9, Lkotlinx/coroutines/flow/z;->m:[Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    invoke-static {v2, v0, v1}, Lkotlinx/coroutines/flow/a0;->c([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    sget-object v5, Lkotlinx/coroutines/flow/a0;->a:Lkotlinx/coroutines/internal/b0;

    invoke-static {v2, v5}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-wide/16 v5, 0x1

    add-long/2addr v7, v5

    add-long/2addr v0, v5

    :cond_d
    move-wide v1, v0

    move-wide v5, v7

    move-object/from16 v0, p0

    move-wide v7, v12

    invoke-direct/range {v0 .. v8}, Lkotlinx/coroutines/flow/z;->R(JJJJ)V

    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/flow/z;->w()V

    array-length v0, v11

    const/4 v1, 0x1

    if-nez v0, :cond_e

    move v10, v1

    goto :goto_8

    :cond_e
    const/4 v10, 0x0

    :goto_8
    xor-int/lit8 v0, v10, 0x1

    if-eqz v0, :cond_f

    invoke-direct {v9, v11}, Lkotlinx/coroutines/flow/z;->F([Lq5/d;)[Lq5/d;

    move-result-object v11

    :cond_f
    return-object v11
.end method

.method public final T()J
    .locals 4

    iget-wide v0, p0, Lkotlinx/coroutines/flow/z;->n:J

    iget-wide v2, p0, Lkotlinx/coroutines/flow/z;->o:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    iput-wide v0, p0, Lkotlinx/coroutines/flow/z;->o:J

    :cond_0
    return-wide v0
.end method

.method public a(Lq5/g;ILk6/e;)Lkotlinx/coroutines/flow/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/g;",
            "I",
            "Lk6/e;",
            ")",
            "Lkotlinx/coroutines/flow/e<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/flow/a0;->e(Lkotlinx/coroutines/flow/y;Lq5/g;ILk6/e;)Lkotlinx/coroutines/flow/e;

    move-result-object p0

    return-object p0
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    sget-object v0, Ll6/c;->a:[Lq5/d;

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/z;->N(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0, v0}, Lkotlinx/coroutines/flow/z;->F([Lq5/d;)[Lq5/d;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    monitor-exit p0

    array-length p0, v0

    :goto_1
    if-ge v1, p0, :cond_2

    aget-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v3, Ln5/l;->h:Ln5/l$a;

    sget-object v3, Ln5/t;->a:Ln5/t;

    invoke-static {v3}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lq5/d;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public collect(Lkotlinx/coroutines/flow/f;Lq5/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/f<",
            "-TT;>;",
            "Lq5/d<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/flow/z;->x(Lkotlinx/coroutines/flow/z;Lkotlinx/coroutines/flow/f;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public emit(Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/flow/z;->C(Lkotlinx/coroutines/flow/z;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic f()Ll6/d;
    .locals 0

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/z;->z()Lkotlinx/coroutines/flow/b0;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic g(I)[Ll6/d;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/z;->A(I)[Lkotlinx/coroutines/flow/b0;

    move-result-object p0

    return-object p0
.end method

.method protected z()Lkotlinx/coroutines/flow/b0;
    .locals 0

    new-instance p0, Lkotlinx/coroutines/flow/b0;

    invoke-direct {p0}, Lkotlinx/coroutines/flow/b0;-><init>()V

    return-object p0
.end method
