.class public final synthetic Lcom/nothing/cardwidget/pedometer/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic g:Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerWalkingViewHolder;

.field public final synthetic h:Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerWalkingViewHolder;Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nothing/cardwidget/pedometer/d;->g:Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerWalkingViewHolder;

    iput-object p2, p0, Lcom/nothing/cardwidget/pedometer/d;->h:Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/nothing/cardwidget/pedometer/d;->g:Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerWalkingViewHolder;

    iget-object p0, p0, Lcom/nothing/cardwidget/pedometer/d;->h:Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;

    invoke-static {v0, p0, p1}, Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerWalkingViewHolder;->b(Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter$PedometerWalkingViewHolder;Lcom/nothing/cardwidget/pedometer/PedometerViewPagerAdapter;Landroid/animation/ValueAnimator;)V

    return-void
.end method
