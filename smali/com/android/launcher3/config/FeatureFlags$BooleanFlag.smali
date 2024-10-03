.class public Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/config/FeatureFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BooleanFlag"
.end annotation


# instance fields
.field private final mCurrentValue:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->mCurrentValue:Z

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->mCurrentValue:Z

    return p0
.end method


# virtual methods
.method public get()Z
    .locals 1

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->sBooleanReader:Ljava/util/function/Predicate;

    invoke-interface {v0, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
