.class Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLatencyLogger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/logging/StatsLogCompatManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StatsCompatLatencyLogger"
.end annotation


# instance fields
.field private mCardinality:I

.field private mInstanceId:Lcom/android/launcher3/logging/InstanceId;

.field private mLatencyInMillis:J

.field private mPackageId:I

.field private mQueryLength:I

.field private mSubEventType:I

.field private mType:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/quickstep/logging/StatsLogCompatManager;->access$200()Lcom/android/launcher3/logging/InstanceId;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLatencyLogger;->mInstanceId:Lcom/android/launcher3/logging/InstanceId;

    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;->UNKNOWN:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    iput-object v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLatencyLogger;->mType:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLatencyLogger;->mPackageId:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLatencyLogger;->mQueryLength:I

    iput v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLatencyLogger;->mSubEventType:I

    iput v1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLatencyLogger;->mCardinality:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/quickstep/logging/StatsLogCompatManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLatencyLogger;-><init>()V

    return-void
.end method


# virtual methods
.method public log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V
    .locals 12

    invoke-static {}, Lcom/android/quickstep/logging/StatsLogCompatManager;->access$600()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Ljava/lang/Enum;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/android/launcher3/logging/StatsLogManager$EventEnum;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLatencyLogger;->mInstanceId:Lcom/android/launcher3/logging/InstanceId;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "InstanceId:%s "

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    iget-wide v4, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLatencyLogger;->mLatencyInMillis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v2

    const-string v0, "%s=%sms"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatsLatencyLog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v2, 0x1aa

    invoke-interface {p1}, Lcom/android/launcher3/logging/StatsLogManager$EventEnum;->getId()I

    move-result v3

    iget-object p1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLatencyLogger;->mInstanceId:Lcom/android/launcher3/logging/InstanceId;

    invoke-virtual {p1}, Lcom/android/launcher3/logging/InstanceId;->getId()I

    move-result v4

    iget v5, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLatencyLogger;->mPackageId:I

    iget-wide v6, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLatencyLogger;->mLatencyInMillis:J

    iget-object p1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLatencyLogger;->mType:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;->getId()I

    move-result v8

    iget v9, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLatencyLogger;->mQueryLength:I

    iget v10, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLatencyLogger;->mSubEventType:I

    iget v11, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLatencyLogger;->mCardinality:I

    invoke-static/range {v2 .. v11}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(IIIIJIIII)V

    return-void
.end method

.method public withCardinality(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;
    .locals 0

    iput p1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLatencyLogger;->mCardinality:I

    return-object p0
.end method

.method public withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLatencyLogger;->mInstanceId:Lcom/android/launcher3/logging/InstanceId;

    return-object p0
.end method

.method public withLatency(J)Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;
    .locals 0

    iput-wide p1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLatencyLogger;->mLatencyInMillis:J

    return-object p0
.end method

.method public withPackageId(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;
    .locals 0

    iput p1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLatencyLogger;->mPackageId:I

    return-object p0
.end method

.method public withQueryLength(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;
    .locals 0

    iput p1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLatencyLogger;->mQueryLength:I

    return-object p0
.end method

.method public withSubEventType(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;
    .locals 0

    iput p1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLatencyLogger;->mSubEventType:I

    return-object p0
.end method

.method public withType(Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;)Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLatencyLogger;->mType:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    return-object p0
.end method
