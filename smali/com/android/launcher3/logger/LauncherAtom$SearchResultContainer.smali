.class public final Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;
.super Lt1/k;
.source "SourceFile"

# interfaces
.implements Lt1/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;,
        Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt1/k<",
        "Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;",
        "Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;",
        ">;",
        "Lt1/s;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

.field private static volatile PARSER:Lt1/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt1/u<",
            "Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private parentContainerCase_:I

.field private parentContainer_:Ljava/lang/Object;

.field private queryLength_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;-><init>()V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-virtual {v0}, Lt1/k;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lt1/k;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainerCase_:I

    return-void
.end method

.method static synthetic access$12600()Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    return-object v0
.end method

.method static synthetic access$12800(Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->setQueryLength(I)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    return-object v0
.end method

.method public static newBuilder()Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-virtual {v0}, Lt1/k;->toBuilder()Lt1/k$b;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;

    return-object v0
.end method

.method public static parser()Lt1/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lt1/u<",
            "Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-virtual {v0}, Lt1/k;->getParserForType()Lt1/u;

    move-result-object v0

    return-object v0
.end method

.method private setQueryLength(I)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->bitField0_:I

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->queryLength_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lt1/k$i;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->PARSER:Lt1/u;

    if-nez p0, :cond_1

    const-class p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    monitor-enter p0

    :try_start_0
    sget-object p1, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->PARSER:Lt1/u;

    if-nez p1, :cond_0

    new-instance p1, Lt1/k$c;

    sget-object p2, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-direct {p1, p2}, Lt1/k$c;-><init>(Lt1/k;)V

    sput-object p1, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->PARSER:Lt1/u;

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
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->PARSER:Lt1/u;

    return-object p0

    :pswitch_1
    check-cast p2, Lt1/f;

    check-cast p3, Lt1/i;

    :cond_2
    :goto_1
    if-nez v0, :cond_b

    :try_start_1
    invoke-virtual {p2}, Lt1/f;->z()I

    move-result p1

    if-eqz p1, :cond_a

    const/16 v5, 0x8

    if-eq p1, v5, :cond_9

    const/16 v5, 0x12

    if-eq p1, v5, :cond_6

    const/16 v5, 0x1a

    if-eq p1, v5, :cond_3

    invoke-virtual {p0, p1, p2}, Lt1/k;->parseUnknownField(ILt1/f;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_4

    :cond_3
    iget p1, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainerCase_:I

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainer_:Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    invoke-virtual {p1}, Lt1/k;->toBuilder()Lt1/k$b;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;

    goto :goto_2

    :cond_4
    move-object p1, v3

    :goto_2
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->parser()Lt1/u;

    move-result-object v5

    invoke-virtual {p2, v5, p3}, Lt1/f;->q(Lt1/u;Lt1/i;)Lt1/r;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainer_:Ljava/lang/Object;

    if-eqz p1, :cond_5

    check-cast v5, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    invoke-virtual {p1, v5}, Lt1/k$b;->mergeFrom(Lt1/k;)Lt1/k$b;

    invoke-virtual {p1}, Lt1/k$b;->buildPartial()Lt1/k;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainer_:Ljava/lang/Object;

    :cond_5
    iput v1, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainerCase_:I

    goto :goto_1

    :cond_6
    iget p1, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainerCase_:I

    if-ne p1, v2, :cond_7

    iget-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainer_:Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-virtual {p1}, Lt1/k;->toBuilder()Lt1/k$b;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    goto :goto_3

    :cond_7
    move-object p1, v3

    :goto_3
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->parser()Lt1/u;

    move-result-object v5

    invoke-virtual {p2, v5, p3}, Lt1/f;->q(Lt1/u;Lt1/i;)Lt1/r;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainer_:Ljava/lang/Object;

    if-eqz p1, :cond_8

    check-cast v5, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-virtual {p1, v5}, Lt1/k$b;->mergeFrom(Lt1/k;)Lt1/k$b;

    invoke-virtual {p1}, Lt1/k$b;->buildPartial()Lt1/k;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainer_:Ljava/lang/Object;

    :cond_8
    iput v2, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainerCase_:I

    goto :goto_1

    :cond_9
    iget p1, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->bitField0_:I

    or-int/2addr p1, v4

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->bitField0_:I

    invoke-virtual {p2}, Lt1/f;->o()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->queryLength_:I
    :try_end_1
    .catch Lt1/n; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_a
    :goto_4
    move v0, v4

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_5

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

    :goto_5
    throw p0

    :cond_b
    :pswitch_2
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    return-object p0

    :pswitch_3
    check-cast p2, Lt1/k$j;

    check-cast p3, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->hasQueryLength()Z

    move-result p1

    iget v3, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->queryLength_:I

    invoke-virtual {p3}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->hasQueryLength()Z

    move-result v5

    iget v6, p3, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->queryLength_:I

    invoke-interface {p2, p1, v3, v5, v6}, Lt1/k$j;->c(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->queryLength_:I

    sget-object p1, Lcom/android/launcher3/logger/LauncherAtom$1;->$SwitchMap$com$android$launcher3$logger$LauncherAtom$SearchResultContainer$ParentContainerCase:[I

    invoke-virtual {p3}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->getParentContainerCase()Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget p1, p1, v3

    if-eq p1, v4, :cond_f

    if-eq p1, v2, :cond_e

    if-eq p1, v1, :cond_c

    goto :goto_7

    :cond_c
    iget p1, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainerCase_:I

    if-eqz p1, :cond_d

    move v0, v4

    :cond_d
    invoke-interface {p2, v0}, Lt1/k$j;->b(Z)V

    goto :goto_7

    :cond_e
    iget p1, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainerCase_:I

    if-ne p1, v1, :cond_10

    goto :goto_6

    :cond_f
    iget p1, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainerCase_:I

    if-ne p1, v2, :cond_10

    :goto_6
    move v0, v4

    :cond_10
    iget-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainer_:Ljava/lang/Object;

    iget-object v1, p3, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainer_:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, Lt1/k$j;->l(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainer_:Ljava/lang/Object;

    :goto_7
    sget-object p1, Lt1/k$h;->a:Lt1/k$h;

    if-ne p2, p1, :cond_12

    iget p1, p3, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainerCase_:I

    if-eqz p1, :cond_11

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainerCase_:I

    :cond_11
    iget p1, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->bitField0_:I

    iget p2, p3, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->bitField0_:I

    :cond_12
    return-object p0

    :pswitch_4
    new-instance p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;

    invoke-direct {p0, v3}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;-><init>(Lcom/android/launcher3/logger/LauncherAtom$1;)V

    return-object p0

    :pswitch_5
    return-object v3

    :pswitch_6
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    return-object p0

    :pswitch_7
    new-instance p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;-><init>()V

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

.method public getParentContainerCase()Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;
    .locals 0

    iget p0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainerCase_:I

    invoke-static {p0}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;->forNumber(I)Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;

    move-result-object p0

    return-object p0
.end method

.method public getQueryLength()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->queryLength_:I

    return p0
.end method

.method public getSerializedSize()I
    .locals 3

    iget v0, p0, Lt1/k;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->queryLength_:I

    invoke-static {v2, v1}, Lt1/g;->q(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainerCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainer_:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-static {v2, v1}, Lt1/g;->v(ILt1/r;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainerCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainer_:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

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

.method public getWorkspace()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;
    .locals 2

    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainerCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainer_:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    move-result-object p0

    return-object p0
.end method

.method public hasQueryLength()Z
    .locals 1

    iget p0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->bitField0_:I

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

    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->queryLength_:I

    invoke-virtual {p1, v1, v0}, Lt1/g;->Q(II)V

    :cond_0
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainerCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainer_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-virtual {p1, v1, v0}, Lt1/g;->S(ILt1/r;)V

    :cond_1
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainerCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parentContainer_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    invoke-virtual {p1, v1, v0}, Lt1/g;->S(ILt1/r;)V

    :cond_2
    iget-object p0, p0, Lt1/k;->unknownFields:Lt1/z;

    invoke-virtual {p0, p1}, Lt1/z;->m(Lt1/g;)V

    return-void
.end method
