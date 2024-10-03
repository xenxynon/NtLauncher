.class public Lj5/d;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj5/d$r;,
        Lj5/d$o;,
        Lj5/d$k;,
        Lj5/d$m;,
        Lj5/d$h;,
        Lj5/d$i;,
        Lj5/d$f;,
        Lj5/d$q;,
        Lj5/d$p;,
        Lj5/d$g;,
        Lj5/d$j;,
        Lj5/d$n;,
        Lj5/d$l;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final l:Lj5/d$l;


# instance fields
.field private final g:[Lj5/d$n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lj5/d<",
            "TK;TV;>.n;"
        }
    .end annotation
.end field

.field private final h:F

.field private final i:Lj5/d$l;

.field private final j:I

.field private k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lj5/d$l;->g:Lj5/d$l;

    sput-object v0, Lj5/d;->l:Lj5/d$l;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    sget-object v0, Lj5/d;->l:Lj5/d$l;

    const/high16 v1, 0x3f400000    # 0.75f

    const/16 v2, 0x10

    invoke-direct {p0, p1, v1, v2, v0}, Lj5/d;-><init>(IFILj5/d$l;)V

    return-void
.end method

.method public constructor <init>(IFILj5/d$l;)V
    .locals 4

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v3, "Initial capacity must not be negative"

    invoke-static {v2, v3}, Lj5/a;->a(ZLjava/lang/String;)V

    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-lez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    const-string v3, "Load factor must be positive"

    invoke-static {v2, v3}, Lj5/a;->a(ZLjava/lang/String;)V

    if-lez p3, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_2
    const-string v3, "Concurrency level must be positive"

    invoke-static {v2, v3}, Lj5/a;->a(ZLjava/lang/String;)V

    const-string v2, "Reference type must not be null"

    invoke-static {p4, v2}, Lj5/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput p2, p0, Lj5/d;->h:F

    const/high16 p2, 0x10000

    invoke-static {p3, p2}, Lj5/d;->d(II)I

    move-result p2

    iput p2, p0, Lj5/d;->j:I

    shl-int p2, v1, p2

    iput-object p4, p0, Lj5/d;->i:Lj5/d$l;

    add-int/2addr p1, p2

    int-to-long p3, p1

    const-wide/16 v1, 0x1

    sub-long/2addr p3, v1

    int-to-long v1, p2

    div-long/2addr p3, v1

    long-to-int p1, p3

    const-class p3, Lj5/d$n;

    invoke-static {p3, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lj5/d$n;

    iput-object p2, p0, Lj5/d;->g:[Lj5/d$n;

    :goto_3
    iget-object p2, p0, Lj5/d;->g:[Lj5/d$n;

    array-length p3, p2

    if-ge v0, p3, :cond_3

    new-instance p3, Lj5/d$n;

    invoke-direct {p3, p0, p1}, Lj5/d$n;-><init>(Lj5/d;I)V

    aput-object p3, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method static bridge synthetic b(Lj5/d;)Lj5/d$l;
    .locals 0

    iget-object p0, p0, Lj5/d;->i:Lj5/d$l;

    return-object p0
.end method

.method static bridge synthetic c(Lj5/d;)[Lj5/d$n;
    .locals 0

    iget-object p0, p0, Lj5/d;->g:[Lj5/d$n;

    return-object p0
.end method

.method protected static d(II)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    if-ge v0, p1, :cond_0

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private f(Ljava/lang/Object;Lj5/d$p;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lj5/d<",
            "TK;TV;>.p<TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lj5/d;->g(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0}, Lj5/d;->j(I)Lj5/d$n;

    move-result-object p0

    invoke-virtual {p0, v0, p1, p2}, Lj5/d$n;->g(ILjava/lang/Object;Lj5/d$p;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private j(I)Lj5/d$n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lj5/d<",
            "TK;TV;>.n;"
        }
    .end annotation

    iget-object v0, p0, Lj5/d;->g:[Lj5/d$n;

    iget p0, p0, Lj5/d;->j:I

    rsub-int/lit8 p0, p0, 0x20

    ushr-int p0, p1, p0

    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    and-int/2addr p0, p1

    aget-object p0, v0, p0

    return-object p0
.end method

.method private k(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;Z)TV;"
        }
    .end annotation

    new-instance v0, Lj5/d$a;

    const/4 v1, 0x2

    new-array v1, v1, [Lj5/d$q;

    sget-object v2, Lj5/d$q;->g:Lj5/d$q;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lj5/d$q;->j:Lj5/d$q;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, p0, v1, p3, p2}, Lj5/d$a;-><init>(Lj5/d;[Lj5/d$q;ZLjava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lj5/d;->f(Ljava/lang/Object;Lj5/d$p;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 3

    iget-object p0, p0, Lj5/d;->g:[Lj5/d$n;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Lj5/d$n;->e()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    sget-object v0, Lj5/d$m;->g:Lj5/d$m;

    invoke-virtual {p0, p1, v0}, Lj5/d;->i(Ljava/lang/Object;Lj5/d$m;)Lj5/d$j;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lj5/d$j;->get()Lj5/d$g;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lj5/d$g;->getKey()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p1}, Lj5/j;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method protected e()Lj5/d$k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj5/d<",
            "TK;TV;>.k;"
        }
    .end annotation

    new-instance v0, Lj5/d$k;

    invoke-direct {v0, p0}, Lj5/d$k;-><init>(Lj5/d;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lj5/d;->k:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Lj5/d$i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lj5/d$i;-><init>(Lj5/d;Lj5/f;)V

    iput-object v0, p0, Lj5/d;->k:Ljava/util/Set;

    :cond_0
    iget-object p0, p0, Lj5/d;->k:Ljava/util/Set;

    return-object p0
.end method

.method protected g(Ljava/lang/Object;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    shl-int/lit8 p1, p0, 0xf

    xor-int/lit16 p1, p1, -0x3283

    add-int/2addr p0, p1

    ushr-int/lit8 p1, p0, 0xa

    xor-int/2addr p0, p1

    shl-int/lit8 p1, p0, 0x3

    add-int/2addr p0, p1

    ushr-int/lit8 p1, p0, 0x6

    xor-int/2addr p0, p1

    shl-int/lit8 p1, p0, 0x2

    shl-int/lit8 v0, p0, 0xe

    add-int/2addr p1, v0

    add-int/2addr p0, p1

    ushr-int/lit8 p1, p0, 0x10

    xor-int/2addr p0, p1

    return p0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    sget-object v0, Lj5/d$m;->g:Lj5/d$m;

    invoke-virtual {p0, p1, v0}, Lj5/d;->i(Ljava/lang/Object;Lj5/d$m;)Lj5/d$j;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lj5/d$j;->get()Lj5/d$g;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lj5/d$g;->getValue()Ljava/lang/Object;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method protected final h()F
    .locals 0

    iget p0, p0, Lj5/d;->h:F

    return p0
.end method

.method protected final i(Ljava/lang/Object;Lj5/d$m;)Lj5/d$j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lj5/d$m;",
            ")",
            "Lj5/d$j<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lj5/d;->g(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0}, Lj5/d;->j(I)Lj5/d$n;

    move-result-object p0

    invoke-virtual {p0, p1, v0, p2}, Lj5/d$n;->k(Ljava/lang/Object;ILj5/d$m;)Lj5/d$j;

    move-result-object p0

    return-object p0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lj5/d;->k(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lj5/d;->k(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    new-instance v0, Lj5/d$b;

    const/4 v1, 0x2

    new-array v1, v1, [Lj5/d$q;

    sget-object v2, Lj5/d$q;->h:Lj5/d$q;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lj5/d$q;->i:Lj5/d$q;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, p0, v1}, Lj5/d$b;-><init>(Lj5/d;[Lj5/d$q;)V

    invoke-direct {p0, p1, v0}, Lj5/d;->f(Ljava/lang/Object;Lj5/d$p;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    new-instance v0, Lj5/d$c;

    const/4 v1, 0x2

    new-array v1, v1, [Lj5/d$q;

    sget-object v2, Lj5/d$q;->h:Lj5/d$q;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lj5/d$q;->i:Lj5/d$q;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, p0, v1, p2}, Lj5/d$c;-><init>(Lj5/d;[Lj5/d$q;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lj5/d;->f(Ljava/lang/Object;Lj5/d$p;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    new-instance v0, Lj5/d$e;

    const/4 v1, 0x2

    new-array v1, v1, [Lj5/d$q;

    sget-object v2, Lj5/d$q;->g:Lj5/d$q;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lj5/d$q;->i:Lj5/d$q;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, p0, v1, p2}, Lj5/d$e;-><init>(Lj5/d;[Lj5/d$q;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lj5/d;->f(Ljava/lang/Object;Lj5/d$p;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    new-instance v0, Lj5/d$d;

    const/4 v1, 0x2

    new-array v1, v1, [Lj5/d$q;

    sget-object v2, Lj5/d$q;->g:Lj5/d$q;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lj5/d$q;->i:Lj5/d$q;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, p0, v1, p2, p3}, Lj5/d$d;-><init>(Lj5/d;[Lj5/d$q;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lj5/d;->f(Ljava/lang/Object;Lj5/d$p;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public size()I
    .locals 4

    iget-object p0, p0, Lj5/d;->g:[Lj5/d$n;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p0, v1

    invoke-virtual {v3}, Lj5/d$n;->i()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method
