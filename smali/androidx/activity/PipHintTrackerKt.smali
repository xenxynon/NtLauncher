.class public final Landroidx/activity/PipHintTrackerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic access$trackPipAnimationHintView$positionInWindow(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 0

    invoke-static {p0}, Landroidx/activity/PipHintTrackerKt;->trackPipAnimationHintView$positionInWindow(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static final trackPipAnimationHintView(Landroid/app/Activity;Landroid/view/View;Lq5/d;)Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/View;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Landroidx/activity/PipHintTrackerKt$trackPipAnimationHintView$flow$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/activity/PipHintTrackerKt$trackPipAnimationHintView$flow$1;-><init>(Landroid/view/View;Lq5/d;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/g;->e(Ly5/p;)Lkotlinx/coroutines/flow/e;

    move-result-object p1

    new-instance v0, Landroidx/activity/PipHintTrackerKt$trackPipAnimationHintView$2;

    invoke-direct {v0, p0}, Landroidx/activity/PipHintTrackerKt$trackPipAnimationHintView$2;-><init>(Landroid/app/Activity;)V

    invoke-interface {p1, v0, p2}, Lkotlinx/coroutines/flow/e;->collect(Lkotlinx/coroutines/flow/f;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method private static final trackPipAnimationHintView$positionInWindow(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    return-object v0
.end method
