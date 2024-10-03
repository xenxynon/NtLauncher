.class public final Ld/a;
.super Lt1/k;
.source "SourceFile"

# interfaces
.implements Lt1/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt1/k<",
        "Ld/a;",
        "Ld/a$b;",
        ">;",
        "Lt1/s;"
    }
.end annotation


# static fields
.field private static final k:Ld/a;

.field private static volatile l:Lt1/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt1/u<",
            "Ld/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private g:I

.field private h:Lt1/m$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt1/m$e<",
            "Ld/d;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private j:Lt1/m$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt1/m$e<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ld/a;

    invoke-direct {v0}, Ld/a;-><init>()V

    sput-object v0, Ld/a;->k:Ld/a;

    invoke-virtual {v0}, Lt1/k;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lt1/k;-><init>()V

    invoke-static {}, Lt1/k;->emptyProtobufList()Lt1/m$e;

    move-result-object v0

    iput-object v0, p0, Ld/a;->h:Lt1/m$e;

    const-string v0, ""

    iput-object v0, p0, Ld/a;->i:Ljava/lang/String;

    invoke-static {}, Lt1/k;->emptyProtobufList()Lt1/m$e;

    move-result-object v0

    iput-object v0, p0, Ld/a;->j:Lt1/m$e;

    return-void
.end method

.method static synthetic a()Ld/a;
    .locals 1

    sget-object v0, Ld/a;->k:Ld/a;

    return-object v0
.end method

