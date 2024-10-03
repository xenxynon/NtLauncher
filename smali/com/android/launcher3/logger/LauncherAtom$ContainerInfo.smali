.class public final Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;
.super Lt1/k;
.source "SourceFile"

# interfaces
.implements Lt1/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;,
        Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt1/k<",
        "Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;",
        "Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;",
        ">;",
        "Lt1/s;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

.field private static volatile PARSER:Lt1/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt1/u<",
            "Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private containerCase_:I

.field private container_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;-><init>()V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-virtual {v0}, Lt1/k;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lt1/k;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    return-void
.end method

.method static synthetic access$10100(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->setWallpapersContainer(Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;)V

    return-void
.end method

.method static synthetic access$10500(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->setExtendedContainers(Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;)V

    return-void
.end method

.method static synthetic access$5100()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->setWorkspace(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->setHotseat(Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->setFolder(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->setAllAppsContainer(Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;)V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->setAllAppsContainer(Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;)V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->setWidgetsContainer(Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;)V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->setPredictionContainer(Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;)V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->setPredictionContainer(Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder;)V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->setSearchResultContainer(Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;)V

    return-void
.end method

.method static synthetic access$8100(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->setShortcutsContainer(Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;)V

    return-void
.end method

.method static synthetic access$8500(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$SettingsContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->setSettingsContainer(Lcom/android/launcher3/logger/LauncherAtom$SettingsContainer;)V

    return-void
.end method

.method static synthetic access$9000(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->setPredictedHotseatContainer(Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;)V

    return-void
.end method

.method static synthetic access$9300(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->setTaskSwitcherContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;)V

    return-void
.end method

.method static synthetic access$9800(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->setTaskBarContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    return-object v0
.end method

.method public static newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-virtual {v0}, Lt1/k;->toBuilder()Lt1/k$b;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    return-object v0
.end method

.method public static parser()Lt1/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lt1/u<",
            "Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-virtual {v0}, Lt1/k;->getParserForType()Lt1/u;

    move-result-object v0

    return-object v0
.end method

.method private setAllAppsContainer(Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;)V
    .locals 0

    invoke-virtual {p1}, Lt1/k$b;->build()Lt1/k;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    const/4 p1, 0x4

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    return-void
.end method

.method private setAllAppsContainer(Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    const/4 p1, 0x4

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    return-void
.end method

.method private setExtendedContainers(Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    const/16 p1, 0x14

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    return-void
.end method

.method private setFolder(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;)V
    .locals 0

    invoke-virtual {p1}, Lt1/k$b;->build()Lt1/k;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    const/4 p1, 0x3

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    return-void
.end method

.method private setHotseat(Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;)V
    .locals 0

    invoke-virtual {p1}, Lt1/k$b;->build()Lt1/k;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    return-void
.end method

.method private setPredictedHotseatContainer(Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;)V
    .locals 0

    invoke-virtual {p1}, Lt1/k$b;->build()Lt1/k;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    const/16 p1, 0xa

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    return-void
.end method

.method private setPredictionContainer(Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder;)V
    .locals 0

    invoke-virtual {p1}, Lt1/k$b;->build()Lt1/k;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    const/4 p1, 0x6

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    return-void
.end method

.method private setPredictionContainer(Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    const/4 p1, 0x6

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    return-void
.end method

.method private setSearchResultContainer(Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;)V
    .locals 0

    invoke-virtual {p1}, Lt1/k$b;->build()Lt1/k;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    const/4 p1, 0x7

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    return-void
.end method

.method private setSettingsContainer(Lcom/android/launcher3/logger/LauncherAtom$SettingsContainer;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    const/16 p1, 0x9

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    return-void
.end method

.method private setShortcutsContainer(Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    const/16 p1, 0x8

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    return-void
.end method

.method private setTaskBarContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;)V
    .locals 0

    invoke-virtual {p1}, Lt1/k$b;->build()Lt1/k;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    const/16 p1, 0xc

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    return-void
.end method

.method private setTaskSwitcherContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    const/16 p1, 0xb

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    return-void
.end method

.method private setWallpapersContainer(Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    const/16 p1, 0xd

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    return-void
.end method

.method private setWidgetsContainer(Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    const/4 p1, 0x5

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    return-void
.end method

.method private setWorkspace(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;)V
    .locals 0

    invoke-virtual {p1}, Lt1/k$b;->build()Lt1/k;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lt1/k$i;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0x14

    const/16 v4, 0xd

    const/16 v5, 0xc

    const/16 v6, 0xb

    const/16 v7, 0xa

    const/16 v8, 0x9

    const/16 v9, 0x8

    const/4 v10, 0x7

    const/4 v11, 0x6

    const/4 v12, 0x5

    const/16 v16, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    :pswitch_0
    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->PARSER:Lt1/u;

    if-nez v1, :cond_1

    const-class v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->PARSER:Lt1/u;

    if-nez v2, :cond_0

    new-instance v2, Lt1/k$c;

    sget-object v3, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-direct {v2, v3}, Lt1/k$c;-><init>(Lt1/k;)V

    sput-object v2, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->PARSER:Lt1/u;

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :goto_0
    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->PARSER:Lt1/u;

    return-object v1

    :pswitch_1
    move-object/from16 v2, p2

    check-cast v2, Lt1/f;

    move-object/from16 v15, p3

    check-cast v15, Lt1/i;

    :cond_2
    :goto_1
    if-nez v16, :cond_1f

    :try_start_1
    invoke-virtual {v2}, Lt1/f;->z()I

    move-result v14

    sparse-switch v14, :sswitch_data_0

    invoke-virtual {v1, v14, v2}, Lt1/k;->parseUnknownField(ILt1/f;)Z

    move-result v13

    goto/16 :goto_12

    :sswitch_0
    iget v14, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    if-ne v14, v3, :cond_3

    iget-object v14, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v14, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    invoke-virtual {v14}, Lt1/k;->toBuilder()Lt1/k$b;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$Builder;

    goto :goto_2

    :cond_3
    const/4 v14, 0x0

    :goto_2
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->parser()Lt1/u;

    move-result-object v13

    invoke-virtual {v2, v13, v15}, Lt1/f;->q(Lt1/u;Lt1/i;)Lt1/r;

    move-result-object v13

    iput-object v13, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    if-eqz v14, :cond_4

    check-cast v13, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    invoke-virtual {v14, v13}, Lt1/k$b;->mergeFrom(Lt1/k;)Lt1/k$b;

    invoke-virtual {v14}, Lt1/k$b;->buildPartial()Lt1/k;

    move-result-object v13

    iput-object v13, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    :cond_4
    iput v3, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    goto :goto_1

    :sswitch_1
    iget v13, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    if-ne v13, v4, :cond_5

    iget-object v13, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v13, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    invoke-virtual {v13}, Lt1/k;->toBuilder()Lt1/k$b;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer$Builder;

    goto :goto_3

    :cond_5
    const/4 v13, 0x0

    :goto_3
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;->parser()Lt1/u;

    move-result-object v14

    invoke-virtual {v2, v14, v15}, Lt1/f;->q(Lt1/u;Lt1/i;)Lt1/r;

    move-result-object v14

    iput-object v14, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    if-eqz v13, :cond_6

    check-cast v14, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    invoke-virtual {v13, v14}, Lt1/k$b;->mergeFrom(Lt1/k;)Lt1/k$b;

    invoke-virtual {v13}, Lt1/k$b;->buildPartial()Lt1/k;

    move-result-object v13

    iput-object v13, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    :cond_6
    iput v4, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    goto :goto_1

    :sswitch_2
    iget v13, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    if-ne v13, v5, :cond_7

    iget-object v13, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v13, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-virtual {v13}, Lt1/k;->toBuilder()Lt1/k$b;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;

    goto :goto_4

    :cond_7
    const/4 v13, 0x0

    :goto_4
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->parser()Lt1/u;

    move-result-object v14

    invoke-virtual {v2, v14, v15}, Lt1/f;->q(Lt1/u;Lt1/i;)Lt1/r;

    move-result-object v14

    iput-object v14, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    if-eqz v13, :cond_8

    check-cast v14, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-virtual {v13, v14}, Lt1/k$b;->mergeFrom(Lt1/k;)Lt1/k$b;

    invoke-virtual {v13}, Lt1/k$b;->buildPartial()Lt1/k;

    move-result-object v13

    iput-object v13, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    :cond_8
    iput v5, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    goto/16 :goto_1

    :sswitch_3
    iget v13, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    if-ne v13, v6, :cond_9

    iget-object v13, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v13, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    invoke-virtual {v13}, Lt1/k;->toBuilder()Lt1/k$b;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer$Builder;

    goto :goto_5

    :cond_9
    const/4 v13, 0x0

    :goto_5
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;->parser()Lt1/u;

    move-result-object v14

    invoke-virtual {v2, v14, v15}, Lt1/f;->q(Lt1/u;Lt1/i;)Lt1/r;

    move-result-object v14

    iput-object v14, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    if-eqz v13, :cond_a

    check-cast v14, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    invoke-virtual {v13, v14}, Lt1/k$b;->mergeFrom(Lt1/k;)Lt1/k$b;

    invoke-virtual {v13}, Lt1/k$b;->buildPartial()Lt1/k;

    move-result-object v13

    iput-object v13, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    :cond_a
    iput v6, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    goto/16 :goto_1

    :sswitch_4
    iget v13, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    if-ne v13, v7, :cond_b

    iget-object v13, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v13, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    invoke-virtual {v13}, Lt1/k;->toBuilder()Lt1/k$b;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;

    goto :goto_6

    :cond_b
    const/4 v13, 0x0

    :goto_6
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->parser()Lt1/u;

    move-result-object v14

    invoke-virtual {v2, v14, v15}, Lt1/f;->q(Lt1/u;Lt1/i;)Lt1/r;

    move-result-object v14

    iput-object v14, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    if-eqz v13, :cond_c

    check-cast v14, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    invoke-virtual {v13, v14}, Lt1/k$b;->mergeFrom(Lt1/k;)Lt1/k$b;

    invoke-virtual {v13}, Lt1/k$b;->buildPartial()Lt1/k;

    move-result-object v13

    iput-object v13, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    :cond_c
    iput v7, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    goto/16 :goto_1

    :sswitch_5
    iget v13, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    if-ne v13, v8, :cond_d

    iget-object v13, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v13, Lcom/android/launcher3/logger/LauncherAtom$SettingsContainer;

    invoke-virtual {v13}, Lt1/k;->toBuilder()Lt1/k$b;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/logger/LauncherAtom$SettingsContainer$Builder;

    goto :goto_7

    :cond_d
    const/4 v13, 0x0

    :goto_7
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$SettingsContainer;->parser()Lt1/u;

    move-result-object v14

    invoke-virtual {v2, v14, v15}, Lt1/f;->q(Lt1/u;Lt1/i;)Lt1/r;

    move-result-object v14

    iput-object v14, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    if-eqz v13, :cond_e

    check-cast v14, Lcom/android/launcher3/logger/LauncherAtom$SettingsContainer;

    invoke-virtual {v13, v14}, Lt1/k$b;->mergeFrom(Lt1/k;)Lt1/k$b;

    invoke-virtual {v13}, Lt1/k$b;->buildPartial()Lt1/k;

    move-result-object v13

    iput-object v13, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    :cond_e
    iput v8, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    goto/16 :goto_1

    :sswitch_6
    iget v13, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    if-ne v13, v9, :cond_f

    iget-object v13, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v13, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;

    invoke-virtual {v13}, Lt1/k;->toBuilder()Lt1/k$b;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer$Builder;

    goto :goto_8

    :cond_f
    const/4 v13, 0x0

    :goto_8
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;->parser()Lt1/u;

    move-result-object v14

    invoke-virtual {v2, v14, v15}, Lt1/f;->q(Lt1/u;Lt1/i;)Lt1/r;

    move-result-object v14

    iput-object v14, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    if-eqz v13, :cond_10

    check-cast v14, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;

    invoke-virtual {v13, v14}, Lt1/k$b;->mergeFrom(Lt1/k;)Lt1/k$b;

    invoke-virtual {v13}, Lt1/k$b;->buildPartial()Lt1/k;

    move-result-object v13

    iput-object v13, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    :cond_10
    iput v9, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    goto/16 :goto_1

    :sswitch_7
    iget v13, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    if-ne v13, v10, :cond_11

    iget-object v13, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v13, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-virtual {v13}, Lt1/k;->toBuilder()Lt1/k$b;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$Builder;

    goto :goto_9

    :cond_11
    const/4 v13, 0x0

    :goto_9
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->parser()Lt1/u;

    move-result-object v14

    invoke-virtual {v2, v14, v15}, Lt1/f;->q(Lt1/u;Lt1/i;)Lt1/r;

    move-result-object v14

    iput-object v14, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    if-eqz v13, :cond_12

    check-cast v14, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-virtual {v13, v14}, Lt1/k$b;->mergeFrom(Lt1/k;)Lt1/k$b;

    invoke-virtual {v13}, Lt1/k$b;->buildPartial()Lt1/k;

    move-result-object v13

    iput-object v13, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    :cond_12
    iput v10, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    goto/16 :goto_1

    :sswitch_8
    iget v13, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    if-ne v13, v11, :cond_13

    iget-object v13, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v13, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    invoke-virtual {v13}, Lt1/k;->toBuilder()Lt1/k$b;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder;

    goto :goto_a

    :cond_13
    const/4 v13, 0x0

    :goto_a
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->parser()Lt1/u;

    move-result-object v14

    invoke-virtual {v2, v14, v15}, Lt1/f;->q(Lt1/u;Lt1/i;)Lt1/r;

    move-result-object v14

    iput-object v14, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    if-eqz v13, :cond_14

    check-cast v14, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    invoke-virtual {v13, v14}, Lt1/k$b;->mergeFrom(Lt1/k;)Lt1/k$b;

    invoke-virtual {v13}, Lt1/k$b;->buildPartial()Lt1/k;

    move-result-object v13

    iput-object v13, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    :cond_14
    iput v11, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    goto/16 :goto_1

    :sswitch_9
    iget v13, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    if-ne v13, v12, :cond_15

    iget-object v13, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v13, Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;

    invoke-virtual {v13}, Lt1/k;->toBuilder()Lt1/k$b;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer$Builder;

    goto :goto_b

    :cond_15
    const/4 v13, 0x0

    :goto_b
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;->parser()Lt1/u;

    move-result-object v14

    invoke-virtual {v2, v14, v15}, Lt1/f;->q(Lt1/u;Lt1/i;)Lt1/r;

    move-result-object v14

    iput-object v14, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    if-eqz v13, :cond_16

    check-cast v14, Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;

    invoke-virtual {v13, v14}, Lt1/k$b;->mergeFrom(Lt1/k;)Lt1/k$b;

    invoke-virtual {v13}, Lt1/k$b;->buildPartial()Lt1/k;

    move-result-object v13

    iput-object v13, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    :cond_16
    iput v12, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    goto/16 :goto_1

    :sswitch_a
    iget v13, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v14, 0x4

    if-ne v13, v14, :cond_17

    iget-object v13, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v13, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    invoke-virtual {v13}, Lt1/k;->toBuilder()Lt1/k$b;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;

    goto :goto_c

    :cond_17
    const/4 v13, 0x0

    :goto_c
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->parser()Lt1/u;

    move-result-object v14

    invoke-virtual {v2, v14, v15}, Lt1/f;->q(Lt1/u;Lt1/i;)Lt1/r;

    move-result-object v14

    iput-object v14, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    if-eqz v13, :cond_18

    check-cast v14, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    invoke-virtual {v13, v14}, Lt1/k$b;->mergeFrom(Lt1/k;)Lt1/k$b;

    invoke-virtual {v13}, Lt1/k$b;->buildPartial()Lt1/k;

    move-result-object v13

    iput-object v13, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    :cond_18
    const/4 v13, 0x4

    :goto_d
    iput v13, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    goto/16 :goto_1

    :sswitch_b
    iget v13, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_19

    iget-object v13, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v13, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-virtual {v13}, Lt1/k;->toBuilder()Lt1/k$b;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;

    goto :goto_e

    :cond_19
    const/4 v13, 0x0

    :goto_e
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parser()Lt1/u;

    move-result-object v14

    invoke-virtual {v2, v14, v15}, Lt1/f;->q(Lt1/u;Lt1/i;)Lt1/r;

    move-result-object v14

    iput-object v14, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    if-eqz v13, :cond_1a

    check-cast v14, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-virtual {v13, v14}, Lt1/k$b;->mergeFrom(Lt1/k;)Lt1/k$b;

    invoke-virtual {v13}, Lt1/k$b;->buildPartial()Lt1/k;

    move-result-object v13

    iput-object v13, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    :cond_1a
    const/4 v13, 0x3

    goto :goto_d

    :sswitch_c
    iget v13, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_1b

    iget-object v13, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v13, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    invoke-virtual {v13}, Lt1/k;->toBuilder()Lt1/k$b;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;

    goto :goto_f

    :cond_1b
    const/4 v13, 0x0

    :goto_f
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->parser()Lt1/u;

    move-result-object v14

    invoke-virtual {v2, v14, v15}, Lt1/f;->q(Lt1/u;Lt1/i;)Lt1/r;

    move-result-object v14

    iput-object v14, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    if-eqz v13, :cond_1c

    check-cast v14, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    invoke-virtual {v13, v14}, Lt1/k$b;->mergeFrom(Lt1/k;)Lt1/k$b;

    invoke-virtual {v13}, Lt1/k$b;->buildPartial()Lt1/k;

    move-result-object v13

    iput-object v13, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    :cond_1c
    const/4 v13, 0x2

    goto :goto_d

    :sswitch_d
    iget v13, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1d

    iget-object v13, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v13, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-virtual {v13}, Lt1/k;->toBuilder()Lt1/k$b;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    goto :goto_10

    :cond_1d
    const/4 v13, 0x0

    :goto_10
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->parser()Lt1/u;

    move-result-object v14

    invoke-virtual {v2, v14, v15}, Lt1/f;->q(Lt1/u;Lt1/i;)Lt1/r;

    move-result-object v14

    iput-object v14, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    if-eqz v13, :cond_1e

    check-cast v14, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-virtual {v13, v14}, Lt1/k$b;->mergeFrom(Lt1/k;)Lt1/k$b;

    invoke-virtual {v13}, Lt1/k$b;->buildPartial()Lt1/k;

    move-result-object v13

    iput-object v13, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;
    :try_end_1
    .catch Lt1/n; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1e
    const/4 v13, 0x1

    goto/16 :goto_d

    :goto_11
    :sswitch_e
    const/16 v16, 0x1

    goto/16 :goto_1

    :goto_12
    if-nez v13, :cond_2

    goto :goto_11

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_13

    :catch_0
    move-exception v0

    move-object v2, v0

    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Lt1/n;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lt1/n;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lt1/n;->g(Lt1/r;)Lt1/n;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v0

    move-object v2, v0

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2, v1}, Lt1/n;->g(Lt1/r;)Lt1/n;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_13
    throw v1

    :cond_1f
    :pswitch_2
    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    return-object v1

    :pswitch_3
    move-object/from16 v2, p2

    check-cast v2, Lt1/k$j;

    move-object/from16 v13, p3

    check-cast v13, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    sget-object v14, Lcom/android/launcher3/logger/LauncherAtom$1;->$SwitchMap$com$android$launcher3$logger$LauncherAtom$ContainerInfo$ContainerCase:[I

    invoke-virtual {v13}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getContainerCase()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_1

    goto/16 :goto_19

    :pswitch_4
    iget v3, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    if-eqz v3, :cond_20

    const/4 v3, 0x1

    goto :goto_14

    :cond_20
    move/from16 v3, v16

    :goto_14
    invoke-interface {v2, v3}, Lt1/k$j;->b(Z)V

    goto/16 :goto_19

    :pswitch_5
    iget v4, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    if-ne v4, v3, :cond_21

    goto :goto_15

    :pswitch_6
    iget v3, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    if-ne v3, v4, :cond_21

    goto :goto_15

    :pswitch_7
    iget v3, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    if-ne v3, v5, :cond_21

    goto :goto_15

    :pswitch_8
    iget v3, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    if-ne v3, v6, :cond_21

    goto :goto_15

    :pswitch_9
    iget v3, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    if-ne v3, v7, :cond_21

    goto :goto_15

    :pswitch_a
    iget v3, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    if-ne v3, v8, :cond_21

    goto :goto_15

    :pswitch_b
    iget v3, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    if-ne v3, v9, :cond_21

    goto :goto_15

    :pswitch_c
    iget v3, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    if-ne v3, v10, :cond_21

    goto :goto_15

    :pswitch_d
    iget v3, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    if-ne v3, v11, :cond_21

    goto :goto_15

    :pswitch_e
    iget v3, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    if-ne v3, v12, :cond_21

    goto :goto_15

    :pswitch_f
    iget v3, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_21

    goto :goto_15

    :pswitch_10
    iget v3, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_21

    goto :goto_15

    :pswitch_11
    iget v3, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_21

    :goto_15
    const/4 v3, 0x1

    goto :goto_16

    :cond_21
    move/from16 v3, v16

    :goto_16
    iget-object v4, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    iget-object v5, v13, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v5}, Lt1/k$j;->l(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_18

    :pswitch_12
    iget v3, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_22

    goto :goto_17

    :cond_22
    move/from16 v4, v16

    :goto_17
    iget-object v3, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    iget-object v5, v13, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    invoke-interface {v2, v4, v3, v5}, Lt1/k$j;->l(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :goto_18
    iput-object v3, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    :goto_19
    sget-object v3, Lt1/k$h;->a:Lt1/k$h;

    if-ne v2, v3, :cond_24

    iget v2, v13, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    if-eqz v2, :cond_23

    iput v2, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    :cond_23
    iget v2, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->bitField0_:I

    iget v3, v13, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->bitField0_:I

    :cond_24
    return-object v1

    :pswitch_13
    new-instance v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;-><init>(Lcom/android/launcher3/logger/LauncherAtom$1;)V

    return-object v1

    :pswitch_14
    const/4 v2, 0x0

    return-object v2

    :pswitch_15
    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    return-object v1

    :pswitch_16
    new-instance v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-direct {v1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;-><init>()V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_e
        0xa -> :sswitch_d
        0x12 -> :sswitch_c
        0x1a -> :sswitch_b
        0x22 -> :sswitch_a
        0x2a -> :sswitch_9
        0x32 -> :sswitch_8
        0x3a -> :sswitch_7
        0x42 -> :sswitch_6
        0x4a -> :sswitch_5
        0x52 -> :sswitch_4
        0x5a -> :sswitch_3
        0x62 -> :sswitch_2
        0x6a -> :sswitch_1
        0xa2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public getAllAppsContainer()Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;
    .locals 2

    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    move-result-object p0

    return-object p0
.end method

.method public getContainerCase()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;
    .locals 0

    iget p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    invoke-static {p0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->forNumber(I)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    move-result-object p0

    return-object p0
.end method

.method public getExtendedContainers()Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;
    .locals 2

    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    move-result-object p0

    return-object p0
.end method

.method public getFolder()Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;
    .locals 2

    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    move-result-object p0

    return-object p0
.end method

.method public getHotseat()Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;
    .locals 2

    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    move-result-object p0

    return-object p0
.end method

.method public getPredictedHotseatContainer()Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;
    .locals 2

    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    move-result-object p0

    return-object p0
.end method

.method public getPredictionContainer()Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;
    .locals 2

    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    move-result-object p0

    return-object p0
.end method

.method public getSearchResultContainer()Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;
    .locals 2

    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

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

    iget v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-static {v2, v1}, Lt1/g;->v(ILt1/r;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    invoke-static {v2, v1}, Lt1/g;->v(ILt1/r;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-static {v2, v1}, Lt1/g;->v(ILt1/r;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    invoke-static {v2, v1}, Lt1/g;->v(ILt1/r;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;

    invoke-static {v2, v1}, Lt1/g;->v(ILt1/r;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    invoke-static {v2, v1}, Lt1/g;->v(ILt1/r;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-static {v2, v1}, Lt1/g;->v(ILt1/r;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;

    invoke-static {v2, v1}, Lt1/g;->v(ILt1/r;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_9

    iget-object v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/logger/LauncherAtom$SettingsContainer;

    invoke-static {v2, v1}, Lt1/g;->v(ILt1/r;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    invoke-static {v2, v1}, Lt1/g;->v(ILt1/r;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_b

    iget-object v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    invoke-static {v2, v1}, Lt1/g;->v(ILt1/r;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_c

    iget-object v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-static {v2, v1}, Lt1/g;->v(ILt1/r;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_d

    iget-object v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    invoke-static {v2, v1}, Lt1/g;->v(ILt1/r;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_e

    iget-object v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    invoke-static {v2, v1}, Lt1/g;->v(ILt1/r;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget-object v1, p0, Lt1/k;->unknownFields:Lt1/z;

    invoke-virtual {v1}, Lt1/z;->d()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lt1/k;->memoizedSerializedSize:I

    return v0
.end method

.method public getTaskBarContainer()Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;
    .locals 2

    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    move-result-object p0

    return-object p0
.end method

.method public getWorkspace()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;
    .locals 2

    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    move-result-object p0

    return-object p0
.end method

.method public hasAllAppsContainer()Z
    .locals 1

    iget p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasFolder()Z
    .locals 1

    iget p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v0, 0x3

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

    iget p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasPredictedHotseatContainer()Z
    .locals 1

    iget p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasPredictionContainer()Z
    .locals 1

    iget p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public writeTo(Lt1/g;)V
    .locals 2

    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-virtual {p1, v1, v0}, Lt1/g;->S(ILt1/r;)V

    :cond_0
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    invoke-virtual {p1, v1, v0}, Lt1/g;->S(ILt1/r;)V

    :cond_1
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-virtual {p1, v1, v0}, Lt1/g;->S(ILt1/r;)V

    :cond_2
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    invoke-virtual {p1, v1, v0}, Lt1/g;->S(ILt1/r;)V

    :cond_3
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;

    invoke-virtual {p1, v1, v0}, Lt1/g;->S(ILt1/r;)V

    :cond_4
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    invoke-virtual {p1, v1, v0}, Lt1/g;->S(ILt1/r;)V

    :cond_5
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    invoke-virtual {p1, v1, v0}, Lt1/g;->S(ILt1/r;)V

    :cond_6
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;

    invoke-virtual {p1, v1, v0}, Lt1/g;->S(ILt1/r;)V

    :cond_7
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SettingsContainer;

    invoke-virtual {p1, v1, v0}, Lt1/g;->S(ILt1/r;)V

    :cond_8
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;

    invoke-virtual {p1, v1, v0}, Lt1/g;->S(ILt1/r;)V

    :cond_9
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    invoke-virtual {p1, v1, v0}, Lt1/g;->S(ILt1/r;)V

    :cond_a
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-virtual {p1, v1, v0}, Lt1/g;->S(ILt1/r;)V

    :cond_b
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    invoke-virtual {p1, v1, v0}, Lt1/g;->S(ILt1/r;)V

    :cond_c
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->containerCase_:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->container_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    invoke-virtual {p1, v1, v0}, Lt1/g;->S(ILt1/r;)V

    :cond_d
    iget-object p0, p0, Lt1/k;->unknownFields:Lt1/z;

    invoke-virtual {p0, p1}, Lt1/z;->m(Lt1/g;)V

    return-void
.end method
