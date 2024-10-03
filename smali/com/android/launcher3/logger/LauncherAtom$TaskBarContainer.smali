.class public final Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;
.super Lt1/k;
.source "SourceFile"

# interfaces
.implements Lt1/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;,
        Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt1/k<",
        "Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;",
        "Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;",
        ">;",
        "Lt1/s;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

.field private static volatile PARSER:Lt1/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt1/u<",
            "Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private cardinality_:I

.field private index_:I

.field private parentContainerCase_:I

.field private parentContainer_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;-><init>()V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-virtual {v0}, Lt1/k;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lt1/k;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->parentContainerCase_:I

    return-void
.end method

.method static synthetic access$14500()Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    return-object v0
.end method

.method static synthetic access$14700(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->setIndex(I)V

    return-void
.end method

.method static synthetic access$14900(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->setCardinality(I)V

    return-void
.end method

.method static synthetic access$15200(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->setTaskSwitcherContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer$Builder;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    return-object v0
.end method

.method public static newBuilder()Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-virtual {v0}, Lt1/k;->toBuilder()Lt1/k$b;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;

    return-object v0
.end method

.method public static parser()Lt1/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lt1/u<",
            "Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-virtual {v0}, Lt1/k;->getParserForType()Lt1/u;

    move-result-object v0

    return-object v0
.end method

.method private setCardinality(I)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->bitField0_:I

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->cardinality_:I

    return-void
.end method

.method private setIndex(I)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->bitField0_:I

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->index_:I

    return-void
.end method

.method private setTaskSwitcherContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer$Builder;)V
    .locals 0

    invoke-virtual {p1}, Lt1/k$b;->build()Lt1/k;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->parentContainer_:Ljava/lang/Object;

    const/4 p1, 0x3

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->parentContainerCase_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lt1/k$i;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->PARSER:Lt1/u;

    if-nez p0, :cond_1

    const-class p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    monitor-enter p0

    :try_start_0
    sget-object p1, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->PARSER:Lt1/u;

    if-nez p1, :cond_0

    new-instance p1, Lt1/k$c;

    sget-object p2, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-direct {p1, p2}, Lt1/k$c;-><init>(Lt1/k;)V

    sput-object p1, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->PARSER:Lt1/u;

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
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->PARSER:Lt1/u;

    return-object p0

    :pswitch_1
    check-cast p2, Lt1/f;

    check-cast p3, Lt1/i;

    :cond_2
    :goto_1
    if-nez v1, :cond_9

    :try_start_1
    invoke-virtual {p2}, Lt1/f;->z()I

    move-result p1

    if-eqz p1, :cond_8

    const/16 v5, 0x8

    if-eq p1, v5, :cond_7

    const/16 v5, 0x10

    if-eq p1, v5, :cond_6

    const/16 v5, 0x1a

    if-eq p1, v5, :cond_3

    invoke-virtual {p0, p1, p2}, Lt1/k;->parseUnknownField(ILt1/f;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_3

    :cond_3
    iget p1, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->parentContainerCase_:I

    if-ne p1, v2, :cond_4

    iget-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->parentContainer_:Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    invoke-virtual {p1}, Lt1/k;->toBuilder()Lt1/k$b;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer$Builder;

    goto :goto_2

    :cond_4
    move-object p1, v3

    :goto_2
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;->parser()Lt1/u;

    move-result-object v5

    invoke-virtual {p2, v5, p3}, Lt1/f;->q(Lt1/u;Lt1/i;)Lt1/r;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->parentContainer_:Ljava/lang/Object;

    if-eqz p1, :cond_5

    check-cast v5, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    invoke-virtual {p1, v5}, Lt1/k$b;->mergeFrom(Lt1/k;)Lt1/k$b;

    invoke-virtual {p1}, Lt1/k$b;->buildPartial()Lt1/k;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->parentContainer_:Ljava/lang/Object;

    :cond_5
    iput v2, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->parentContainerCase_:I

    goto :goto_1

    :cond_6
    iget p1, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->bitField0_:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->bitField0_:I

    invoke-virtual {p2}, Lt1/f;->o()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->cardinality_:I

    goto :goto_1

    :cond_7
    iget p1, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->bitField0_:I

    or-int/2addr p1, v4

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->bitField0_:I

    invoke-virtual {p2}, Lt1/f;->o()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->index_:I
    :try_end_1
    .catch Lt1/n; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_8
    :goto_3
    move v1, v4

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_4

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

    :goto_4
    throw p0

    :cond_9
    :pswitch_2
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    return-object p0

    :pswitch_3
    check-cast p2, Lt1/k$j;

    check-cast p3, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->hasIndex()Z

    move-result p1

    iget v3, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->index_:I

    invoke-virtual {p3}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->hasIndex()Z

    move-result v5

    iget v6, p3, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->index_:I

    invoke-interface {p2, p1, v3, v5, v6}, Lt1/k$j;->c(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->index_:I

    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->hasCardinality()Z

    move-result p1

    iget v3, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->cardinality_:I

    invoke-virtual {p3}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->hasCardinality()Z

    move-result v5

    iget v6, p3, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->cardinality_:I

    invoke-interface {p2, p1, v3, v5, v6}, Lt1/k$j;->c(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->cardinality_:I

    sget-object p1, Lcom/android/launcher3/logger/LauncherAtom$1;->$SwitchMap$com$android$launcher3$logger$LauncherAtom$TaskBarContainer$ParentContainerCase:[I

    invoke-virtual {p3}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->getParentContainerCase()Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget p1, p1, v3

    if-eq p1, v4, :cond_c

    if-eq p1, v0, :cond_a

    goto :goto_5

    :cond_a
    iget p1, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->parentContainerCase_:I

    if-eqz p1, :cond_b

    move v1, v4

    :cond_b
    invoke-interface {p2, v1}, Lt1/k$j;->b(Z)V

    goto :goto_5

    :cond_c
    iget p1, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->parentContainerCase_:I

    if-ne p1, v2, :cond_d

    move v1, v4

    :cond_d
    iget-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->parentContainer_:Ljava/lang/Object;

    iget-object v0, p3, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->parentContainer_:Ljava/lang/Object;

    invoke-interface {p2, v1, p1, v0}, Lt1/k$j;->l(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->parentContainer_:Ljava/lang/Object;

    :goto_5
    sget-object p1, Lt1/k$h;->a:Lt1/k$h;

    if-ne p2, p1, :cond_f

    iget p1, p3, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->parentContainerCase_:I

    if-eqz p1, :cond_e

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->parentContainerCase_:I

    :cond_e
    iget p1, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->bitField0_:I

    iget p2, p3, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->bitField0_:I

    :cond_f
    return-object p0

    :pswitch_4
    new-instance p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;

    invoke-direct {p0, v3}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;-><init>(Lcom/android/launcher3/logger/LauncherAtom$1;)V

    return-object p0

    :pswitch_5
    return-object v3

    :pswitch_6
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    return-object p0

    :pswitch_7
    new-instance p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;-><init>()V

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

.method public getCardinality()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->cardinality_:I

    return p0
.end method

.method public getIndex()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->index_:I

    return p0
.end method

.method public getParentContainerCase()Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;
    .locals 0

    iget p0, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->parentContainerCase_:I

    invoke-static {p0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;->forNumber(I)Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$ParentContainerCase;

    move-result-object p0

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    iget v0, p0, Lt1/k;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->index_:I

    invoke-static {v2, v1}, Lt1/g;->q(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->cardinality_:I

    invoke-static {v2, v1}, Lt1/g;->q(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->parentContainerCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->parentContainer_:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    invoke-static {v2, v1}, Lt1/g;->v(ILt1/r;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lt1/k;->unknownFields:Lt1/z;

    invoke-virtual {v1}, Lt1/z;->d()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lt1/k;->memoizedSerializedSize:I

    return v0
.end method

.method public hasCardinality()Z
    .locals 1

    iget p0, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->bitField0_:I

    const/4 v0, 0x2

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasIndex()Z
    .locals 1

    iget p0, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->bitField0_:I

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
    .locals 2

    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->index_:I

    invoke-virtual {p1, v1, v0}, Lt1/g;->Q(II)V

    :cond_0
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->cardinality_:I

    invoke-virtual {p1, v1, v0}, Lt1/g;->Q(II)V

    :cond_1
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->parentContainerCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->parentContainer_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    invoke-virtual {p1, v1, v0}, Lt1/g;->S(ILt1/r;)V

    :cond_2
    iget-object p0, p0, Lt1/k;->unknownFields:Lt1/z;

    invoke-virtual {p0, p1}, Lt1/z;->m(Lt1/g;)V

    return-void
.end method