.method static synthetic b(Ld/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ld/a;->m(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Ld/a;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, Ld/a;->e(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic d(Ld/a;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, Ld/a;->f(Ljava/lang/Iterable;)V

    return-void
.end method

.method private e(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ld/a;->g()V

    iget-object p0, p0, Ld/a;->j:Lt1/m$e;

    invoke-static {p1, p0}, Lt1/a;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private f(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ld/d;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ld/a;->h()V

    iget-object p0, p0, Ld/a;->h:Lt1/m$e;

    invoke-static {p1, p0}, Lt1/a;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private g()V
    .locals 1

    iget-object v0, p0, Ld/a;->j:Lt1/m$e;

    invoke-interface {v0}, Lt1/m$e;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ld/a;->j:Lt1/m$e;

    invoke-static {v0}, Lt1/k;->mutableCopy(Lt1/m$e;)Lt1/m$e;

    move-result-object v0

    iput-object v0, p0, Ld/a;->j:Lt1/m$e;

    :cond_0
    return-void
.end method

.method private h()V
    .locals 1

    iget-object v0, p0, Ld/a;->h:Lt1/m$e;

    invoke-interface {v0}, Lt1/m$e;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ld/a;->h:Lt1/m$e;

    invoke-static {v0}, Lt1/k;->mutableCopy(Lt1/m$e;)Lt1/m$e;

    move-result-object v0

    iput-object v0, p0, Ld/a;->h:Lt1/m$e;

    :cond_0
    return-void
.end method

.method public static l()Ld/a$b;
    .locals 1

    sget-object v0, Ld/a;->k:Ld/a;

    invoke-virtual {v0}, Lt1/k;->toBuilder()Lt1/k$b;

    move-result-object v0

    check-cast v0, Ld/a$b;

    return-object v0
.end method

.method private m(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Ld/a;->g:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Ld/a;->g:I

    iput-object p1, p0, Ld/a;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lt1/k$i;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ld/a$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Ld/a;->l:Lt1/u;

    if-nez p0, :cond_1

    const-class p0, Ld/a;

    monitor-enter p0

    :try_start_0
    sget-object p1, Ld/a;->l:Lt1/u;

    if-nez p1, :cond_0

    new-instance p1, Lt1/k$c;

    sget-object p2, Ld/a;->k:Ld/a;

    invoke-direct {p1, p2}, Lt1/k$c;-><init>(Lt1/k;)V

    sput-object p1, Ld/a;->l:Lt1/u;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    sget-object p0, Ld/a;->l:Lt1/u;

    return-object p0

    :pswitch_1
    check-cast p2, Lt1/f;

    check-cast p3, Lt1/i;

    const/4 p1, 0x0

    :cond_2
    :goto_1
    if-nez p1, :cond_9

    :try_start_1
    invoke-virtual {p2}, Lt1/f;->z()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    const/16 v2, 0xa

    if-eq v0, v2, :cond_6

    const/16 v2, 0x12

    if-eq v0, v2, :cond_5

    const/16 v2, 0x1a

    if-eq v0, v2, :cond_3

    invoke-virtual {p0, v0, p2}, Lt1/k;->parseUnknownField(ILt1/f;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Lt1/f;->y()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ld/a;->j:Lt1/m$e;

    invoke-interface {v1}, Lt1/m$e;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Ld/a;->j:Lt1/m$e;

    invoke-static {v1}, Lt1/k;->mutableCopy(Lt1/m$e;)Lt1/m$e;

    move-result-object v1

    iput-object v1, p0, Ld/a;->j:Lt1/m$e;

    :cond_4
    iget-object v1, p0, Ld/a;->j:Lt1/m$e;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Lt1/f;->y()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Ld/a;->g:I

    or-int/2addr v1, v2

    iput v1, p0, Ld/a;->g:I

    iput-object v0, p0, Ld/a;->i:Ljava/lang/String;

    goto :goto_1

    :cond_6
    iget-object v0, p0, Ld/a;->h:Lt1/m$e;

    invoke-interface {v0}, Lt1/m$e;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Ld/a;->h:Lt1/m$e;

    invoke-static {v0}, Lt1/k;->mutableCopy(Lt1/m$e;)Lt1/m$e;

    move-result-object v0

    iput-object v0, p0, Ld/a;->h:Lt1/m$e;

    :cond_7
    iget-object v0, p0, Ld/a;->h:Lt1/m$e;

    invoke-static {}, Ld/d;->parser()Lt1/u;

    move-result-object v1

    invoke-virtual {p2, v1, p3}, Lt1/f;->q(Lt1/u;Lt1/i;)Lt1/r;

    move-result-object v1

    check-cast v1, Ld/d;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lt1/n; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_8
    :goto_2
    move p1, v1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lt1/n;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lt1/n;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lt1/n;->g(Lt1/r;)Lt1/n;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lt1/n;->g(Lt1/r;)Lt1/n;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_3
    throw p0

    :cond_9
    :pswitch_2
    sget-object p0, Ld/a;->k:Ld/a;

    return-object p0

    :pswitch_3
    check-cast p2, Lt1/k$j;

    check-cast p3, Ld/a;

    iget-object p1, p0, Ld/a;->h:Lt1/m$e;

    iget-object v0, p3, Ld/a;->h:Lt1/m$e;

    invoke-interface {p2, p1, v0}, Lt1/k$j;->a(Lt1/m$e;Lt1/m$e;)Lt1/m$e;

    move-result-object p1

    iput-object p1, p0, Ld/a;->h:Lt1/m$e;

    invoke-virtual {p0}, Ld/a;->k()Z

    move-result p1

    iget-object v0, p0, Ld/a;->i:Ljava/lang/String;

    invoke-virtual {p3}, Ld/a;->k()Z

    move-result v1

    iget-object v2, p3, Ld/a;->i:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Lt1/k$j;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ld/a;->i:Ljava/lang/String;

    iget-object p1, p0, Ld/a;->j:Lt1/m$e;

    iget-object v0, p3, Ld/a;->j:Lt1/m$e;

    invoke-interface {p2, p1, v0}, Lt1/k$j;->a(Lt1/m$e;Lt1/m$e;)Lt1/m$e;

    move-result-object p1

    iput-object p1, p0, Ld/a;->j:Lt1/m$e;

    sget-object p1, Lt1/k$h;->a:Lt1/k$h;

    if-ne p2, p1, :cond_a

    iget p1, p0, Ld/a;->g:I

    iget p2, p3, Ld/a;->g:I

    or-int/2addr p1, p2

    iput p1, p0, Ld/a;->g:I

    :cond_a
    return-object p0

    :pswitch_4
    new-instance p0, Ld/a$b;

    invoke-direct {p0, v0}, Ld/a$b;-><init>(Ld/a$a;)V

    return-object p0

    :pswitch_5
    iget-object p1, p0, Ld/a;->h:Lt1/m$e;

    invoke-interface {p1}, Lt1/m$e;->makeImmutable()V

    iget-object p0, p0, Ld/a;->j:Lt1/m$e;

    invoke-interface {p0}, Lt1/m$e;->makeImmutable()V

    return-object v0

    :pswitch_6
    sget-object p0, Ld/a;->k:Ld/a;

    return-object p0

    :pswitch_7
    new-instance p0, Ld/a;

    invoke-direct {p0}, Ld/a;-><init>()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getSerializedSize()I
    .locals 5

    iget v0, p0, Lt1/k;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Ld/a;->h:Lt1/m$e;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Ld/a;->h:Lt1/m$e;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt1/r;

    invoke-static {v4, v3}, Lt1/g;->v(ILt1/r;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v1, p0, Ld/a;->g:I

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_2

    const/4 v1, 0x2

    invoke-virtual {p0}, Ld/a;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lt1/g;->y(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v2, v1

    :cond_2
    move v1, v0

    :goto_1
    iget-object v3, p0, Ld/a;->j:Lt1/m$e;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Ld/a;->j:Lt1/m$e;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lt1/g;->z(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    add-int/2addr v2, v1

    invoke-virtual {p0}, Ld/a;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/2addr v0, v4

    add-int/2addr v2, v0

    iget-object v0, p0, Lt1/k;->unknownFields:Lt1/z;

    invoke-virtual {v0}, Lt1/z;->d()I

    move-result v0

    add-int/2addr v2, v0

    iput v2, p0, Lt1/k;->memoizedSerializedSize:I

    return v2
.end method

.method public i()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ld/a;->j:Lt1/m$e;

    return-object p0
.end method

.method public j()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ld/a;->i:Ljava/lang/String;

    return-object p0
.end method

.method public k()Z
    .locals 1

    iget p0, p0, Ld/a;->g:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeTo(Lt1/g;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Ld/a;->h:Lt1/m$e;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Ld/a;->h:Lt1/m$e;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt1/r;

    invoke-virtual {p1, v3, v2}, Lt1/g;->S(ILt1/r;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Ld/a;->g:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p0}, Ld/a;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lt1/g;->T(ILjava/lang/String;)V

    :cond_1
    :goto_1
    iget-object v1, p0, Ld/a;->j:Lt1/m$e;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Ld/a;->j:Lt1/m$e;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lt1/g;->T(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lt1/k;->unknownFields:Lt1/z;

    invoke-virtual {p0, p1}, Lt1/z;->m(Lt1/g;)V

    return-void
.end method
