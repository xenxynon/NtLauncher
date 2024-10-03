.class public Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/SplitConfigurationOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SplitStageInfo"
.end annotation


# instance fields
.field public stagePosition:I

.field public stageType:I

.field public taskId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;->taskId:I

    iput v0, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;->stagePosition:I

    iput v0, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;->stageType:I

    return-void
.end method
