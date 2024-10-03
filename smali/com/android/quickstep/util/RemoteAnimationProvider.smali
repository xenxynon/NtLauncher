.class public abstract Lcom/android/quickstep/util/RemoteAnimationProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findLowestOpaqueLayerTarget([Landroid/view/RemoteAnimationTarget;I)Landroid/view/RemoteAnimationTarget;
    .locals 6

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    const v2, 0x7fffffff

    move v3, v1

    :goto_0
    if-ltz v0, :cond_1

    aget-object v4, p0, v0

    iget v5, v4, Landroid/view/RemoteAnimationTarget;->mode:I

    if-ne v5, p1, :cond_0

    iget-boolean v5, v4, Landroid/view/RemoteAnimationTarget;->isTranslucent:Z

    if-nez v5, :cond_0

    iget v4, v4, Landroid/view/RemoteAnimationTarget;->prefixOrderIndex:I

    if-ge v4, v2, :cond_0

    move v3, v0

    move v2, v4

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-eq v3, v1, :cond_2

    aget-object p0, p0, v3

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method


# virtual methods
.method public abstract createWindowAnimation([Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;)Landroid/animation/AnimatorSet;
.end method
