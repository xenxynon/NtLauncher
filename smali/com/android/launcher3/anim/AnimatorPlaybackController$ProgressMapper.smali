.class interface abstract Lcom/android/launcher3/anim/AnimatorPlaybackController$ProgressMapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/anim/AnimatorPlaybackController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ProgressMapper"
.end annotation


# static fields
.field public static final DEFAULT:Lcom/android/launcher3/anim/AnimatorPlaybackController$ProgressMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/launcher3/anim/k;->a:Lcom/android/launcher3/anim/k;

    sput-object v0, Lcom/android/launcher3/anim/AnimatorPlaybackController$ProgressMapper;->DEFAULT:Lcom/android/launcher3/anim/AnimatorPlaybackController$ProgressMapper;

    return-void
.end method

.method public static synthetic a(FF)F
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController$ProgressMapper;->lambda$static$0(FF)F

    move-result p0

    return p0
.end method

.method private static synthetic lambda$static$0(FF)F
    .locals 1

    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    div-float/2addr p0, p1

    :goto_0
    return p0
.end method


# virtual methods
.method public abstract getProgress(FF)F
.end method
