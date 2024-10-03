.class Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatImpressionLogger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/logging/StatsLogCompatManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StatsCompatImpressionLogger"
.end annotation


# instance fields
.field private final mAboveKeyboardList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mInstanceId:Lcom/android/launcher3/logging/InstanceId;

.field private mLauncherState:Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger$State;

.field private mQueryLength:I

.field private mResultCountList:[I

.field private mResultTypeList:[I

.field private mUidList:[I


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatImpressionLogger;->mResultTypeList:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatImpressionLogger;->mResultCountList:[I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatImpressionLogger;->mAboveKeyboardList:Ljava/util/List;

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatImpressionLogger;->mUidList:[I

    invoke-static {}, Lcom/android/quickstep/logging/StatsLogCompatManager;->access$200()Lcom/android/launcher3/logging/InstanceId;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatImpressionLogger;->mInstanceId:Lcom/android/launcher3/logging/InstanceId;

    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger$State;->UNKNOWN:Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger$State;

    iput-object v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatImpressionLogger;->mLauncherState:Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger$State;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatImpressionLogger;->mQueryLength:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/quickstep/logging/StatsLogCompatManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatImpressionLogger;-><init>()V

    return-void
.end method


# virtual methods
.method public log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V
    .locals 10

    iget-object v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatImpressionLogger;->mAboveKeyboardList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v8, v0, [Z

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatImpressionLogger;->mAboveKeyboardList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatImpressionLogger;->mAboveKeyboardList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/quickstep/logging/StatsLogCompatManager;->access$600()Z

    move-result v1

    if-eqz v1, :cond_3

    instance-of v1, p1, Ljava/lang/Enum;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Ljava/lang/Enum;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/android/launcher3/logging/StatsLogManager$EventEnum;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatImpressionLogger;->mInstanceId:Lcom/android/launcher3/logging/InstanceId;

    aput-object v5, v4, v0

    const-string v5, "InstanceId:%s "

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v1, v4, v0

    const-string v1, "ImpressionEvent:%s "

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatImpressionLogger;->mLauncherState:Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger$State;

    aput-object v4, v1, v0

    const-string v4, "LauncherState = %s "

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatImpressionLogger;->mQueryLength:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    const-string v4, "QueryLength = %s "

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v0

    :goto_2
    iget-object v4, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatImpressionLogger;->mResultTypeList:[I

    array-length v5, v4

    if-ge v1, v5, :cond_2

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v0

    iget-object v4, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatImpressionLogger;->mResultCountList:[I

    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v3

    const/4 v4, 0x2

    aget-boolean v6, v8, v1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v4

    const/4 v4, 0x3

    iget-object v6, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatImpressionLogger;->mUidList:[I

    aget v6, v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    const-string v4, "\n ResultType = %s with ResultCount = %s with is_above_keyboard = %s with uid = %s"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatsImpressionLog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/16 v1, 0x223

    invoke-interface {p1}, Lcom/android/launcher3/logging/StatsLogManager$EventEnum;->getId()I

    move-result v2

    iget-object p1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatImpressionLogger;->mInstanceId:Lcom/android/launcher3/logging/InstanceId;

    invoke-virtual {p1}, Lcom/android/launcher3/logging/InstanceId;->getId()I

    move-result v3

    iget-object p1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatImpressionLogger;->mLauncherState:Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger$State;

    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger$State;->getLauncherState()I

    move-result v4

    iget v5, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatImpressionLogger;->mQueryLength:I

    iget-object v6, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatImpressionLogger;->mResultTypeList:[I

    iget-object v7, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatImpressionLogger;->mResultCountList:[I

    iget-object v9, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatImpressionLogger;->mUidList:[I

    invoke-static/range {v1 .. v9}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(IIIII[I[I[Z[I)V

    return-void
.end method

.method public withAboveKeyboard(Ljava/util/List;)Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatImpressionLogger;->mAboveKeyboardList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatImpressionLogger;->mAboveKeyboardList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger;
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatImpressionLogger;->mInstanceId:Lcom/android/launcher3/logging/InstanceId;

    return-object p0
.end method

.method public withQueryLength(I)Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger;
    .locals 0

    iput p1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatImpressionLogger;->mQueryLength:I

    return-object p0
.end method

.method public withResultCount(Lcom/android/launcher3/util/IntArray;)Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger;
    .locals 0

    invoke-virtual {p1}, Lcom/android/launcher3/util/IntArray;->toArray()[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatImpressionLogger;->mResultCountList:[I

    return-object p0
.end method

.method public withResultType(Lcom/android/launcher3/util/IntArray;)Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger;
    .locals 0

    invoke-virtual {p1}, Lcom/android/launcher3/util/IntArray;->toArray()[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatImpressionLogger;->mResultTypeList:[I

    return-object p0
.end method

.method public withState(Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger$State;)Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger;
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatImpressionLogger;->mLauncherState:Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger$State;

    return-object p0
.end method

.method public withUids(Lcom/android/launcher3/util/IntArray;)Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger;
    .locals 0

    invoke-virtual {p1}, Lcom/android/launcher3/util/IntArray;->toArray()[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatImpressionLogger;->mUidList:[I

    return-object p0
.end method
