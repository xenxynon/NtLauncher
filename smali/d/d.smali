.class public final Ld/d;
.super Lt1/k;
.source "SourceFile"

# interfaces
.implements Lt1/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/d$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt1/k<",
        "Ld/d;",
        "Ld/d$b;",
        ">;",
        "Lt1/s;"
    }
.end annotation


# static fields
.field private static final j:Ld/d;

.field private static volatile k:Lt1/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt1/u<",
            "Ld/d;",
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
            "Ld/b;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ld/d;

    invoke-direct {v0}, Ld/d;-><init>()V

    sput-object v0, Ld/d;->j:Ld/d;

    invoke-virtual {v0}, Lt1/k;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lt1/k;-><init>()V

    invoke-static {}, Lt1/k;->emptyProtobufList()Lt1/m$e;

    move-result-object v0

    iput-object v0, p0, Ld/d;->h:Lt1/m$e;

    const-string v0, ""

    iput-object v0, p0, Ld/d;->i:Ljava/lang/String;

    return-void
.end method

.method static synthetic a()Ld/d;
    .locals 1

    sget-object v0, Ld/d;->j:Ld/d;

    return-object v0
.end method

.method static synthetic b(Ld/d;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ld/d;->g(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Ld/d;Ld/b$b;)V
    .locals 0

    invoke-direct {p0, p1}, Ld/d;->d(Ld/b$b;)V

    return-void
.end method

.method private d(Ld/b$b;)V
    .locals 0

    invoke-direct {p0}, Ld/d;->e()V

    iget-object p0, p0, Ld/d;->h:Lt1/m$e;

    invoke-virtual {p1}, Lt1/k$b;->build()Lt1/k;

    move-result-object p1

    check-cast p1, Ld/b;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private e()V
    .locals 1

    iget-object v0, p0, Ld/d;->h:Lt1/m$e;

    invoke-interface {v0}, Lt1/m$e;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ld/d;->h:Lt1/m$e;

    invoke-static {v0}, Lt1/k;->mutableCopy(Lt1/m$e;)Lt1/m$e;

    move-result-object v0

    iput-object v0, p0, Ld/d;->h:Lt1/m$e;

    :cond_0
    return-void
.end method

.method public static f()Ld/d$b;
    .locals 1

    sget-object v0, Ld/d;->j:Ld/d;

    invoke-virtual {v0}, Lt1/k;->toBuilder()Lt1/k$b;

    move-result-object v0

    check-cast v0, Ld/d$b;

    return-object v0
.end method

.method private g(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Ld/d;->g:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Ld/d;->g:I

    iput-object p1, p0, Ld/d;->i:Ljava/lang/String;

    return-void
.end method

.method public static parser()Lt1/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lt1/u<",
            "Ld/d;",
            ">;"
        }
    .end annotation

    sget-object v0, Ld/d;->j:Ld/d;

    invoke-virtual {v0}, Lt1/k;->getParserForType()Lt1/u;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final dynamicMethod(Lt1/k$i;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ld/d$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Ld/d;->k:Lt1/u;

    if-nez p0, :cond_1

    const-class p0, Ld/d;

    monitor-enter p0

    :try_start_0
    sget-object p1, Ld/d;->k:Lt1/u;

    if-nez p1, :cond_0

    new-instance p1, Lt1/k$c;

    sget-object p2, Ld/d;->j:Ld/d;

    invoke-direct {p1, p2}, Lt1/k$c;-><init>(Lt1/k;)V

    sput-object p1, Ld/d;->k:Lt1/u;

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
    sget-object p0, Ld/d;->k:Lt1/u;

    return-object p0

    :pswitch_1
    check-cast p2, Lt1/f;

    check-cast p3, Lt1/i;

    const/4 p1, 0x0

    :cond_2
    :goto_1
    if-nez p1, :cond_7

    :try_start_1
    invoke-virtual {p2}, Lt1/f;->z()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    const/16 v2, 0xa

    if-eq v0, v2, :cond_4

    const/16 v2, 0x12

    if-eq v0, v2, :cond_3

    invoke-virtual {p0, v0, p2}, Lt1/k;->parseUnknownField(ILt1/f;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Lt1/f;->y()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Ld/d;->g:I

    or-int/2addr v1, v2

    iput v1, p0, Ld/d;->g:I

    iput-object v0, p0, Ld/d;->i:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Ld/d;->h:Lt1/m$e;

    invoke-interface {v0}, Lt1/m$e;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Ld/d;->h:Lt1/m$e;

    invoke-static {v0}, Lt1/k;->mutableCopy(Lt1/m$e;)Lt1/m$e;

    move-result-object v0

    iput-object v0, p0, Ld/d;->h:Lt1/m$e;

    :cond_5
    iget-object v0, p0, Ld/d;->h:Lt1/m$e;

    invoke-static {}, Ld/b;->parser()Lt1/u;

    move-result-object v1

    invoke-virtual {p2, v1, p3}, Lt1/f;->q(Lt1/u;Lt1/i;)Lt1/r;

    move-result-object v1

    check-cast v1, Ld/b;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lt1/n; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_6
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

    :cond_7
    :pswitch_2
    sget-object p0, Ld/d;->j:Ld/d;

    return-object p0

    :pswitch_3
    check-cast p2, Lt1/k$j;

    check-cast p3, Ld/d;

    iget-object p1, p0, Ld/d;->h:Lt1/m$e;

    iget-object v0, p3, Ld/d;->h:Lt1/m$e;

    invoke-interface {p2, p1, v0}, Lt1/k$j;->a(Lt1/m$e;Lt1/m$e;)Lt1/m$e;

    move-result-object p1

    iput-object p1, p0, Ld/d;->h:Lt1/m$e;

    invoke-virtual {p0}, Ld/d;->hasTitle()Z

    move-result p1

    iget-object v0, p0, Ld/d;->i:Ljava/lang/String;

    invoke-virtual {p3}, Ld/d;->hasTitle()Z

    move-result v1

    iget-object v2, p3, Ld/d;->i:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Lt1/k$j;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ld/d;->i:Ljava/lang/String;

    sget-object p1, Lt1/k$h;->a:Lt1/k$h;

    if-ne p2, p1, :cond_8

    iget p1, p0, Ld/d;->g:I

    iget p2, p3, Ld/d;->g:I

    or-int/2addr p1, p2

    iput p1, p0, Ld/d;->g:I

    :cond_8
    return-object p0

    :pswitch_4
    new-instance p0, Ld/d$b;

    invoke-direct {p0, v0}, Ld/d$b;-><init>(Ld/d$a;)V

    return-object p0

    :pswitch_5
    iget-object p0, p0, Ld/d;->h:Lt1/m$e;

    invoke-interface {p0}, Lt1/m$e;->makeImmutable()V

    return-object v0

    :pswitch_6
    sget-object p0, Ld/d;->j:Ld/d;

    return-object p0

    :pswitch_7
    new-instance p0, Ld/d;

    invoke-direct {p0}, Ld/d;-><init>()V

    return-object p0

    nop

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
    .locals 4

    iget v0, p0, Lt1/k;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Ld/d;->h:Lt1/m$e;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Ld/d;->h:Lt1/m$e;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt1/r;

    invoke-static {v3, v2}, Lt1/g;->v(ILt1/r;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Ld/d;->g:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    const/4 v0, 0x2

    invoke-virtual {p0}, Ld/d;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lt1/g;->y(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    iget-object v0, p0, Lt1/k;->unknownFields:Lt1/z;

    invoke-virtual {v0}, Lt1/z;->d()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lt1/k;->memoizedSerializedSize:I

    return v1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ld/d;->i:Ljava/lang/String;

    return-object p0
.end method

.method public hasTitle()Z
    .locals 1

    iget p0, p0, Ld/d;->g:I

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
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ld/d;->h:Lt1/m$e;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ld/d;->h:Lt1/m$e;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt1/r;

    invoke-virtual {p1, v2, v1}, Lt1/g;->S(ILt1/r;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Ld/d;->g:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0}, Ld/d;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lt1/g;->T(ILjava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lt1/k;->unknownFields:Lt1/z;

    invoke-virtual {p0, p1}, Lt1/z;->m(Lt1/g;)V

    return-void
.end method
