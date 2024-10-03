.class public final Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;
.super Lt1/k;
.source "SourceFile"

# interfaces
.implements Lt1/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;,
        Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt1/k<",
        "Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;",
        "Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;",
        ">;",
        "Lt1/s;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

.field private static volatile PARSER:Lt1/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt1/u<",
            "Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private gridX_:I

.field private gridY_:I

.field private pageIndex_:I

.field private parentContainerCase_:I

.field private parentContainer_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;-><init>()V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-virtual {v0}, Lt1/k;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lt1/k;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainerCase_:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->pageIndex_:I

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->gridX_:I

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->gridY_:I

    return-void
.end method

.method static synthetic access$24000()Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    return-object v0
.end method

.method static synthetic access$24200(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->setPageIndex(I)V

    return-void
.end method

.method static synthetic access$24400(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->setGridX(I)V

    return-void
.end method

.method static synthetic access$24600(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->setGridY(I)V

    return-void
.end method

.method static synthetic access$24900(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->setWorkspace(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;)V

    return-void
.end method

.method static synthetic access$25300(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->setHotseat(Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;)V

    return-void
.end method

.method static synthetic access$25500(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->clearHotseat()V

    return-void
.end method

.method static synthetic access$25700(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->setTaskbar(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;)V

    return-void
.end method

.method private clearHotseat()V
    .locals 2

    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainerCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainerCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainer_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    return-object v0
.end method

.method public static newBuilder()Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-virtual {v0}, Lt1/k;->toBuilder()Lt1/k$b;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;

    return-object v0
.end method

.method public static parser()Lt1/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lt1/u<",
            "Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-virtual {v0}, Lt1/k;->getParserForType()Lt1/u;

    move-result-object v0

    return-object v0
.end method

.method private setGridX(I)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->bitField0_:I

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->gridX_:I

    return-void
.end method

.method private setGridY(I)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->bitField0_:I

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->gridY_:I

    return-void
.end method

.method private setHotseat(Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;)V
    .locals 0

    invoke-virtual {p1}, Lt1/k$b;->build()Lt1/k;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainer_:Ljava/lang/Object;

    const/4 p1, 0x5

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainerCase_:I

    return-void
.end method

.method private setPageIndex(I)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->bitField0_:I

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->pageIndex_:I

    return-void
.end method

.method private setTaskbar(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;)V
    .locals 0

    invoke-virtual {p1}, Lt1/k$b;->build()Lt1/k;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainer_:Ljava/lang/Object;

    const/4 p1, 0x6

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainerCase_:I

    return-void
.end method

.method private setWorkspace(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;)V
    .locals 0

    invoke-virtual {p1}, Lt1/k$b;->build()Lt1/k;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainer_:Ljava/lang/Object;

    const/4 p1, 0x4

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainerCase_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lt1/k$i;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->PARSER:Lt1/u;

    if-nez p0, :cond_1

    const-class p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    monitor-enter p0

    :try_start_0
    sget-object p1, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->PARSER:Lt1/u;

    if-nez p1, :cond_0

    new-instance p1, Lt1/k$c;

    sget-object p2, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-direct {p1, p2}, Lt1/k$c;-><init>(Lt1/k;)V

    sput-object p1, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->PARSER:Lt1/u;

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
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->PARSER:Lt1/u;

    return-object p0

    :pswitch_1
    check-cast p2, Lt1/f;

    check-cast p3, Lt1/i;

    :cond_2
    :goto_1
    if-nez v3, :cond_10

    :try_start_1
    invoke-virtual {p2}, Lt1/f;->z()I

    move-result p1

    if-eqz p1, :cond_f

    const/16 v7, 0x8

    if-eq p1, v7, :cond_e

    const/16 v7, 0x10

    if-eq p1, v7, :cond_d

    const/16 v7, 0x18

    if-eq p1, v7, :cond_c

    const/16 v7, 0x22

    if-eq p1, v7, :cond_9

    const/16 v7, 0x2a

    if-eq p1, v7, :cond_6

    const/16 v7, 0x32

    if-eq p1, v7, :cond_3

    invoke-virtual {p0, p1, p2}, Lt1/k;->parseUnknownField(ILt1/f;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_5

    :cond_3
    iget p1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainerCase_:I

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainer_:Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-virtual {p1}, Lt1/k;->toBuilder()Lt1/k$b;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;

    goto :goto_2

    :cond_4
    move-object p1, v5

    :goto_2
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->parser()Lt1/u;

    move-result-object v7

    invoke-virtual {p2, v7, p3}, Lt1/f;->q(Lt1/u;Lt1/i;)Lt1/r;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainer_:Ljava/lang/Object;

    if-eqz p1, :cond_5

    check-cast v7, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-virtual {p1, v7}, Lt1/k$b;->mergeFrom(Lt1/k;)Lt1/k$b;

    invoke-virtual {p1}, Lt1/k$b;->buildPartial()Lt1/k;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainer_:Ljava/lang/Object;

    :cond_5
    iput v1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainerCase_:I

    goto :goto_1

    :cond_6
    iget p1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainerCase_:I

    if-ne p1, v2, :cond_7

    iget-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainer_:Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    invoke-virtual {p1}, Lt1/k;->toBuilder()Lt1/k$b;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;

    goto :goto_3

    :cond_7
    move-object p1, v5

    :goto_3
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->parser()Lt1/u;

    move-result-object v7

    invoke-virtual {p2, v7, p3}, Lt1/f;->q(Lt1/u;Lt1/i;)Lt1/r;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainer_:Ljava/lang/Object;

    if-eqz p1, :cond_8

    check-cast v7, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    invoke-virtual {p1, v7}, Lt1/k$b;->mergeFrom(Lt1/k;)Lt1/k$b;

    invoke-virtual {p1}, Lt1/k$b;->buildPartial()Lt1/k;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainer_:Ljava/lang/Object;

    :cond_8
    iput v2, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainerCase_:I

    goto :goto_1

    :cond_9
    iget p1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainerCase_:I

    if-ne p1, v4, :cond_a

    iget-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainer_:Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-virtual {p1}, Lt1/k;->toBuilder()Lt1/k$b;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    goto :goto_4

    :cond_a
    move-object p1, v5

    :goto_4
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->parser()Lt1/u;

    move-result-object v7

    invoke-virtual {p2, v7, p3}, Lt1/f;->q(Lt1/u;Lt1/i;)Lt1/r;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainer_:Ljava/lang/Object;

    if-eqz p1, :cond_b

    check-cast v7, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-virtual {p1, v7}, Lt1/k$b;->mergeFrom(Lt1/k;)Lt1/k$b;

    invoke-virtual {p1}, Lt1/k$b;->buildPartial()Lt1/k;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainer_:Ljava/lang/Object;

    :cond_b
    iput v4, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainerCase_:I

    goto/16 :goto_1

    :cond_c
    iget p1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->bitField0_:I

    or-int/2addr p1, v4

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->bitField0_:I

    invoke-virtual {p2}, Lt1/f;->o()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->gridY_:I

    goto/16 :goto_1

    :cond_d
    iget p1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->bitField0_:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->bitField0_:I

    invoke-virtual {p2}, Lt1/f;->o()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->gridX_:I

    goto/16 :goto_1

    :cond_e
    iget p1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->bitField0_:I

    or-int/2addr p1, v6

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->bitField0_:I

    invoke-virtual {p2}, Lt1/f;->o()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->pageIndex_:I
    :try_end_1
    .catch Lt1/n; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :cond_f
    :goto_5
    move v3, v6

    goto/16 :goto_1

    :catchall_1
    move-exception p0

    goto :goto_6

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

    :goto_6
    throw p0

    :cond_10
    :pswitch_2
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    return-object p0

    :pswitch_3
    check-cast p2, Lt1/k$j;

    check-cast p3, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->hasPageIndex()Z

    move-result p1

    iget v5, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->pageIndex_:I

    invoke-virtual {p3}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->hasPageIndex()Z

    move-result v7

    iget v8, p3, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->pageIndex_:I

    invoke-interface {p2, p1, v5, v7, v8}, Lt1/k$j;->c(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->pageIndex_:I

    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->hasGridX()Z

    move-result p1

    iget v5, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->gridX_:I

    invoke-virtual {p3}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->hasGridX()Z

    move-result v7

    iget v8, p3, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->gridX_:I

    invoke-interface {p2, p1, v5, v7, v8}, Lt1/k$j;->c(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->gridX_:I

    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->hasGridY()Z

    move-result p1

    iget v5, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->gridY_:I

    invoke-virtual {p3}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->hasGridY()Z

    move-result v7

    iget v8, p3, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->gridY_:I

    invoke-interface {p2, p1, v5, v7, v8}, Lt1/k$j;->c(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->gridY_:I

    sget-object p1, Lcom/android/launcher3/logger/LauncherAtom$1;->$SwitchMap$com$android$launcher3$logger$LauncherAtom$FolderContainer$ParentContainerCase:[I

    invoke-virtual {p3}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->getParentContainerCase()Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget p1, p1, v5

    if-eq p1, v6, :cond_15

    if-eq p1, v0, :cond_14

    const/4 v0, 0x3

    if-eq p1, v0, :cond_13

    if-eq p1, v4, :cond_11

    goto :goto_8

    :cond_11
    iget p1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainerCase_:I

    if-eqz p1, :cond_12

    move v3, v6

    :cond_12
    invoke-interface {p2, v3}, Lt1/k$j;->b(Z)V

    goto :goto_8

    :cond_13
    iget p1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainerCase_:I

    if-ne p1, v1, :cond_16

    goto :goto_7

    :cond_14
    iget p1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainerCase_:I

    if-ne p1, v2, :cond_16

    goto :goto_7

    :cond_15
    iget p1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainerCase_:I

    if-ne p1, v4, :cond_16

    :goto_7
    move v3, v6

    :cond_16
    iget-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainer_:Ljava/lang/Object;

    iget-object v0, p3, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainer_:Ljava/lang/Object;

    invoke-interface {p2, v3, p1, v0}, Lt1/k$j;->l(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainer_:Ljava/lang/Object;

    :goto_8
    sget-object p1, Lt1/k$h;->a:Lt1/k$h;

    if-ne p2, p1, :cond_18

    iget p1, p3, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainerCase_:I

    if-eqz p1, :cond_17

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainerCase_:I

    :cond_17
    iget p1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->bitField0_:I

    iget p2, p3, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->bitField0_:I

    :cond_18
    return-object p0

    :pswitch_4
    new-instance p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;

    invoke-direct {p0, v5}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;-><init>(Lcom/android/launcher3/logger/LauncherAtom$1;)V

    return-object p0

    :pswitch_5
    return-object v5

    :pswitch_6
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    return-object p0

    :pswitch_7
    new-instance p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;-><init>()V

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

.method public getGridX()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->gridX_:I

    return p0
.end method

.method public getGridY()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->gridY_:I

    return p0
.end method

.method public getHotseat()Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;
    .locals 2

    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainerCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainer_:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    move-result-object p0

    return-object p0
.end method

.method public getPageIndex()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->pageIndex_:I

    return p0
.end method

.method public getParentContainerCase()Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;
    .locals 0

    iget p0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainerCase_:I

    invoke-static {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;->forNumber(I)Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    move-result-object p0

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 4

    iget v0, p0, Lt1/k;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->pageIndex_:I

    invoke-static {v2, v1}, Lt1/g;->q(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->gridX_:I

    invoke-static {v2, v1}, Lt1/g;->q(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    iget v3, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->gridY_:I

    invoke-static {v1, v3}, Lt1/g;->q(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainerCase_:I

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainer_:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-static {v2, v1}, Lt1/g;->v(ILt1/r;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainerCase_:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainer_:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    invoke-static {v2, v1}, Lt1/g;->v(ILt1/r;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainerCase_:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainer_:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-static {v2, v1}, Lt1/g;->v(ILt1/r;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lt1/k;->unknownFields:Lt1/z;

    invoke-virtual {v1}, Lt1/z;->d()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lt1/k;->memoizedSerializedSize:I

    return v0
.end method

.method public getWorkspace()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;
    .locals 2

    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainerCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainer_:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    move-result-object p0

    return-object p0
.end method

.method public hasGridX()Z
    .locals 1

    iget p0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->bitField0_:I

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

.method public hasGridY()Z
    .locals 1

    iget p0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->bitField0_:I

    const/4 v0, 0x4

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasHotseat()Z
    .locals 1

    iget p0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainerCase_:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasPageIndex()Z
    .locals 1

    iget p0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->bitField0_:I

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

    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->pageIndex_:I

    invoke-virtual {p1, v1, v0}, Lt1/g;->Q(II)V

    :cond_0
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->gridX_:I

    invoke-virtual {p1, v1, v0}, Lt1/g;->Q(II)V

    :cond_1
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    iget v2, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->gridY_:I

    invoke-virtual {p1, v0, v2}, Lt1/g;->Q(II)V

    :cond_2
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainerCase_:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainer_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-virtual {p1, v1, v0}, Lt1/g;->S(ILt1/r;)V

    :cond_3
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainerCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainer_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    invoke-virtual {p1, v1, v0}, Lt1/g;->S(ILt1/r;)V

    :cond_4
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainerCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainer_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-virtual {p1, v1, v0}, Lt1/g;->S(ILt1/r;)V

    :cond_5
    iget-object p0, p0, Lt1/k;->unknownFields:Lt1/z;

    invoke-virtual {p0, p1}, Lt1/z;->m(Lt1/g;)V

    return-void
.end method
