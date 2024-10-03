.class public final synthetic Landroidx/activity/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# instance fields
.field public final synthetic a:Lk6/t;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lk6/t;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/f;->a:Lk6/t;

    iput-object p2, p0, Landroidx/activity/f;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onScrollChanged()V
    .locals 1

    iget-object v0, p0, Landroidx/activity/f;->a:Lk6/t;

    iget-object p0, p0, Landroidx/activity/f;->b:Landroid/view/View;

    invoke-static {v0, p0}, Landroidx/activity/PipHintTrackerKt$trackPipAnimationHintView$flow$1;->e(Lk6/t;Landroid/view/View;)V

    return-void
.end method
