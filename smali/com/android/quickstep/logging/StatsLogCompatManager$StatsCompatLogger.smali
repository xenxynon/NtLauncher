.class Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/logging/StatsLogCompatManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StatsCompatLogger"
.end annotation


# static fields
.field private static final DEFAULT_ITEM_INFO:Lcom/android/launcher3/model/data/ItemInfo;


# instance fields
.field private final mActivityContext:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/launcher3/views/ActivityContext;",
            ">;"
        }
    .end annotation
.end field

.field private mCardinality:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContainerInfo:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDstState:I

.field private mEditText:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFromState:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/launcher3/logger/LauncherAtom$FromState;",
            ">;"
        }
    .end annotation
.end field

.field private mInputType:I

.field private mInstanceId:Lcom/android/launcher3/logging/InstanceId;

.field private mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

.field private mRank:Ljava/util/OptionalInt;

.field private mSlice:Lcom/android/launcher3/logger/LauncherAtom$Slice;

.field private mSliceItem:Landroidx/slice/SliceItem;

.field private mSrcState:I

.field private mToState:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/launcher3/logger/LauncherAtom$ToState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-direct {v0}, Lcom/android/launcher3/model/data/ItemInfo;-><init>()V

    sput-object v0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->DEFAULT_ITEM_INFO:Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/launcher3/views/ActivityContext;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->DEFAULT_ITEM_INFO:Lcom/android/launcher3/model/data/ItemInfo;

    iput-object v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {}, Lcom/android/quickstep/logging/StatsLogCompatManager;->access$200()Lcom/android/launcher3/logging/InstanceId;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mInstanceId:Lcom/android/launcher3/logging/InstanceId;

    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mRank:Ljava/util/OptionalInt;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mContainerInfo:Ljava/util/Optional;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mSrcState:I

    iput v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mDstState:I

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mFromState:Ljava/util/Optional;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mToState:Ljava/util/Optional;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mEditText:Ljava/util/Optional;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mCardinality:Ljava/util/Optional;

    iput v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mInputType:I

    iput-object p1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mContext:Landroid/content/Context;

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mActivityContext:Ljava/util/Optional;

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->lambda$log$1(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;)Lcom/android/launcher3/model/data/ItemInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->applyOverwrites(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;Lcom/android/launcher3/logging/StatsLogManager$EventEnum;Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->write(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)V

    return-void
.end method

.method private applyOverwrites(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;
    .locals 3

    invoke-virtual {p1}, Lt1/k;->toBuilder()Lt1/k$b;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    iget-object v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mRank:Ljava/util/OptionalInt;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/quickstep/logging/p;

    invoke-direct {v1, p1}, Lcom/android/quickstep/logging/p;-><init>(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;)V

    invoke-virtual {v0, v1}, Ljava/util/OptionalInt;->ifPresent(Ljava/util/function/IntConsumer;)V

    iget-object v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mContainerInfo:Ljava/util/Optional;

    new-instance v1, Lcom/android/quickstep/logging/n;

    invoke-direct {v1, p1}, Lcom/android/quickstep/logging/n;-><init>(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mActivityContext:Ljava/util/Optional;

    new-instance v1, Lcom/android/quickstep/logging/o;

    invoke-direct {v1, p1}, Lcom/android/quickstep/logging/o;-><init>(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mFromState:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mToState:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mEditText:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->getFolderIcon()Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    move-result-object v0

    invoke-virtual {v0}, Lt1/k;->toBuilder()Lt1/k$b;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;

    iget-object v1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mFromState:Ljava/util/Optional;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/quickstep/logging/k;

    invoke-direct {v2, v0}, Lcom/android/quickstep/logging/k;-><init>(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mToState:Ljava/util/Optional;

    new-instance v2, Lcom/android/quickstep/logging/l;

    invoke-direct {v2, v0}, Lcom/android/quickstep/logging/l;-><init>(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mEditText:Ljava/util/Optional;

    new-instance v1, Lcom/android/quickstep/logging/m;

    invoke-direct {v1, v0}, Lcom/android/quickstep/logging/m;-><init>(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;)V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->setFolderIcon(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    :cond_1
    invoke-virtual {p1}, Lt1/k$b;->build()Lt1/k;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->lambda$write$3(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->lambda$log$0(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;Lcom/android/launcher3/views/ActivityContext;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->lambda$applyOverwrites$2(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;Lcom/android/launcher3/views/ActivityContext;)V

    return-void
.end method

.method private static synthetic lambda$applyOverwrites$2(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;Lcom/android/launcher3/views/ActivityContext;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/android/launcher3/views/ActivityContext;->applyOverwritesToLogItem(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;)V

    return-void
.end method

.method private synthetic lambda$log$0(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V
    .locals 3

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mSlice:Lcom/android/launcher3/logger/LauncherAtom$Slice;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->setSlice(Lcom/android/launcher3/logger/LauncherAtom$Slice;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mContainerInfo:Ljava/util/Optional;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/quickstep/logging/n;

    invoke-direct {v2, v0}, Lcom/android/quickstep/logging/n;-><init>(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Lt1/k$b;->build()Lt1/k;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-direct {p0, v0}, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->applyOverwrites(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->write(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)V

    return-void
.end method

.method private synthetic lambda$log$1(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfo;->buildProto()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->applyOverwrites(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->write(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)V

    return-void
.end method

.method private static synthetic lambda$write$3(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/logging/StatsLogCompatManager;->access$1800(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private write(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)V
    .locals 33
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mInstanceId:Lcom/android/launcher3/logging/InstanceId;

    iget v6, v0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mSrcState:I

    iget v7, v0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mDstState:I

    iget v15, v0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mInputType:I

    invoke-static {}, Lcom/android/quickstep/logging/StatsLogCompatManager;->access$600()Z

    move-result v4

    const/4 v14, 0x1

    const/4 v13, 0x0

    if-eqz v4, :cond_5

    instance-of v4, v1, Ljava/lang/Enum;

    if-eqz v4, :cond_0

    move-object v4, v1

    check-cast v4, Ljava/lang/Enum;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p1 .. p1}, Lcom/android/launcher3/logging/StatsLogManager$EventEnum;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/quickstep/logging/StatsLogCompatManager;->access$200()Lcom/android/launcher3/logging/InstanceId;

    move-result-object v9

    if-eq v3, v9, :cond_1

    new-array v9, v14, [Ljava/lang/Object;

    aput-object v3, v9, v13

    const-string v10, "InstanceId:%s "

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v6, :cond_2

    if-eqz v7, :cond_3

    :cond_2
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v6}, Lcom/android/quickstep/logging/StatsLogCompatManager;->access$700(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v13

    invoke-static {v7}, Lcom/android/quickstep/logging/StatsLogCompatManager;->access$700(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v14

    const-string v9, "(State:%s->%s)"

    invoke-static {v9, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->hasContainerInfo()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "StatsLog"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    sget-object v4, Lcom/android/quickstep/logging/StatsLogCompatManager;->LOGS_CONSUMER:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsLogConsumer;

    invoke-interface {v5, v1, v2}, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsLogConsumer;->consume(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)V

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/android/launcher3/Utilities;->isRunningInTestHarness()Z

    move-result v4

    if-eqz v4, :cond_7

    return-void

    :cond_7
    iget-object v0, v0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mCardinality:Ljava/util/Optional;

    new-instance v4, Lcom/android/quickstep/logging/q;

    invoke-direct {v4, v2}, Lcom/android/quickstep/logging/q;-><init>(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)V

    invoke-virtual {v0, v4}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v28

    const/16 v4, 0x13

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {p1 .. p1}, Lcom/android/launcher3/logging/StatsLogManager$EventEnum;->getId()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getItemCase()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->getNumber()I

    move-result v11

    invoke-virtual {v3}, Lcom/android/launcher3/logging/InstanceId;->getId()I

    move-result v12

    const/4 v0, 0x0

    move v1, v13

    move v13, v0

    invoke-static/range {p2 .. p2}, Lcom/android/quickstep/logging/StatsLogCompatManager;->access$800(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)Ljava/lang/String;

    move-result-object v0

    move v3, v14

    move-object v14, v0

    invoke-static/range {p2 .. p2}, Lcom/android/quickstep/logging/StatsLogCompatManager;->access$900(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)Ljava/lang/String;

    move-result-object v0

    move/from16 v32, v15

    move-object v15, v0

    invoke-static {v2, v1}, Lcom/android/quickstep/logging/StatsLogCompatManager;->access$1000(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Z)I

    move-result v16

    invoke-static {v2, v1}, Lcom/android/quickstep/logging/StatsLogCompatManager;->access$1100(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Z)I

    move-result v17

    invoke-static/range {p2 .. p2}, Lcom/android/quickstep/logging/StatsLogCompatManager;->access$1200(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)I

    move-result v18

    invoke-static {v2, v3}, Lcom/android/quickstep/logging/StatsLogCompatManager;->access$1000(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Z)I

    move-result v19

    invoke-static {v2, v3}, Lcom/android/quickstep/logging/StatsLogCompatManager;->access$1100(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Z)I

    move-result v20

    invoke-static/range {p2 .. p2}, Lcom/android/quickstep/logging/StatsLogCompatManager;->access$1300(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)I

    move-result v21

    invoke-static/range {p2 .. p2}, Lcom/android/quickstep/logging/StatsLogCompatManager;->access$1400(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getIsWork()Z

    move-result v23

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getRank()I

    move-result v24

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getFolderIcon()Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->getFromLabelState()Lcom/android/launcher3/logger/LauncherAtom$FromState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$FromState;->getNumber()I

    move-result v25

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getFolderIcon()Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->getToLabelState()Lcom/android/launcher3/logger/LauncherAtom$ToState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ToState;->getNumber()I

    move-result v26

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getFolderIcon()Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->getLabelInfo()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {p2 .. p2}, Lcom/android/quickstep/logging/StatsLogCompatManager;->access$1500(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)I

    move-result v29

    invoke-static/range {p2 .. p2}, Lcom/android/quickstep/logging/StatsLogCompatManager;->access$1600(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)I

    move-result v30

    invoke-static/range {p2 .. p2}, Lcom/android/quickstep/logging/StatsLogCompatManager;->access$1700(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)[B

    move-result-object v31

    invoke-static/range {v4 .. v32}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(IIII[BZIIIILjava/lang/String;Ljava/lang/String;IIIIIIIZIIILjava/lang/String;III[BI)V

    return-void
.end method


# virtual methods
.method public log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V
    .locals 3

    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_R:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mSlice:Lcom/android/launcher3/logger/LauncherAtom$Slice;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mSliceItem:Landroidx/slice/SliceItem;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Slice;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$Slice$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mSliceItem:Landroidx/slice/SliceItem;

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/logger/LauncherAtom$Slice$Builder;->setUri(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$Slice$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lt1/k$b;->build()Lt1/k;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/logger/LauncherAtom$Slice;

    iput-object v1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mSlice:Lcom/android/launcher3/logger/LauncherAtom$Slice;

    :cond_1
    iget-object v1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mSlice:Lcom/android/launcher3/logger/LauncherAtom$Slice;

    if-eqz v1, :cond_2

    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/logging/j;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/logging/j;-><init>(Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    if-nez v1, :cond_3

    return-void

    :cond_3
    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-ltz v1, :cond_5

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger$1;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger$1;-><init>(Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    goto :goto_1

    :cond_5
    :goto_0
    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/logging/i;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/logging/i;-><init>(Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public sendToInteractionJankMonitor(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;Landroid/view/View;)V
    .locals 1

    instance-of p0, p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object p0, Lcom/android/quickstep/logging/StatsLogCompatManager$1;->$SwitchMap$com$android$launcher3$logging$StatsLogManager$LauncherEvent:[I

    check-cast p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    const/16 v0, 0x1a

    if-eq p0, p1, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->end(I)V

    goto :goto_0

    :cond_2
    invoke-static {p2, v0}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->begin(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method public withCardinality(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mCardinality:Ljava/util/Optional;

    return-object p0
.end method

.method public withContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    sget-object v1, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->DEFAULT_ITEM_INFO:Lcom/android/launcher3/model/data/ItemInfo;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "ItemInfo and ContainerInfo are mutual exclusive; cannot log both."

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mContainerInfo:Ljava/util/Optional;

    return-object p0
.end method

.method public withDstState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .locals 0

    iput p1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mDstState:I

    return-object p0
.end method

.method public withEditText(Ljava/lang/String;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .locals 0

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mEditText:Ljava/util/Optional;

    return-object p0
.end method

.method public withFromState(Lcom/android/launcher3/logger/LauncherAtom$FromState;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .locals 0

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mFromState:Ljava/util/Optional;

    return-object p0
.end method

.method public withInputType(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .locals 0

    iput p1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mInputType:I

    return-object p0
.end method

.method public withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mInstanceId:Lcom/android/launcher3/logging/InstanceId;

    return-object p0
.end method

.method public withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mContainerInfo:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ItemInfo and ContainerInfo are mutual exclusive; cannot log both."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public withRank(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .locals 0

    invoke-static {p1}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mRank:Ljava/util/OptionalInt;

    return-object p0
.end method

.method public withSlice(Lcom/android/launcher3/logger/LauncherAtom$Slice;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    sget-object v1, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->DEFAULT_ITEM_INFO:Lcom/android/launcher3/model/data/ItemInfo;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mSliceItem:Landroidx/slice/SliceItem;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "ItemInfo, Slice and SliceItem are mutual exclusive; cannot set more than one of them."

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    const-string v0, "expected valid slice but received null"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$Slice;->getUri()Ljava/lang/String;

    move-result-object v0

    const-string v1, "expected valid slice uri but received null"

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mSlice:Lcom/android/launcher3/logger/LauncherAtom$Slice;

    return-object p0
.end method

.method public withSliceItem(Landroidx/slice/SliceItem;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .locals 2
    .param p1    # Landroidx/slice/SliceItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    sget-object v1, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->DEFAULT_ITEM_INFO:Lcom/android/launcher3/model/data/ItemInfo;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mSlice:Lcom/android/launcher3/logger/LauncherAtom$Slice;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "ItemInfo, Slice and SliceItem are mutual exclusive; cannot set more than one of them."

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    const-string v0, "expected valid sliceItem but received null"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/slice/SliceItem;

    iput-object p1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mSliceItem:Landroidx/slice/SliceItem;

    return-object p0
.end method

.method public withSrcState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .locals 0

    iput p1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mSrcState:I

    return-object p0
.end method

.method public withToState(Lcom/android/launcher3/logger/LauncherAtom$ToState;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .locals 0

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mToState:Ljava/util/Optional;

    return-object p0
.end method
